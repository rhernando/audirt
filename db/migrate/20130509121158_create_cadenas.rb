class CreateCadenas < ActiveRecord::Migration
  def change
    create_table :cadenas do |t|
      t.string :name
      t.string :logoname

      t.timestamps
    end
  end
end
