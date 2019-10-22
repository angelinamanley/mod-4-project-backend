class Session < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :messages
  has_many :trans_messages, through: :messages 

end
