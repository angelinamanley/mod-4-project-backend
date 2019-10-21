class MessageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :trans_messages, :content, :session_id
  
end
