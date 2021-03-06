You're on your own for the keys.

This script now pulls title metadata (like the title's name and region) directly off the CDN by using the following certs to connect.

**Requires [makerom](https://github.com/profi200/Project_CTR/releases), [ctr-common-1.crt](https://mega.nz/#!Rp9CDZSY!iDopFefUj2oZERWYHm3BDbEKDhmD363YVX24TCkwp50) ([mirror](https://drive.google.com/open?id=0BzPfvjeuhqoDcnhNcjNMWlV6MFk)), and [ctr-common-1.key](https://mega.nz/#!ZxdD1DKK!eksGHKw4psuouBN1y_yeh2x3eIvXyK1IHHMfs-vTJvs) ([mirror](https://drive.google.com/open?id=0BzPfvjeuhqoDd01oNUw4N0RpNFk)) to be in the directory**    
___

Usage: `<TitleID TitleKey [-redown -redec -no3ds -nocia] or [-check]> or [-deckey] or [-checkbin]`    
\-deckey   : print keys from decTitleKeys.bin    
\-check    : checks if title id matches key    
\-checkbin : checks titlekeys from decTitleKeys.bin    
\-redown   : redownload content    
\-nodown   : don't download content, just print links    
\-redec    : re-attempt content decryption    
\-no3ds    : don't build 3DS file    
\-nocia    : don't build CIA file    

___

Examples (note this is not the correct key):    
+ `PlaiCDN.exe 000400000014F200 abb5c65ecaba9bcd29d1bfdf3f64c285`
  + this would create a .CIA and .3DS file for "Animal Crossing: Happy Home Designer"
+ `PlaiCDN.exe 000400000014F200 abb5c65ecaba9bcd29d1bfdf3f64c285 -check`
  + this would check if the key (abb5c65ecaba9bcd29d1bfdf3f64c285) for "Animal Crossing: Happy Home Designer" is correct (it's not)
+ `PlaiCDN.exe 000400000014F200 abb5c65ecaba9bcd29d1bfdf3f64c285 -redown -no3ds`
  + this would create a .CIA file after redownloading previously downloaded encrypted files for "Animal Crossing: Happy Home Designer"
+ `PlaiCDN.exe -checkbin`
  + this would check all keys in `decTitleKeys.bin` to see if they match their titles, in addition to outputting metadata on them pulled from the CDN

___

If you are using the script itself instead of the compiled .exe, you will also need [Python 3](https://www.python.org/downloads/) to be installed, and [PyCrypto](https://pypi.python.org/pypi/pycrypto) to be installed.

If pycrypto gives you issues installing, try using [this](https://github.com/sfbahr/PyCrypto-Wheels).

The executable was created with the command `pyinstaller --onefile PlaiCDN.py`

This project was forked from [CDNto3DS](https://github.com/Relys/3DS_Multi_Decryptor/blob/master/to3DS/CDNto3DS/CDNto3DS.py) and includes expanded features and capabilities, including use on non windows platforms thanks to its reliance on PyCrypto instead of aescbc.
