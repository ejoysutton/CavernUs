
  #we are within @mine
  json.name @mine.name
  json.address @mine.address
  json.description @mine.description
  json.current_user @user.id

  json.posts @mine.posts do |post|
    json.title post.title
    json.content post.content
    json.username User.find(post.user_id).username

  end

  json.trips @mine.trips do |trip|
    json.description trip.description
    json.date trip.date

    json.users trip.users do |user|
      json.username user.username
      json.avatar_url user.avatar_url
    end
  end






