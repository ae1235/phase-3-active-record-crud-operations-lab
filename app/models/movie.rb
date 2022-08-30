class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        Movie.create(title: title)
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.where(id: id)[0]
    end

    def self.find_movie_with_attributes(attributes)
        Movie.where(attributes)[0]
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    def update_with_attributes(field_and_value)
        self.update(field_and_value)
    end

    def self.update_all_titles(new_title)
        Movie.update_all(title: new_title)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end

    def self.delete_by_id(movie_id)
        Movie.find(movie_id).destroy
    end
end