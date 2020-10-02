# frozen_string_literal: true

# user model
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts

  enum role: {
    author: 0,
    admin: 2
  }

  def acts_as_admin?
    admin?
  end

  def acts_as_author?
    author? || admin?
  end

  def to_s
    name
  end

  def name
    [first_name, last_name].join(' ')
  end

end
