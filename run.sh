#!/bin/sh

./tomcat/bin/shutdown.sh

cd jade4j
gradle build install
cd ..

cd collap-core
# 'install' command to add the api.jar to the local maven repository (for plugin development).
gradle build install copyDependencies tomcatCopy tomcatClean
cd ..

cd collap-std
gradle build install copyDependencies
cd ..

cd ivp
gradle build install copyDependencies
cd ..

scripts/install_libs.sh
scripts/copy_modules.sh

cd tomcat
./bin/startup.sh
cd ..