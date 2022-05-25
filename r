use Facebook\WebDriver\Remote\RemoteWebDriver;
use Facebook\WebDriver\Remote\DesiredCapabilities;
use Facebook\WebDriver\WebDriverBy;
use Facebook\WebDriver\Cookie;

$host = 'http://172.104.205.31:49173';
$capabilities = DesiredCapabilities::chrome();
$driver = RemoteWebDriver::create($host, $capabilities);

//$driver->get('https://api.kaas.games/betsIORequest');
$driver->get('https://api.bets.io/games/pragmaticexternal/5Lions/30117');


//$element = $driver->findElement(WebDriverBy::id('#a8r_iframe'));
//print_r($element->getAttribute('innerHTML'));
print_r($driver->getPageSource());
$cookies = $driver->manage()->getCookies();
print_r($cookies);
// Make sure to always call quit() at the end to terminate the browser session
$driver->quit();

