class Doctor < ApplicationRecord
  belongs_to :laboratory
  has_many :patients
end
