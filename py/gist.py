#!/usr/bin/python
import os, requests, sys, json

username = sys.argv[2]
password = sys.argv[3]
filename = os.path.basename(sys.argv[1])

content = open(filename, 'r').read()
r = requests.post('https://api.github.com/gists',json.dumps({'files':{filename:{"content":content}}}),auth=requests.auth.HTTPBasicAuth(username, password)) 
print(r.json()['html_url'])
