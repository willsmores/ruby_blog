class Article < ApplicationRecord
  # Reference to validation login inside of concern
  include Visible
  has_many :comments, dependent: :destroy
  
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
