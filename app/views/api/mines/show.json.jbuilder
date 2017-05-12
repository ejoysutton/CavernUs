
  #we are within @mine
  json.name @mine.name
  json.address @mine.address
  json.description @mine.description
  json.current_user @user.id
  json.id @mine.id
  json.latitude @mine.latitude
  json.longitude @mine.longitude

  json.posts @mine.posts do |post|
    json.title post.title
    json.content post.content
    json.username User.find(post.user_id).username
    json.user_id post.user_id
    json.id post.id

  end

  json.trips @mine.trips do |trip|
    json.description trip.description
    json.date trip.date
    json.id trip.id


    json.users trip.trip_members do |trip_member|
      json.username trip_member.user.username
      json.avatar_url trip_member.user.avatar_url
      json.user_id trip_member.user.id
      json.member_id trip_member.id
    end
  end






