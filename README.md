# kuutee

## build on aws etc

`c6g.8xlarge` is 32c / 64gb mem and within quota

```console
sudo su
apt update # run to have less confusing docker install
curl -L get.docker.com | sh
```

## 18.04 fails

<https://forum.qt.io/topic/153851/qt6-beaglebone-black-armhf-build-issue/5?_=1715137925707&lang=en-US>

```console
132.0 + cmake --build . --parallel
132.0 /ghjk/qt-everywhere-src-6.6.3/qtbase/src/tools/syncqt/main.cpp:24:10: fatal error: filesystem: No such file or directory
132.0  #include <filesystem>
132.0           ^~~~~~~~~~~~
132.0 compilation terminated.
132.0 make[2]: *** [qtbase/src/tools/syncqt/CMakeFiles/syncqt.dir/main.cpp.o] Error 1
132.0 make[1]: *** [qtbase/src/tools/syncqt/CMakeFiles/syncqt.dir/all] Error 2
132.0 make[1]: *** Waiting for unfinished jobs....
132.0 make: *** [all] Error 2
```
