import requests
import json

body = {
    "Content-Type": "application/json",
    "content": "ping"
}

pathUri = 'http://localhost:5005/pingpong'
request = requests.get(pathUri, json=body, verify=False,)
#request = requests.get('https://rafis-vra.terasky.local{}'.format(pathUri), verify=False, headers=header)
content = json.loads(request.text)
print(content)
