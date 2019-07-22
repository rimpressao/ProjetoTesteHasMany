class CreatePreEnrollments < ActiveRecord::Migration[5.0]
  def change
    create_table :pre_enrollments do |t|
      t.string :semester
      t.datetime :date_initial
      t.datetime :date_final

      t.timestamps
    end
  end
end
