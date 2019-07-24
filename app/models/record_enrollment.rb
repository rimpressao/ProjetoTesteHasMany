class RecordEnrollment < ApplicationRecord
  belongs_to :pre_enrollment
  belongs_to :student, optional:true



  has_many :association_enrollments
  has_many :disciplines_enrollments, :through => :association_enrollments
end
