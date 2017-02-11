class Service < ActiveRecord::Base
  validates :title, presence: true, length: {maximum:80}
  validates :description, presence: true, length: {maximum:1200}
  validates :price, presence: true
  validates :delivery_time, presence: false
  validates :revisions, presence: false
  validates :requirements, presence: true, length: {maximum:450}
end
