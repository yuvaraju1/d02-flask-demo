# d02-flask-demo

Patched code:
- docker build -t d02:vulnerable .
- docker run -d -p 81:5000 --name container2 d02:vulnerable

#access
https://81-port-euboz6i7tt6shczw.labs.kodekloud.com/?name={{2*2}}

#You will see
Hello {{2*2}}!
