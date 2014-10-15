#! /bin/sh -e

echo "Installing GrapView"
cd GraphView

gradle clean assemble

mvn install:install-file \
-DgroupId=com.jjoe64.graphview \
-DartifactId=graphview \
-Dversion=3.1.1 \
-DgeneratePom=true \
-Dpackaging=aar \
-Dfile=build/libs/GraphView.aar \
-DlocalRepositoryPath=../

cd ../

echo "Installing Android ViewPagerIndicator"
cd Android-ViewPagerIndicator

gradle clean assemble

mvn install:install-file \
-DgroupId=com.viewpagerindicator \
-DartifactId=viewpagerindicator \
-Dversion=2.4.1 \
-DgeneratePom=true \
-Dpackaging=aar \
-Dfile=library/build/libs/library-2.4.1.aar \
-DlocalRepositoryPath=../

cd ../

echo "Installing Physicaloid Library"
cd PhysicaloidLibrary

gradle clean assemble

mvn install:install-file \
-DgroupId=com.physicaloid \
-DartifactId=physicaloid \
-Dversion=1.0 \
-DgeneratePom=true \
-Dpackaging=aar \
-Dfile=PhysicaloidLibrary/build/libs/PhysicaloidLibrary-1.0.aar \
-DlocalRepositoryPath=../

echo "Done installing libraries"