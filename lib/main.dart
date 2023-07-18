import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';

import 'backend/firebase/firebase_config.dart';
import 'custom/custom_theme.dart';
import 'custom/custom_util.dart';
import 'custom/internationalization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initFirebase();

  await FlutterFlowTheme.initialize();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late Stream<BaseAuthUser> userStream;
  BaseAuthUser? initialUser;
  bool displaySplashImage = true;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();
    userStream = weddingAppFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
    jwtTokenStream.listen((_) {});
    Future.delayed(
      Duration(seconds: 1),
      () => setState(() => displaySplashImage = false),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wedding-App',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      home: initialUser == null || displaySplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Center(
                  child: Image.asset(
                    'assets/images/front.jpg',
                    width: MediaQuery.of(context).size.width * 1.0,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            )
          : currentUser!.loggedIn
              ? NavBarPage()
              : SplashScreenWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key? key, this.initialPage, this.page}) : super(key: key);

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'dashboard';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Inspiration': InspirationWidget(),
      'myGuest': MyGuestWidget(),
      'dashboard': DashboardWidget(),
      'suppliers': SuppliersWidget(),
      'MyProfile': MyProfileWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);
    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: FlutterFlowTheme.of(context).info,
        selectedItemColor: FlutterFlowTheme.of(context).white,
        unselectedItemColor: FlutterFlowTheme.of(context).secondaryText,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.photo_rounded,
              size: 24.0,
            ),
            activeIcon: Icon(
              Icons.photo,
              size: 24.0,
            ),
            label: 'Inspiration',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group_add_outlined,
              size: 32.0,
            ),
            activeIcon: Icon(
              Icons.library_add_sharp,
              size: 32.0,
            ),
            label: 'My Guests',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 32.0,
            ),
            activeIcon: Icon(
              Icons.home_sharp,
              size: 32.0,
            ),
            label: 'Dashboard',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.buffer,
              size: 24.0,
            ),
            activeIcon: FaIcon(
              FontAwesomeIcons.buffer,
              size: 24.0,
            ),
            label: 'Suppliers',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_sharp,
              size: 32.0,
            ),
            activeIcon: Icon(
              Icons.person_sharp,
              size: 32.0,
            ),
            label: 'PROFILE',
            tooltip: '',
          )
        ],
      ),
    );
  }
}
