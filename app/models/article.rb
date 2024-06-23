class Article < ApplicationRecord
  VALID_STATUSES = ['public', 'private', 'archived']
  
  has_many :comments
  
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
  
end