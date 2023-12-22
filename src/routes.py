def home():
    return {
        "success": "ok",
        "message": "nothing like home"
    }

def hello(name):
    return {
        "success": "ok",
        "message": f"hello, {name}"
    }

def about():
    return {
        "success": "ok",
        "message": "a flask API"
    }