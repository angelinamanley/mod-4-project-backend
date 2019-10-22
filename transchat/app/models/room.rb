class Room < ApplicationRecord
    has_many :sessions
    has_many :users, through: :sessions 
    has_many :messages, through: :sessions 
    has_many :trans_messages, through: :messages 

end
