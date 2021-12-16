class User < ApplicationRecord
  include Clearance::User

  validates_presence_of :name

  has_many :articles, foreign_key: 'author_id'
end
