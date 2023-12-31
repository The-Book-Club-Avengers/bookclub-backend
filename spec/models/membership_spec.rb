require 'rails_helper'

RSpec.describe Membership, type: :model do
  let(:user) {User.create(
    username: "JaneAusten",
    email: "jane.austen@example.com",
    password: "password",
    password_confirmation: "password",
    profile_picture: "https://media.istockphoto.com/id/1292618730/photo/elegant-jane-austen-style-woman-strolling-a-courtyard.jpg?s=1024x1024&w=is&k=20&c=rUj70rq6t6KVVCtlW7FPFImCBpvZ2EVcbR6H4i2mKOg="
  )}
  let(:club) {Club.create(
    name: "Fantasy Book Club",
    summary: "A club for fans of epic fantasy literature. Join us in exploring magical realms and heroic adventures.",
    meeting_dates: "1st and 3rd Fridays of each month",
    book_of_the_month: "The Fellowship of the Ring",
    book_of_the_month_picture: "https://media.istockphoto.com/id/522513933/photo/book-and-glowing-letters.jpg?s=1024x1024&w=is&k=20&c=8WfzoSTOdY66J5n4UUAdG-H3UbujWClS0Nxaq5Ai9l0="
  )}

  it 'validates name presence' do
    membership = user.memberships.create(
      club: club,
      user: user, 
      name: nil,
    )
    expect(membership.errors[:name]).to include("can't be blank")
  end

  it 'validates club presence' do
    membership = user.memberships.create(
      club_id: nil,
      user_id: user,
      name: "Fantasy Book Club", 
    )
    expect(membership.errors[:club_id]).to include("can't be blank")
  end

  it 'validates user presence' do
    membership = Membership.create(
      club: club,
      user_id: nil,
      name: "Fantasy Book Club", 
    )
    expect(membership.errors[:user_id]).to include("can't be blank")
  end
  
end
