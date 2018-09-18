require 'selenium-webdriver'

Given("that I go to google website") do
    $driver.get('www.google.com');
  end
  
  Given("search for planets") do
    puts("seraching for...")
  end
  
  Given("click on the first link") do
    puts("click");
  end
  