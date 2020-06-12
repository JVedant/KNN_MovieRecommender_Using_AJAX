from flask import Flask, request,json,jsonify
import pickle
import Recommender

app = Flask(__name__)
model = pickle.load(open('model.pkl','rb'))

@app.route('/predict',methods = ['POST','GET'])
def predict():
    Movie = str(request.args.get('Movie'))
    numberOfMovies = int(request.args.get('numberOfRecommendations'))
    recommended_movies = model.make_recommendations(Movie, numberOfMovies)
    moviesList = []
    for id,name in recommended_movies.items():
        moviesList.append({ id : name})
        
    return jsonify(json.dumps(moviesList))

@app.route('/')
def hello():
    return 'Hello'
                                 
if __name__ == '__main__':
    app.run(debug=True)
