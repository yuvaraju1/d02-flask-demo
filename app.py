from flask import Flask, request, render_template_string

app = Flask(__name__)

@app.route('/')
def home():
    name = request.args.get("name", "User")
    template = f"Hello {name}!"
    return render_template_string(template)

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)


