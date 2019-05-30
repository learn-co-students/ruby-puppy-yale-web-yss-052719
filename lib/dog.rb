require 'pry'
class Dog
@@all = []
attr_accessor :name
def self.clear_all
    @@all = []
end

def self.all
    @all
end

def self.all
    @@all.each { |dog| puts dog.name}
end

def initialize(name)
    @name = name
    @@all << self
end
end