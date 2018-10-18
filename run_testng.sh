#!/usr/bin/env bash
#
# IMPORTANT: Change this file only in directory Standalone!

 sudo docker run -d -p 4444:4444 --name chrome chrometest:demo
 sleep 5;

java -cp /target/docker-selenium-0.0.1-SNAPSHOT-jar-with-dependencies.jar:/target/docker-selenium-0.0.1-SNAPSHOT-tests.jar org.testng.TestNG   -testclass com.revof11.dockerselenium.selenium.SearchOnGoogleTest
