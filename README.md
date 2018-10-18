# Java Selenium using Selenium HQ's Docker Images

## About

Sample project showing how to use the []SeleniumHQ Docker images](https://github.com/SeleniumHQ/docker-selenium) with a basic Java project.  This focuses on a simple instance of Chrome set up on an Ubuntu Linux instance as provided by the root repository.  For details on how the Docker images actually work, see the documentation that has been provided in their repositories.  We only cover what is necessary to get started using them here assuming they don't disappear on us.  We only show you how to use the Chrome one, but it should be enough to get your started.

## Instructions

> Can't make this any more simple...

1. Start the Docker container using `docker run -d -p 4444:4444 -v /dev/shm:/dev/shm selenium/standalone-chrome:3.4.0-einsteinium`
2. Launch the build of this project using `mvn -U clean test`
3. Find the screenshots from each test run in `~/Desktop/SeleniumExample`
4. ...
5. Profit

## Key Class

The key class you are looking for in here is:  `com.revof11.dockerselenium.AbstractSeleniumTest`

That class has all the code to use for connecting to the running Docker image as well as some utility methods to make sure that everything runs as expected.  Most importantly is this particular snippet that focuses on launching Chrome for us in the running image:

```java
  URL remoteUrl = new URL("http://127.0.0.1:4444/wd/hub");
  DesiredCapabilities capabilities = DesiredCapabilities.chrome();
  WebDriver driver = new RemoteWebDriver(remoteUrl, capabilities);
```

That's all that we really need to do!
