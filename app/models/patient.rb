class Patient < ApplicationRecord
  belongs_to :doctor, optional: true

  validates :email, presence: true
  validates :name, presence: true

end
