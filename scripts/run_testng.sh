#!/usr/bin/env bash
#
# IMPORTANT: Change this file only in directory Standalone!

 docker run -d -p 4444:4444 --name chrome chrome
 sleep 5;

java -cp /usr/share/tag/docker-selenium-0.0.1-SNAPSHOT-jar-with-dependencies.jar:/usr/share/tag/docker-selenium-0.0.1-SNAPSHOT-tests.jar org.testng.TestNG   -testclass com.revof11.dockerselenium.selenium.SearchOnGoogleTest
