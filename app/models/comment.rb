class Comment < ActiveRecord::Base

  belongs_to :page

  validates :name, presence: true
  validates :body, presence: true
end