class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true, length: {minimum: 3, maximum: 200}
  scope :custom_display, -> { order(:created_at).last(20) }
end