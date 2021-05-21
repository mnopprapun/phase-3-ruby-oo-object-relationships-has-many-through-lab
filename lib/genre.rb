
require 'pry'

class Genre

	attr_reader :name

	@@all = []	

	def initialize(name)
		@name = name
		@@all << self
	end

	# this method allows the class Song to have each song have its own genre
	def songs
		Song.all { |song| song.genre == self }
	end

	def self.all
		@@all
	end

	def artists
		songs.map do | song |
			song.artist
		end
	end

end