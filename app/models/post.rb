# frozen_string_literal: true

# post model
class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true

  scope :published, -> { where.not(published_date: nil).where('published_date <= ?', Time.now) }

  def published?
    published_date <= Time.now
  end

end
