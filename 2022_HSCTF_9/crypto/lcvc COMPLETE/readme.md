## DESCRIPTION
Ciphertext: mawhxyovhiiupukqnzdekudetmjmefkqjgmqndgtnrxqxludegwovdcdmjjhw Please wrap in the flag format: flag{}


## NOTES
Reading the code, learned about the assert function, basically means that if true, continues the code.
Requires the flag to be something like "flag{xxx}"
Set flag to "flag{redacted}" and saw what it was the encrypted format ... "vyfdhzzr"

Changed this line
    ciphertext+=alphabet[(alphabet.index(character)-state)%26]
and put the encrypted string to see if it decrypted to what it was expected "redacted"...worked so put the ciphertext as the input

iguessthisiswhatyouwouldcallalinearcongruentialvigenerecipher



## FLAG
flag{iguessthisiswhatyouwouldcallalinearcongruentialvigenerecipher}