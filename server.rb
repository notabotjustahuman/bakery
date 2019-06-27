require 'sinatra'
require 'httparty'

class Muffin
  attr_accessor :name, :description, :price
  def initialize(name,description,price)
    @name = name
    @description = description
    @price = price
  end
end

muffin1 = Muffin.new("Peanut Butter Nutella", "Savory Nutella swirl with creamy peanut butter", "Price: $3.95")

get "/" do
  erb :home
end
