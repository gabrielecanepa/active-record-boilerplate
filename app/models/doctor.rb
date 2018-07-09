class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true, uniqueness: true
end


# The following code, to retrieve patients from a doctor, is not performant, since instead of making a JOIN query is going to iterate and make for every consultation a SELECT query:
# patients = []
# house.consultations.each do |consultation|
#   patients << consultation.patient
# end

# The best way is to associate the doctor to his patients through the consultations table with `has_many :patients, through: :consultations`. This will execute a JOIN querhy instead of multiple

