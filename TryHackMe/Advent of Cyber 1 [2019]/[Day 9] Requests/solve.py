import requests
path ='/'
host = 'http://10.10.169.100:3000'
while (host != ''):
    response = requests.get(host + path)
    jsonresponse = response.json
    print (jsonresponse)
    #print (response)
    #statuscode=response.status_code
    #print (statuscode)
    #text=response.text
    #print (text)