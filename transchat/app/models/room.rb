class Room < ApplicationRecord
    has_many :sessions
    has_many :users, through: :sessions 
    has_many :messages, through: :sessions 
end
