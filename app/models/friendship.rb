class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, :class_name => "User"
end

	def self.join_users
		Friendship.joins(:users).select(:id, :first_name, :last_name)
	end

