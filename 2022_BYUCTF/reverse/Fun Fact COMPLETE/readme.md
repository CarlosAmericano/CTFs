## DESCRIPTION
This challenge should help you to learn more about reverse engineering Python code. But if not, at least you can learn more about sea creatures!!

Flag format - byuctf{message}


## NOTES
TFs/2022_BYUCTF/reverse/Fun Fact/obfuscated - Copy.py"
b'import random, string\n    \ndef option_one():\n    print("\\nJust kidding, it\'s not that easy\\n")\n    main()\n    \ndef option_two():\n    user_input = input("\\nFlag> ")\n  \n    random_array = xor("Snowflake eels 
have two sets of jaws", "pretty crazy, huh?") \n    other_random_array = list(string.printable)\n    key = other_random_array[random_array[0] + random_array[8]]\n    \n    encrypted = "".join([chr(ord(x) ^ ord(key)) for x in user_input])\n    print("encrypted: ", encrypted)\n\n    if(encrypted == \'g%4c$zc%dz4gg;\'):\n        print("Success!")\n    else:\n        print("\\nTry again")\n        option_three()\n\ndef xor(a, b):\n    key = []\n    i = 0\n    while i < len(a):\n        key.append(ord(a[i % 
len(a)]) ^ ord((b[i % len(b)])))\n        i = i+1\n    return key\n\ndef main():\n    print("Enter 1 to print the flag")\n    print("Enter 2 for a fun fact about ocean creatures")\n    print("Enter 3 to continue")\n\n    user_input = input("Input> ")\n  
  \n    if(user_input == \'1\'):\n        option_one()\n    elif(user_input == \'2\'):\n        option_two()\n    elif(user_input == \'3\'):\n        option_three()\n    else:\n        print("Invalid option")\n        \nmain()'

Flag> 0rc4s-4r3-c00l
encrypted:  g%4c$zc%dz4gg;
Success!


## FLAG


byuctf{0rc4s-4r3-c00l}