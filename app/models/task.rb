class Task < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :completion_status, presence: true
end
