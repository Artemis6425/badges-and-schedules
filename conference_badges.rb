# Write your code here.
require "pry"
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    badges = []
    array.each do |ye| badges.push(badge_maker(ye)) end
    return badges
end

def assign_rooms(array2)
    roomnumber=1
    rooms = []
    array2.each do |ok|
        rooms.push("Hello, #{ok}! You'll be assigned to room #{roomnumber}!")
        roomnumber+=1
    end
    return rooms
end

def printer(attendees)
    badges = batch_badge_creator(attendees)
    rooms = assign_rooms(attendees)
    count=0
    while count < attendees.length
        puts badges[count]
        puts rooms[count]
        count +=1
    end
end