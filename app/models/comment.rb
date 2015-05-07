class Comment < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :name
  validates_presence_of :name, :within=>2..20
  validates_presence_of :body

end
