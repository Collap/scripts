#!/bin/sh

./tomcat/bin/shutdown.sh

cd collap-core
# 'install' command to add the api.jar to the local maven repository (for plugin development).
gradle build install copyDependencies tomcatCopy tomcatClean
cd ..

cd collap-std
gradle build
cd ..

scripts/install_libs.sh
scripts/copy_plugins.sh

cd tomcat
./bin/startup.sh
cd ..