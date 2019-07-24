class AssociationEnrollment < ApplicationRecord
  belongs_to :disciplines_enrollment
  belongs_to :record_enrollment
end
