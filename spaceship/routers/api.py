from flask import Blueprint, jsonify
import numpy as np

api = Blueprint('api', __name__)

@api.route('/matrix', methods=['GET'])
def matrix():
    matrix_a = np.random.randint(10, size=(10, 10))
    matrix_b = np.random.randint(10, size=(10, 10))
    product = np.dot(matrix_a, matrix_b)
    return jsonify({
        "matrix_a": matrix_a.tolist(),
        "matrix_b": matrix_b.tolist(),
        "product": product.tolist()
    })
