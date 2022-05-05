class CreateSpecialtyDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :specialty_doctors do |t|

      t.timestamps
    end
  end
end
