# d02-flask-demo

Clone the repo:

- git clone --branch patch https://github.com/yuvaraju1/d02-flask-demo.git repo-patch
- cd repo-patch
  
Build image:

- docker build -t d02:patch .
  
Run the image:

- docker run -d -p 81:5000 --name container2 d02:patch

#access
https://81-port-euboz6i7tt6shczw.labs.kodekloud.com/?name={{2*2}}

#You will see
Hello {{2*2}}!
