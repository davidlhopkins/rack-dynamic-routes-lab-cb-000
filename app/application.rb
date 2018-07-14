class Application

  @@items = ["Apples","Carrots","Pears"]
  @@cart = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)

      item_name = req.path.split("/items/").last #turn /songs/Sorry into Sorry
      item = @@items.find{|item| items.price == item_price}

      resp.write item.price
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
