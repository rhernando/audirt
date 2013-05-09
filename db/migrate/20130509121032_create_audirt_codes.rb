class CreateAudirtCodes < ActiveRecord::Migration
  def change
    create_table :audirt_codes do |t|
      t.string :code
      t.integer :programa_id

      t.timestamps
    end
  end
end
