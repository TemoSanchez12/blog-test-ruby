class Comment < ApplicationRecord
  VALID_STATUSES = ['public', 'private', 'archived']
  
  belongs_to :article

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end

end
