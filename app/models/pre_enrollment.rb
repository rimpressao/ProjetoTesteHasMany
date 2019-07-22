class PreEnrollment < ApplicationRecord
    has_many :disciplines_enrollments, inverse_of: :pre_enrollment, dependent: :destroy
    accepts_nested_attributes_for :disciplines_enrollments, reject_if: :all_blank, allow_destroy: true
    
end
