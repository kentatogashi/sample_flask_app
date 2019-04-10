from flask import Flask, make_response

app = Flask(__name__)

@app.route('/api/<msg>', methods=['GET'])
def hello(msg):
    new_msg = 'hello!! ' + str(msg) + '\n'
    return make_response(new_msg)

@app.errorhandler(404)
def not_found(error):
    return make_response('Not Found', 404)

@app.errorhandler(500)
def not_found(error):
    return make_response('Internal Server Error', 500)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
