# Chart Organiser 

work in progress: I want to be able to classify charts into categories. Each chart will have an image associated to it 


## Technology stack 

- Ruby on rails : 5.2
- Ruby : 2.4.2
- Database : postgresql 
- Active Storage for image uploading 
- Guard/livereload gems to have live reload while making changes 
- Bootstrap gem 
- Minitest for the tests 

### Installing

The ruby on rails dependencies need to be installed : 

```
bundle install 
```

This command will install the gems listed in the gemfile. 

Postgresql needs to be installed in your local server. Then the database needs to be created/migrated through rails : 

```
rails db:create
```

```
rails db:migrate
```

This will create the tables related to the Category and Chart models in your database. 

## Getting Started

Once all the above is done, we can run the server like so : 

```
rails server
```

This will run the app locally on port 3000 


## Running the tests

In order to run the test, we need to run the following command :

```
rails test
```
