# frozen_string_literal: true

class Article < ApplicationRecord
  belongs_to :author, class_name: 'User', required: true
end
