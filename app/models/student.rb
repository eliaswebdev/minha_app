class Student < ApplicationRecord

	validates :name, :registration, :birth_date, :status, presence: true

end
