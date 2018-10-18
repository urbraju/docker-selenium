#!/usr/bin/env bash
#
# IMPORTANT: Change this file only in directory Standalone!

java ${JAVA_OPTS} -jar /opt/selenium/selenium-server-standalone.jar \
    ${SE_OPTS}
    
 #
# IMPORTANT: Change this file only in directory Standalone!


java -cp /usr/share/tag/docker-selenium-0.0.1-SNAPSHOT-jar-with-dependencies.jar:/usr/share/tag/docker-selenium-0.0.1-SNAPSHOT-tests.jar org.testng.TestNG   -testclass com.revof11.dockerselenium.selenium.SearchOnGoogleTest
    