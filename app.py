from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/pingpong', methods=['GET'])
def ping_pong():
    # retrieve JSON data from request body
    data = request.get_json() 
    # if the requests body has content and conentt equalst ping return success 
    if data and 'content' in data and data['content'] == 'ping':
        response_data = {'response': 'pong'}
        return jsonify(response_data), 200
    else:
        return jsonify({'error': 'Invalid request'}), 400

#Best practic to run blocks of code only when script is being executed froma  user
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5005, debug=True)
