import 'package:shared_preferences/shared_preferences.dart';

import '../const/keys.dart';

class SessionHelper {
  SharedPreferences? prefs;

  saveToken(String accessToken) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(Keys.accessToken, accessToken);
  }

  saveDynamicSession(String key, String value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(key, value);
  }

  deleteToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(Keys.accessToken);
  }

  deleteDynamicSession(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove(key);
  }

  Future<String?>? getStringValuesSF(String key) async {
    prefs = await SharedPreferences.getInstance();
    return prefs?.getString(key);
  }

  Future<List<String>> getListStringValueSF(List<String> key) async {
    prefs = await SharedPreferences.getInstance();
    List<String> value = [];
    for (int i = 0; i < key.length; i++) {
      value.add(prefs!.getString(key[i])!);
    }
    return value;
  }

  // routeToOnBoardingScreenAndShowPopUpMessageSessionExpired() {
  //   //FIX SCREEN ONBOARDING MENUMPUK SAAT SESSION EXPIRED
  //   navigatorKey.currentState.pushAndRemoveUntil(
  //       MaterialPageRoute(
  //           builder: (BuildContext context) => LoginScreen(
  //             isHavePopUpMessage: "401",
  //           )),
  //           (route) => false);
  //   //navigatorKey.currentState.pushReplacement(MaterialPageRoute(builder: (BuildContext context) => OnBoardingScreen(isHavePopUpMessage: "401",)));
  // }

  // showPopUpMessageConnectionTimedOut() {
  //   ScreenUtil.init(navigatorKey.currentState.overlay.context,
  //       width: 320, height: 568, allowFontScaling: true);
  //   showDialog(
  //     context: navigatorKey.currentState.overlay.context,
  //     barrierDismissible: false,
  //     builder: (_) {
  //       return WillPopScope(
  //           child: Center(
  //             child: Container(
  //               width: 240.w,
  //               padding: EdgeInsets.all(20.w),
  //               decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.all(Radius.circular(4.w))),
  //               child: Material(
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.start,
  //                   mainAxisSize: MainAxisSize.min,
  //                   children: <Widget>[
  //                     Text(
  //                       "Connection Timed Out.",
  //                       style: TextStyle(
  //                           color: CustomColor.primaryColor,
  //                           fontSize: 14.sp,
  //                           fontFamily: "bold"),
  //                     ),
  //                     Padding(padding: EdgeInsets.only(top: 4.w)),
  //                     Text(
  //                       "Mohon maaf waktu koneksi berakhir. Silahkan coba lagi.",
  //                       style: TextStyle(
  //                         fontSize: 10.sp,
  //                       ),
  //                       textAlign: TextAlign.center,
  //                     ),
  //                     Padding(
  //                         padding: EdgeInsets.fromLTRB(0.w, 24.w, 0.w, 0.w),
  //                         child: SizedBox(
  //                           height: 46.w,
  //                           width: MediaQuery.of(
  //                               navigatorKey.currentState.overlay.context)
  //                               .size
  //                               .width,
  //                           child: FlatButton(
  //                               shape: RoundedRectangleBorder(
  //                                   borderRadius: BorderRadius.circular(4.w)),
  //                               color: CustomColor.primaryColor,
  //                               disabledColor: CustomColor.greyPrimary,
  //                               child: Text('Oke',
  //                                   style: TextStyle(
  //                                       fontFamily: "bold",
  //                                       fontSize: 13.sp,
  //                                       color: Colors.white)),
  //                               onPressed: () {
  //                                 Navigator.pop(navigatorKey
  //                                     .currentState.overlay.context);
  //                               }),
  //                         ))
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //           onWillPop: () => null);
  //     },
  //   );
  // }
}
