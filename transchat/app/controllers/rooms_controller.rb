class RoomsController < ApplicationController

    def create 
        room = Room.create()
        render json: room
    end

end
