rm -rf lib
rm -rf module
rm -rf tomcat/collap/cache
rm -rf tomcat/collap/lib
rm -rf tomcat/collap/module

cd collap-core
gradle clean
cd ..

cd collap-std
gradle clean
cd ..

cd jade4j
gradle clean
cd ..