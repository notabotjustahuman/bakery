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

class Coookie
  attr_accessor :name, :description, :price
  def initialize(name,description,price)
    @name = name
    @description = description
    @price = price
  end
end

class Cupcake
  attr_accessor :name, :description, :price
  def initialize(name,description,price)
    @name = name
    @description = description
    @price = price
  end
end

class Cake
  attr_accessor :name, :description, :price
  def initialize(name,description,price)
    @name = name
    @description = description
    @price = price
  end
end

class Crepes
  attr_accessor :name, :description, :price
  def initialize(name,description,price)
    @name = name
    @description = description
    @price = price
  end
end

muffin1 = Muffin.new("Peanut Butter Nutella", "Savory Nutella Swirl with Creamy Peanut Butter ", "Price: $4.95")
muffin2 = Muffin.new("Blueberry & Cranberry", "Sweet Berries with Crumbs", "Price: $4.95")
muffin3 = Muffin.new("Glazed Apple Crumb", "Cinnamon Apple with Vanilla Icing", "Price: $4.95")

cookie1 = Cookie.new("Oatmeal Chocolate Chip", "Warm, Soft, and Chewy", "Price: $1.99")
cookie2 = Cookie.new("White Chocolate Macadamia Nut", "Creamy White Chocolate and Nuts", "Price: $1.99")
cookie3 = Cookie.new("Peanut Butter & Jelly", "PB Cookie with Sweet Jelly Filling", "Price: $1.99")

cupcake1 = Cupcake.new("Chocolate Chip Cookie Dough", "Cookie Dough Frosting with a Mini Cookie", "Price: $3.95")
cupcake2 = Cupcake.new("Red Velvet Cheesecake", "Cheesecake in a Cupcake with Cookie Layers", "Price: $3.95")
cupcake3 = Cupcake.new("Cinnamon Buttercream Snickerdoodle", "Cinnamon Sugar with Buttercream Frosting", "Price: $3.95")

cake1 = Cake.new("White Chocolate Raspberry Cheesecake", "Cheesecake on Buttery Shortbread Cookie Crust", "Price: $59.95")
cake2 = Cake.new("Black Forest", "Layers of Chocolate Sponge with Chocolate Syrup and Cherries", "Price: $59.95")
cake3 = Cake.new("Strawberry Shortcake", "Macerated Strawberries with Vanilla", "Price: $59.95")

crepe1 = Crepe.new("Triple Berry with Cream", "Strawberries, Raspberries, and Blueberries with Buttercream", "Price: $8.95" )
crepe2 = Crepe.new("Apple Cinnamon with Caramel", "Thinly Sliced Apples with Caramel Drizzle, Walnuts, and Buttercream", "Price: $8.95")
crepe3 = Crepe.new("Almond Oat Banana", "Sliced Banana and Oats covered in Chocolate Drizzle and Almonds", "Price: $8.95")

get "/" do
  redirect "/home"
end

get "/home" do
  erb :home
end

get "/muffins" do
  erb :muffins
end

get "/cookies" do
  erb :cookies
end

get "/cupcakes" do
  erb :cupcakes
end

get "/cakes" do
  erb :cakes
end

get "/crepes" do
  erb :crepes
end

get "/events" do
  erb :events
end

get "/partners" do
  erb :partners
end
