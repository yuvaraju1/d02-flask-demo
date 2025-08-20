D02 - Patch Management Strategy 

> To demonstrate D02 this is the code repository that has vulnerable code and outdates libraries and dependencies, Image

> Follow this steps to build docker image, run container, exploit vulnerability:
> 
Clone the repo:

- git clone --branch vulnerable https://github.com/yuvaraju1/d02-flask-demo.git repo-vulnerable
- cd repo-vulnerable
  
Build image:

- docker build -t d02:vulnerable .
  
Run the image:

- docker run -d -p 80:5000 --name container1 d02:vulnerable


Exploit the Vulnerability: (Server-Side Template Injection — SSTI)

curl "https://80-port-euboz6i7tt6shczw.labs.kodekloud.com/?name=%7B%7B7%2A7%7D%7D"

#output
Hello 49!#  

#access
https://80-port-euboz6i7tt6shczw.labs.kodekloud.com/?name={{2*2}}

#You will see
Hello 4!

That means the Flask app is using: render_template_string(f"Hello {name}!")
which evaluates the input as a Jinja2 template — and that's dangerous when user input isn't sanitized.

> Here, This container uses outdated Flask and Python, which haven’t received security patches for years — a classic example of poor patch management
