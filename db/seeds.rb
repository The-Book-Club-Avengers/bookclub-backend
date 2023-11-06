# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.where(email: "jane.austen@example.com").first_or_create(
    password: "password",
    password_confirmation: "password",
    username: "JaneAusten",
    profile_picture: "https://media.istockphoto.com/id/1292618730/photo/elegant-jane-austen-style-woman-strolling-a-courtyard.jpg?s=1024x1024&w=is&k=20&c=rUj70rq6t6KVVCtlW7FPFImCBpvZ2EVcbR6H4i2mKOg="
  ) 
user2 = User.where(email: "mark.twain@example.com").first_or_create(
    password: "password",
    password_confirmation: "password",
    username: "MarkTwain",
    profile_picture: "https://media.istockphoto.com/id/177793700/photo/postage-stamp-romania-1960-shows-mark-twain.jpg?s=1024x1024&w=is&k=20&c=IQ9jXpgpI48CkFDCt-qq3gjSwuza1ziU-50B7SI0CKE="
  )
user3 = User.where(email: "george.orwell@example.com").first_or_create(
    password: "password",
    password_confirmation: "password",
    username: "GeorgeOrwell",
    profile_picture: "data:image/jpeg;base64,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"
  )

  club1 = [{
    name: "Fantasy Book Club",
    summary: "A club for fans of epic fantasy literature. Join us in exploring magical realms and heroic adventures.",
    meeting_dates: "1st and 3rd Fridays of each month",
    book_of_the_month: "The Fellowship of the Ring",
    book_of_the_month_picture: "https://media.istockphoto.com/id/522513933/photo/book-and-glowing-letters.jpg?s=1024x1024&w=is&k=20&c=8WfzoSTOdY66J5n4UUAdG-H3UbujWClS0Nxaq5Ai9l0="
  }]

  club2 = [{
    name: "Non-Fiction Book Club",
    summary: "Dive into the world of non-fiction literature. We explore topics ranging from history to science and self-help.",
    meeting_dates: "2nd and 4th Thursdays of each month",
    book_of_the_month: "Sapiens: A Brief History of Humankind",
    book_of_the_month_picture: "https://media.istockphoto.com/id/1447533975/photo/sign-on-library-shelves-non-fiction.jpg?s=1024x1024&w=is&k=20&c=Up_RUch-zaLe_PLZok66IraOMo-ydMSHehWDxPAcPNg="
  }]

  club3 = [{
    name: "Historical Book Club",
    summary: "Travel back in time with us to explore different eras, events, and figures in history through literature.",
    meeting_dates: "1st and 3rd Wednesdays of each month",
    book_of_the_month: "All the Light We Cannot See",
    book_of_the_month_picture: "https://images.unsplash.com/photo-1461360370896-922624d12aa1?auto=format&fit=crop&q=80&w=2948&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
  }]

  club1.each do |club|
    user1.clubs.create!(club)
    p "creating #{club}"
  end
  
  club2.each do |club|
    user2.clubs.create!(club)
    p "creating #{club}"
  end

  club3.each do |club|
    user3.clubs.create!(club)
    p "creating #{club}"
  end
  
  