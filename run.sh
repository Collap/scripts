./tomcat/bin/shutdown.sh

cd collap-core
gradle build install tomcatCopy tomcatClean
cd ..

cd collap-std
gradle build
cd ..

scripts/copy_plugins.sh

cd tomcat
./bin/startup.sh
cd ..