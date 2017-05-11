


  #all the actual mine params
  json.name @mine.name
  json.trips @mine.trips do |trip|
    json.description trip.description

    json.users trip.users do |user|
      json.username user.username
    end
  end






