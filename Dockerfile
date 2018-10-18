# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# NOTE: DO *NOT* EDIT THIS FILE.  IT IS GENERATED.
# PLEASE UPDATE Dockerfile.txt INSTEAD OF THIS FILE
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
FROM selenium/node-chrome:3.14.0-gallium
LABEL authors=SeleniumHQ

USER root

#====================================
# Scripts to run Selenium Standalone
#====================================
COPY start-selenium-standalone.sh /opt/bin/start-selenium-standalone.sh
ADD scripts /opt/testng/scripts/
ADD  target/docker-selenium-0.0.1-SNAPSHOT-jar-with-dependencies.jar /usr/share/tag/docker-selenium-0.0.1-SNAPSHOT-jar-with-dependencies.jar
ADD  target/docker-selenium-0.0.1-SNAPSHOT-tests.jar /usr/share/tag/docker-selenium-0.0.1-SNAPSHOT-tests.jar
#==============================
# Supervisor configuration file
#==============================
COPY selenium.conf /etc/supervisor/conf.d/
EXPOSE 4444
#ENTRYPOINT ["/opt/testng/scripts/run_testng.sh"]
