# frozen_string_literal: true

class Article < ApplicationRecord
  belongs_to :author, class_name: 'User', required: true

  validates_presence_of :title, :body

  has_rich_text :body
end
