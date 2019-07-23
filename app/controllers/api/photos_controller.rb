class Api::PhotosController < ApplicationController
  def index
    # debugger
    # show all the the pictures 
    #get all the pictures from the database and show to the user 
    @photos = Photo.all 
    render "index.json.jb"
  end

  def show 
    #show one particular picture 
    #I need to get one picture fromm the database
    # the_id = params[:id]
    # @photo = Photo.find_by(id: the_id)
    render "show.json.jb"
  end 
  def create 
    @photo = Photo.new( 
      name: params[:name],
      width: params[:width],
      height: params[:height])
    # photo = Photo.new(name: "devante" , width: 8 , height:9 )
    @photo.save
    render "create.json.jb"
  end 
end 
