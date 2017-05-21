
  #we are within @user
  json.username @user.username
  json.location @user.location
  json.bio @user.bio
  # json.current_user @user.id
  json.id @user.id

  json.posts @user.posts do |post|
    json.title post.title
    json.content post.content
    json.name Mine.find(post.mine_id).name
    json.mine_id post.mine_id
    json.id post.id

  end

  json.trips @user.trips do |trip|
    json.description trip.description
    json.date trip.date
    json.id trip.id
    json.name trip.mine.name


    json.users trip.trip_members do |trip_member|
      # json.name trip_member.mine.name
      # json.address trip_member.mine.address
      # json.mine_id trip_member.mine_id
      # json.member_id trip_member.mine_id

      # json.
      json.username trip_member.user.username
    end
  end






