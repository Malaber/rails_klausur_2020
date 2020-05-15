class Patient < ApplicationRecord
  belongs_to :doctor

  validates :email, presence: true

end
