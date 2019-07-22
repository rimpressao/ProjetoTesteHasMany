class CreateDisciplinesEnrollments < ActiveRecord::Migration[5.0]
  def change
    create_table :disciplines_enrollments do |t|
      t.string :code
      t.string :name
      t.integer :category
      t.references :pre_enrollment, foreign_key: true

      t.timestamps
    end
  end
end
