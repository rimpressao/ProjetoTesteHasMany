class DisciplinesEnrollment < ApplicationRecord
  belongs_to :pre_enrollment

  has_many :association_enrollments
  has_many :record_enrollments, :through => :association_enrollments
end
