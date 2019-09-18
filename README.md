### Functionality

2 – I completed functional methods for both encryption and decryption that do what they're supposed to do, but I had difficulty calling them from my Enigma class. The bulk of the logic/methods behind it are all complete, but I'm just struggling to call it correctly from Enigma. Technically, both methods are supposed to be called from Enigma, but I gave myself a 2 because I did all the work to build the methods (and they're passing), but I'm just struggling to call them. I didn't get to CLI.

### Object-Oriented Programming

3 – While there are areas where I repeated myself and later realized that I could have put that code into a module, I like the structure of my classes overall. I have a Key and Offset class that are responsible for generating a Key and Offset, respectively. I have a Shift class that calculate the shift using the Key and Offset. I have an Encryptor and Decryptor class that use the Shift to encrypt and decrypt, respectively. The Enigma class is really just there to call on the encrypt_message/decrypt_message methods I build in my Encryptor and Decryptor classes. Overall, my methods aren't too long. In retrospect, I think I spent too long in the whiteboarding/design phase and experienced a lot of analysis paralysis that took up too much of my time.

### Test-Driven Development

2 – Overall, I wrote my tests first. However, there were some gaps in my testing and certain things I struggled to test (random values, current date).

### Version-Control

3 – I had a few issues because I should've started with Key and Offset first before trying to build the skeleton of Enigma, but I still had a pretty clean workflow (despite having too many branches for several classes)
