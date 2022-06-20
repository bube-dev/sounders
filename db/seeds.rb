ROOMS = [
  {
    type: "",
    total: "",
    available: "",
    price:
  },
  {
    type: "",
    total: "",
    available: "",
    price:
  },
  {
    type: "",
    total: "",
    available: "",
    price:
  },

]
ROOMS.each do |record|
  Room.find_or_create_by!(record)
end