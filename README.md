The Back-End:
***The Front-End is hosted in a separate repo that will need to be forked and cloned along with this repo in order to function properly.*** 

The following end-points are utilized in the API to fetch data:

'http://localhost:3000/recipes' - This is the index of all the recipes and contains nested ingredients for each recipe. This end-point has get and post routes for creating new recipes.

'http://localhost:3000/ingredients' - This end-point will get all ingredients and includes nested recipe information.

The Front-End:
The front-end uses Javascript to asynchronously make get and post requests to the API to populate the page with data and update the API. The data and functionality of the front-end was encapsulated in classes and methods.


Getting Started
To get started using this app do the following:

Clone the repository

git clone https://github.com/MisterAnthropy/recipe-app-frontend.git
Navigate to the top of the 'recipe-app-frontend' directory

cd recipe-app-frontend
Install required gem dependencies

bundle install

Create the database

rake db:create
Migrate the tables

rake db:migrate
Seed the database with a few recipes and ingredients

rake db:seed
Start your rails server

rails s
Open index.html in your browser

Enjoy the app!