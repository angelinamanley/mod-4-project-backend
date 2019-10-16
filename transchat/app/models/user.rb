class User < ApplicationRecord
    has_many :sessions
    has_many :rooms, through: :sessions 
    has_many :messages, through: :sessions 
end
