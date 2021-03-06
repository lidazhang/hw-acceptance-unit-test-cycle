class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.find_director_movies id
    id.nil? ? nil : Movie.where(:director => id).to_a()
    # director = Movie.find(id).director
    # return nil if director.blank? || director.nil?
    # Movie.where(director => director)
  end
end
