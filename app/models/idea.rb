class Idea < ApplicationRecord
  belongs_to :user

  validates :author_idea, presence: true, length: { minimum: 3, maximum: 50 }
end
