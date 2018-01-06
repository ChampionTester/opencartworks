import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.concurrent.TimeUnit;

public class BasicConfiguration {
    public static WebDriver driver;


    public static WebDriver getDriver() {
        return driver;
    }

    @Before

    public static void openbrowser()
    {
        System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
        driver = new ChromeDriver();
        driver.get("http://opencart.opencartworks.com/themes/so_emarket/layout6/");
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
    }

    @After
    public static void closeBrowser(){
        driver.quit();
    }
}

