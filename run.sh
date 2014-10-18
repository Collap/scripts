#!/bin/sh

./tomcat/bin/shutdown.sh

cd collap
# 'install' command to add the api and std projects to the local maven repository (for plugin development).
gradle build install copyDependencies tomcatCopy tomcatClean
cd ..

cd examples
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