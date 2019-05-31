class Doctor < ApplicationRecord
  has_many :appts
  has_many :patients, through: :appts
end
