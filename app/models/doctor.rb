class Doctor < ApplicationRecord
  has_many :appts, dependent: :destroy
  has_many :patients, through: :appts
end
