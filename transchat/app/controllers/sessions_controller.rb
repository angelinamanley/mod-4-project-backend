class SessionsController < ApplicationController

    def create 
        session = Session.create(session_params)
        render json: session
    end

    def index 
        sessions = Session.all 
        render json: sessions 
    end
    
    private 

    def session_params 
        params.require(:session).permit(:user_id, :room_id)
    end

end
