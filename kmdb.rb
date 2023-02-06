# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.
# TODO!
puts "studios: #{Studio.all.count}" 
puts "movies: #{Movie.all.count}" 
puts "actors: #{Actor.all.count}" 
puts "roles: #{Role.all.count}" 

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!
new_studios = studios.new
new_studios ["name"] = "Warner Bros."
new_studios.save

warner = Studio.find_by({ "name" => "Warner Bros." })

# MOVIES

new_movies = Movie.new
new_movies ["title"] = "Batman Begins"
new_movies ["year_released"] = "2005"
new_movies ["rated"] = "PG-13"
new_movies ["studio_id"] = warner["1"]
new_movies.save

new_movies = Movie.new
new_movies ["title"] = "The Dark Knight"
new_movies ["year_released"] = "2008"
new_movies ["rated"] = "PG-13"
new_movies ["studio_id"] = warner["1"]
new_movies.save

new_movies = Movie.new
new_movies ["title"] = "The Dark Knight Rises"
new_movies ["year_released"] = "2012"
new_movies ["rated"] = "PG-13"
new_movies ["studio_id"] = warner["1"]
new_movies.save

# Batman Begins

new_actors = Actor.new
new_actors ["name"] = "Christian Bale"
new_actors.save

new_actors = Actor.new
new_actors ["name"] = "Michael Caine"
new_actors.save

new_actors = Actor.new
new_actors ["name"] = "Liam Neeson"
new_actors.save

new_actors = Actor.new
new_actors ["name"] = "Katie Holmes"
new_actors.save

new_actor = Actor.new
new_actors ["name"] = "Gary Oldman"
new_actors.save

batman_begins = Movie.find_by({ "title" => "Batman Begins" })
actor = Studio.find_by({ "name" => "Warner Bros." })
warner = Studio.find_by({ "name" => "Warner Bros." })

new_roles = Role.new
new_roles ["movie_id"] = "The Dark Knight"
new_roles ["actor_id"] = "2008"
new_roles ["character_name"] = "PG-13"
new_roles ["studio_id"] = warner["id"]
new_roles.save

# The Dark Knight

# The Dark Knight Rises

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
