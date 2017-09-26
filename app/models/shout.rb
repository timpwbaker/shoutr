class Shout < ApplicationRecord
  validates :body, presence: true, length: { in: 1..144 }
  validates :user, presence: true

  belongs_to :user

  default_scope { order(created_at: :desc) }

  delegate :username, to: :user
end
