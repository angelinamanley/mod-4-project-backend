class SessionsController < ApplicationController

    def create 
        session = Session.create(session_params)
        render json: session
    end

    def show 
        sessions = Session.find_by(user_id: params[:id]) 
        render json: sessions 
    end
    
    private 

    def session_params 
        params.require(:session).permit(:user_id, :room_id)
    end

end
