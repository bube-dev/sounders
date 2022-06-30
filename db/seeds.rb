ROOMS = [
  {
    name: "Single",
    total: 5,
    available: 5,
    price: 30000
  },
  {
    name: "Double",
    total: 5,
    available: 5,
    price: 40000
  },
  {
    name: "Master",
    total: 3,
    available: 3,
    price: 50000
  }

]
ROOMS.each do |record|
  Room.find_or_create_by!(record)
end