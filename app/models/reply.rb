class Reply < ActiveRecord::Base
  belongs_to :micropost
  belongs_to :user
  default_scope -> { order('created_at ASC') }
  validates :content, presence: true
end
