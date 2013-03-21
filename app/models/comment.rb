class Comment < ActiveRecord::Base
  belongs_to :user
  has_many :commentvotes
  has_many :notes
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable
end
