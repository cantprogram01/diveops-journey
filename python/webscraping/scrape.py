import requests
import bs4

headers = {'User-Agent': 'Chrome'}
url = 'https://www.amazon.com/Automate-Boring-Stuff-Python-Programming-ebook/dp/B00WJ049VU/ref=tmm_kin_swatch_0?_encoding=UTF8&qid=&sr='
res = requests.get(url, headers=headers)
soup = bs4.BeautifulSoup(res.text, features='lxml')
print(soup.select_one('.mediaTab_subtitle').text.strip())