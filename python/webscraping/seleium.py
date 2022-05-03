from selenium import webdriver

browser = webdriver.Firefox()
browser.get('https://automatetheboringstuff.com')
elem = browser.find_element_by_css_selector('.main > main:nth-child(1) > div:nth-child(1) > ul:nth-child(19) > li:nth-child(4) > a:nth-child(1)')
elem.click()