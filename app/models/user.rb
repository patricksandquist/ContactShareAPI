class User < ActiveRecord::Base
  validates :username, presence: true, unique: true 
end
