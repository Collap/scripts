rm -rf lib
rm -rf module
rm -rf tomcat/collap/cache
rm -rf tomcat/collap/lib
rm -rf tomcat/collap/module

cd collap
gradle clean
cd ..

cd examples
gradle clean
cd ..

cd ivp
gradle clean
cd ..