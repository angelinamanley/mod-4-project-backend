class RoomsController < ApplicationController

    def create 
        room = Room.create()
        render json: room
    end
    
    def show
        rooms = User.find(params[:id]).rooms
        render json: RoomSerializer.new(rooms)
    end

    def destroy
        room = Room.find(params[:id])
        sessions = room.sessions
        messages = room.messages
        tran_messages = room.trans_messages 
        tran_messages.destroy_all
        messages.destroy_all
        sessions.destroy_all
        room.destroy
        render json: room
    end

end
