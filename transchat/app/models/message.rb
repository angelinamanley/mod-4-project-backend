class Message < ApplicationRecord
  belongs_to :session
  has_many :trans_messages
end
