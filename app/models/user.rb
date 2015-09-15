# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  username   :string
#

class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true

  has_many(
    :contacts,
    class_name: "Contact",
    primary_key: :id,
    foreign_key: :user_id,
    dependent: :destroy
  )

  has_many(
    :given_contacts_shares,
    class_name: "ContactShare",
    primary_key: :id,
    foreign_key: :user_id
  )

  has_many(
    :given_contacts,
    through: :given_contacts_shares,
    source: :contact
  )
end
