class RoomSerializer
  include FastJsonapi::ObjectSerializer
  attributes :sessions
end
