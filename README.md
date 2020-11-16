# Running HPVM on Android

This project is intended as a showcase of how HPVM code can be run on Android.

Before you can run the application, you have to properly set up and build the HPVM-based library
provided in https://github.com/MatevzFa/hpvm-rt-android.

Repository [*Compiling HPVM for Android*](https://github.com/MatevzFa/hpvm-rt-android)
provides information how to set up the build environment. The following variables are related to
this project:

* LIB_INSTALL_PATH: points to [app/src/main/cpp/libs](https://github.com/MatevzFa/hpvm-rt-android-app/tree/master/app/src/main/cpp/libs)
* INCLUDE_INSTALL_PATH: points to [app/src/main/cpp/include](https://github.com/MatevzFa/hpvm-rt-android-app/tree/master/app/src/main/cpp/include)

After the library is built and installed, you can run this application on your Android device. Results of the computation are shown as log entries of MainActivity.
