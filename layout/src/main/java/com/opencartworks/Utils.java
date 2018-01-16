package com.opencartworks;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.apache.commons.logging.Log;
//import org.apache.logging.log4j.core.Logger;
//import org.apache.logging.log4j.Logger;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.support.events.EventFiringWebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.concurrent.TimeUnit;
//import java.util.logging.Logger;

public class Utils {
    public static EventFiringWebDriver webDriver;
    public static WebDriver driver;
    private static String OS = System.getProperty("os.name").toLowerCase();
    private static String userPath = System.getProperty("user.dir");
    private static final Logger LOGGER =  LoggerFactory.getLogger(Utils.class);


    @Before
    public static void setDriver() {
        if (driver == null) {
            if (AutomationConstants.BROWSER_TYPE.equalsIgnoreCase("chrome")) {
                LOGGER.info("Starting the Browser");
                { setDriverPathForBrowser("chrome");
                    if (isLinux()) {
                        ChromeOptions options = new ChromeOptions();
                        options.setBinary(userPath + "C:\\Users\\User\\Downloads\\layout\\src\\test\\java\\drivers\\linux");
                        driver = new EventFiringWebDriver(new ChromeDriver(options));
                    } else {
                        driver = new EventFiringWebDriver(new ChromeDriver());
                    }
                    driver.manage().window().maximize();
                }

            } else if (AutomationConstants.BROWSER_TYPE.equalsIgnoreCase("Firefox")) {

                setDriverPathForBrowser("Firefox");
                driver = new EventFiringWebDriver(new FirefoxDriver());
                driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
                driver.manage().deleteAllCookies();
                driver.manage().window().maximize();

            } else if (AutomationConstants.BROWSER_TYPE.equalsIgnoreCase("IE")) {

                System.setProperty("webdriver.ie.driver", "IEDriverServer.exe");
                driver = new EventFiringWebDriver(new InternetExplorerDriver());
                driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
                driver.manage().deleteAllCookies();

            } else {
                LOGGER.info("No Driver Initialised");
            }
            driver.get(AutomationConstants.URL);
        }
    }

    private static void setDriverPathForBrowser(String browserName) {
        {
            browserName = browserName.toLowerCase();
            if (browserName.equals("chrome")) {
                if (isMac()) {
                    System.setProperty("webdriver.chrome.driver", userPath + "/src/test/java/drivers/windows/chromedriver.exe");
                } else if (isLinux()) {
                    System.setProperty("webdriver.chrome.driver", userPath + "/sr/test/java/drivers/linux/chromedriver.exe");
                } else if (isWindows()) {
                    System.setProperty("webdriver.chrome.driver", userPath + "/src/test/java/drivers/windows/chromedriver.exe");
                }
            } else if (browserName.equals("Firefox")) {
                if (isMac())
                    System.setProperty("webdriver.gecko.driver", userPath + "/src/test/java/drivers/geckodriver.exe");
            } if (isLinux()) {

            }
            {
                LOGGER.info("sorry");
            }if (isWindows()) {
            System.setProperty("webdriver.gecko.driver", userPath + "/src/test/java/drivers/Windows/geckodriver.exe");
        }
        }
    }

    public static EventFiringWebDriver  getDriver() {

        setDriver();
        return webDriver;
    }


    private static boolean isWindows() {
        return (OS.indexOf("win") >= 0);
    }

    private static boolean isMac() {
        return (OS.indexOf("mac") >= 0);
    }

    private static boolean isLinux() {
        return (OS.indexOf("linux") >= 0);
    }

    @After
    public void closedriver(){
      driver.quit();
    }
}

