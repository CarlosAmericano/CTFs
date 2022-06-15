## DESCRIPTION
Close Enough
 100
BEGINNER FRIENDLY
Author: TheMythologist

My prof mentioned something about not using primes that are close to each other in RSA, but it's close enough, isn't it?

Ciphertext is 4881495507745813082308282986718149515999022572229780274224400469722585868147852608187509420010185039618775981404400401792885121498931245511345550975906095728230775307758109150488484338848321930294974674504775451613333664851564381516108124030753196722125755223318280818682830523620259537479611172718588812979116127220273108594966911232629219195957347063537672749158765130948724281974252007489981278474243333628204092770981850816536671234821284093955702677837464584916991535090769911997642606614464990834915992346639919961494157328623213393722370119570740146804362651976343633725091450303521253550650219753876236656017

For beginners:

https://ctf101.org/cryptography/what-is-rsa/
MD5: 35601e92f6bc17e36bc042ba30f3ebc4


## NOTES

p = getPrime(1024)
q = getNextPrime(p)
n = p * q
e = 65537

linux@ubuntu:~/Documents/RsaCtfTool$ python3 ./RsaCtfTool.py -e 65537 --uncipher 4881495507745813082308282986718149515999022572229780274224400469722585868147852608187509420010185039618775981404400401792885121498931245511345550975906095728230775307758109150488484338848321930294974674504775451613333664851564381516108124030753196722125755223318280818682830523620259537479611172718588812979116127220273108594966911232629219195957347063537672749158765130948724281974252007489981278474243333628204092770981850816536671234821284093955702677837464584916991535090769911997642606614464990834915992346639919961494157328623213393722370119570740146804362651976343633725091450303521253550650219753876236656017 --publickey key


## FLAG
SEE{i_love_really_secure_algorithms_b5c0b187fe309af0f4d35982fd961d7e}