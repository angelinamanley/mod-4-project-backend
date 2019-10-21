require("../helpers/translate")

class TransMessagesController < ApplicationController
    def create
        translate = Google::Cloud::Translate.new
        translate.translate params["content"], to: param["language"]
        message = TransMessage.create(transmessage_params)
        renders json: message 
    end

    def index
        room = Session.find(params[:id]).room
        messages = room.messages
        render json: messages 
    end


    private 

    def transmessage_params
        params.require(:transmessage).permit(:message_id, :language, :content)
    end
end
