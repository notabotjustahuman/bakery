require 'sinatra'
require 'httparty'
require "./mailer.rb"

class Muffin
  attr_accessor :name, :description, :price, :img
  def initialize(name, description, price, img)
    @name = name
    @description = description
    @price = price
    @img = img
  end
end

class Cookie
  attr_accessor :name, :description, :price, :img
  def initialize(name, description, price, img)
    @name = name
    @description = description
    @price = price
    @img = img
  end
end

class Cupcake
  attr_accessor :name, :description, :price, :img
  def initialize(name, description, price, img)
    @name = name
    @description = description
    @price = price
    @img = img
  end
end

class Cake
  attr_accessor :name, :description, :price, :img
  def initialize(name, description, price, img)
    @name = name
    @description = description
    @price = price
    @img = img
  end
end

class Crepe
  attr_accessor :name, :description, :price, :img
  def initialize(name, description, price, img)
    @name = name
    @description = description
    @price = price
    @img = img
  end
end

muffin1 = Muffin.new("Peanut Butter Nutella", "Savory Nutella Swirl with Creamy Peanut Butter ", "Price: $4.95", "https://www.somethingswanky.com/wp-content/uploads/2016/06/DSC_4179-620x936.jpg")
muffin2 = Muffin.new("Blueberry & Cranberry", "Sweet Berries with Glazed Crumbs", "Price: $4.95", "https://tastykitchen.com/recipes/wp-content/uploads/sites/2/2012/02/Blueberry-and-Cranberry-Crumb-Muffin-410x615.jpg")
muffin3 = Muffin.new("Glazed Apple Crumb", "Cinnamon Apple with Vanilla Icing", "Price: $4.95", "https://www.katheats.com/wp-content/uploads/2015/09/Glazed-Apple-Crumb-Muffins-11.jpg")
muffin4 = Muffin.new("Double Chocolate Raspberry", "Chocolate filling with Raspberries", "Price: $4.95", "https://www.lecremedelacrumb.com/wp-content/uploads/2014/09/raspberry-chocolate-muffins-6.jpg")
muffin5 = Muffin.new("Lemon Blueberry Crumb", "Lemon Crumbs with Blueberries", "Price: $4.95", "https://omgchocolatedesserts.com/wp-content/uploads/2017/06/Lemon-Blueberry-Muffins-Featured.jpg")
muffin6 = Muffin.new("Strawberry Cheesecake", "Cheesecake Filling with Crumbs", "Price: $4.95", "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2015/01/Strawberry-Cheesecake-Muffins-sallysbakingaddiction.com-2.jpg")

cookie1 = Cookie.new("Oatmeal Chocolate Chip", "Warm, Soft, and Chewy with Chocolate Chips", "Price: $1.99", "http://www.justsotasty.com/wp-content/uploads/2016/08/Soft-and-Chewy-Oatmeal-Chocolate-Chip-Cookies-7.jpg")
cookie2 = Cookie.new("White Chocolate Macadamia Nut", "Creamy White Chocolate and Macadamia Nuts", "Price: $1.99", "https://www.galonamission.com/wp-content/uploads/2015/12/White-Chocolate-Macadamia-Nut-Cookies-1-1.jpg")
cookie3 = Cookie.new("Peanut Butter & Jelly", "Peanut Butter Cookie with Sweet Jelly Filling", "Price: $1.99", "https://i.imgur.com/DAurDOo.jpg")
cookie4 = Cookie.new("Double Chocolate", "For the Chocolate Lovers, Huge Chocolate Chunks", "Price: $1.99", "https://www.gonnawantseconds.com/wp-content/uploads/2022/01/Chocolate-Chocolate-Chip-Cookies-1.jpg")
cookie5 = Cookie.new("Pumpkin Snickerdoodle", "Soft and Chewy with Pumpkin Spice", "Price: $1.95", "https://i2.wp.com/www.livewellbakeoften.com/wp-content/uploads/2017/09/Pumpkin-Snickerdoodles.jpg?resize=1360%2C2040&ssl=1")
cookie6 = Cookie.new("Oatmeal Raisin", "Plump Raisins with Cinnamon Spice and Oats", "Price: $1.95", "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2014/07/oatmeal-raisin-cookies-3.jpg")

cupcake1 = Cupcake.new("Chocolate Chip Cookie Dough", "Cookie Dough Frosting with a Mini Cookie", "Price: $3.95", "https://www.mybakingaddiction.com/wp-content/uploads/images/Final.jpg")
cupcake2 = Cupcake.new("Red Velvet Cheesecake", "Cheesecake in a Cupcake with Cookie Layers", "Price: $3.95", "https://therecipecritic.com/wp-content/uploads/2017/01/RedVelvetCupcakes2-667x1000.jpg")
cupcake3 = Cupcake.new("Cinnamon Buttercream Snickerdoodle", "Cinnamon Sugar with Buttercream Frosting", "Price: $3.95", "https://i.pinimg.com/originals/4d/87/2f/4d872f218fe890b974685b7e041d6887.jpg")
cupcake4 = Cupcake.new("Double Chocolate", "Chocolate Frosting & Sprinkles on Chocolate", "Price: $3.95", "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2017/06/moist-chocolate-cupcakes-5.jpg")
cupcake5 = Cupcake.new("Chai Latte", "Chai Buttercream and Spice on Vanilla", "Price: $3.95", "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2018/09/chai-latte-cupcakes.jpg")
cupcake6 = Cupcake.new("Dark Chocolate", "Peanut Butter Frosting on Chocolate", "Price: $3.95", "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2017/09/dark-chocolate-cupcakes-peanut-butter-frosting.jpg")


cake1 = Cake.new("White Chocolate Raspberry Cheesecake", "Cheesecake on Buttery Shortbread Cookie Crust", "Price: $59.95", "http://lifemadesimplebakes.com/wp-content/uploads/2016/02/White-Chocolate-Raspberry-Cheesecake-6.jpg")
cake2 = Cake.new("Black Forest", "Chocolate Syrup Drizzle with Fresh Cherries", "Price: $59.95", "https://www.lifeloveandsugar.com/wp-content/uploads/2018/07/Black-Forest-Cake3.jpg")
cake3 = Cake.new("Strawberry Shortcake", "Macerated Strawberries with Vanilla", "Price: $59.95", "http://www.glorioustreats.com/wp-content/uploads/2018/05/Best-Strawberry-Shortcake-C.jpg")
cake4 = Cake.new("Coconut", "Fluffy & Soft, Coconut Flakes and Rose Fondant", "Price: $59.95", "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2019/03/coconut-layer-cake.jpg")
cake5 = Cake.new("Pistacho", "Cream Cheese Frosting on Pistacho Layers", "Price: $59.95", "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2018/03/homemade-pistachio-cake.jpg")
cake6 = Cake.new("Raspberry Crumb", "Almond and Crumbs Topping on Vanilla & Raspberry", "Price: $59.95", "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2018/04/raspberry-almond-crumb-cake.jpg")

crepe1 = Crepe.new("Triple Berry with Cream", "Strawberries, Raspberries, and Blueberries with Buttercream", "Price: $8.95", "https://www.cookingonthefrontburners.com/wp-content/uploads/2016/07/TripleBerryCrepeslemoncurd-683x1024.jpg")
crepe2 = Crepe.new("Apple Cinnamon with Caramel", "Thinly Sliced Apples with Caramel Drizzle, Walnuts, and Buttercream", "Price: $8.95", "https://tidymom.net/blog/wp-content/uploads/2018/09/apple-crepes-image-650x974.jpg")
crepe3 = Crepe.new("Almond Oat Banana", "Sliced Banana and Oats covered in Chocolate Drizzle and Almonds", "Price: $8.95", "https://img.mylot.com/2929082.jpeg")
crepe4 = Crepe.new("S'mores", "Marshmello with Crushed Peanuts & Nutella with Chocolate Drizzle", "Price: $8.95", "https://cdn.sallysbakingaddiction.com/wp-content/uploads/2014/08/Smores-Nutella-Crepes-2.jpg")
crepe5 = Crepe.new("Strawberry & Coconut", "Sliced Strawberries & Coconut with Strawberry Jam & Coconut Flakes", "Price: $8.95", "https://www.platingpixels.com/wp-content/uploads/2018/10/Easy-Dairy-Free-Crepes-with-Strawberry-Coconut-Sauce-recipe-6.jpg")
crepe6 = Crepe.new("Strawberry Chocolate", "Rolled Layers with Strawberries & Pomegranate Covered in Chocolate", "Price: $8.95", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQo4aze9d78P4224nt-3AWF_-czfXsf8ECMBPMv7bCseggqk4V7")

def send_email(recipient)
  Newsletter.welcome(recipient).deliver_now
end

get "/" do
  send_email(params[:email])
  redirect "/home"
end

get "/home" do
  erb :home
end

get "/muffins" do
  @muffins = [muffin1, muffin2, muffin3, muffin4, muffin5, muffin6]
  erb :muffins
end

get "/cookies" do
  @cookies = [cookie1, cookie2, cookie3, cookie4, cookie5, cookie6]
  erb :cookies
end

get "/cupcakes" do
  @cupcakes = [cupcake1, cupcake2, cupcake3, cupcake4, cupcake5, cupcake6]
  erb :cupcakes
end

get "/cakes" do
  @cakes = [cake1, cake2, cake3, cake4, cake5, cake6]
  erb :cakes
end

get "/crepes" do
  @crepes = [crepe1, crepe2, crepe3, crepe4, crepe5, crepe6]
  erb :crepes
end

get "/events" do
  @req = HTTParty.get("https://www.eventbriteapi.com/v3/events/search/?q=baking&token=I5OOZL6JYNKBMZKSICJG")
  data = JSON.parse(@req.body)
  @events = data['events']
  erb :events
end

get "/partners" do
  erb :partners
end

get "/form" do
  erb :form
end
