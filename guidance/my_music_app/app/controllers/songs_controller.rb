class SongsController < ApplicationController
def index #all artists
 @song = Song.all
end

def show #finding one specific artist
 @song = Song.find(params[:id])
end

def new #create a new artist
 @song = Song.new
end

def edit #taking you to the update page or ability to update
 @song = Song.find(params[:id])
end

def create #create a new artist
 @song = Song.new(artist_params)

 if @song.save
   redirect_to @song
 else
   render 'new'
 end
end

def update #the actual action of updating an artist
 @song = Song.find(params[:id])

 if @song.update(artist_params)
   redirect_to @song
 else
   render 'edit'
 end
end

def destroy
 @song = Song.find(params[:id])
 @song.destroy

 redirect_to songs_path
end

private
 def artist_params
   params.require(:artist).permit(:title, :text)
 end
end
#   def index
#   end
#
#   def show
#   end
#
#   def edit
#   end
#
#   def new
#   end
# end
