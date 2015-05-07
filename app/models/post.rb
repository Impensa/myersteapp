class Post < ActiveRecord::Base
	belongs_to :category
	belongs_to :admin_user
	has_many :comments, :dependent => :destroy
	#dependent on destroy means all the comments for the post will be wiped as well
end
