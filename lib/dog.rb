require 'pry'
class Dog
	@@all = []
	attr_reader :name

	def initialize(name)
		@name = name
		@@all << self
	end


	def self.all
		output = ""
		@@all.each do |element| 
			output = output + "#{element.name}\n"
		end
		puts output
	end

	def self.clear_all
		@@all = @@all.map do |element|
			nil
		end.compact
	end

end