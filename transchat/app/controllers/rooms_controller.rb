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
        session1 = room.sessions.first
        session2 = room.sessions.last
        messages1 = session1.messages
        messages2 = session2.messages
        messages2.each do |message| 
            message.trans_messages.destroy_all
         end 
        messages1.each do |message| 
            message.trans_messages.destroy_all
         end    
        messages1.destroy_all
        messages2.destroy_all
        session1.destroy
        session2.destroy
        room.destroy
        render json: room
    end

end
