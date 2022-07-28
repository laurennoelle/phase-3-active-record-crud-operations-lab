class Movie < ActiveRecord::Base

    #instantiates a movie with a given title, and saves it to the database
    #.create -new + save
    def self.create_with_title(title)
        Movie.create(title: title)
    end

    #returns the first item in the table
    def self.first_movie
        Movie.first
    end

    #returns the last item in the table
    def self.last_movie
        Movie.last
    end

    #returns the number of records in the table
    def self.movie_count
        Movie.count
    end

    #returns a movie from the table based on its id with the .find method
    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    #returns a movie from the table based on its attributes with the .find_by method
    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    #uses a .where clause to select the appropriate movies released after 2002
    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    #updates a single movie using the #update method
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    #updates the title of all records at once using the .update method
    def self.update_all_titles(title)
        Movie.update(title: title)
    end

    #deletes a single item with the #destroy method
    def self.delete_by_id(id)
        movie = Movie.find(id)
        movie.destroy
    end

    # deletes all items at once with the .destroy_all method
    def self.delete_all_movies
        Movie.destroy_all
    end

end