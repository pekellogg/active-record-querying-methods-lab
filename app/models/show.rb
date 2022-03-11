class Show < ActiveRecord::Base
    def self.highest_rating # returns the rating of the TV show with the highest rating
        self.maximum(:rating)
    end

    def self.most_popular_show # returns the TV show with the highest rating (FAILED - 2)
        self.where("rating = ?", self.highest_rating).first
    end

    def self.lowest_rating # returns the rating of the TV show with the lowest rating (FAILED - 3)
        self.minimum(:rating)
    end

    def self.least_popular_show # returns the TV show with the lowest rating (FAILED - 4)
        self.where("rating = ?", self.lowest_rating).first
    end

    def self.ratings_sum # returns the sum of all the ratings of all the tv shows (FAILED - 5)
        self.sum(:rating)
    end

    def self.popular_shows # returns an array of all of the shows with a rating above 5 (FAILED - 6)
        self.where("rating >= ?", 5)
    end

    def self.shows_by_alphabetical_order
        self.order(:name)
    end
end

