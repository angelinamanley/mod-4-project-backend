class RoomsController < ApplicationController

    def create 
        room = Room.create()
        render json: room
    end
    
    def show
        rooms = User.find(params[:id]).rooms
        render json: RoomSerializer.new(rooms)
    end

end
