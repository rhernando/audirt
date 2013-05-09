class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :audirt_code
      t.integer :num_visit

      t.timestamps
    end
  end
end
