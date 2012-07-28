class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :listing
  belongs_to :profile
  validates_presence_of :body
end
