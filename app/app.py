from flask import Flask, jsonify, request

app = Flask(__name__)

# Health-check endpoint
@app.route('/health', methods=['GET'])
def health():
    return jsonify({"status": "ok"}), 200

# Home endpoint
@app.route('/', methods=['GET'])
def index():
    return "Hello from DevSecOps Pipeline!", 200

# Simple POST endpoint
@app.route('/echo', methods=['POST'])
def echo():
    data = request.json
    return jsonify({"you_sent": data}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)

