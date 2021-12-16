# frozen_string_literal: true

# User model
class User < ApplicationRecord
  # Clearance is our authentication layer.
  include Clearance::User

  # Rolify is responsible for user roles.
  rolify

  # Relationships
  has_many :articles, foreign_key: 'author_id'

  # Lifecycle hooks
  after_create :assign_default_role

  # Validations
  validates :name, :email, :password, presence: true

  private

  # Callbacks
  def assign_default_role
    add_role(:guest) if roles.blank?
  end
end
