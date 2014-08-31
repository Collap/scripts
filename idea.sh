#!/bin/sh

cd collap-core
gradle idea
cd ..

cd collap-std
gradle idea
cd ..

cd ivp
gradle idea
cd ..
