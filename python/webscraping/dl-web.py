import requests
r = requests.get('https://automatetheboringstuff.com/files/rj.txt')
# badReq = requests.get('https://automatetheboringstuff.com/files/nonexistent.txt')
# print(r.status_code)
r.text
# print(badReq.raise_for_status())