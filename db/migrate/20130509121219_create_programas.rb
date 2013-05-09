class CreateProgramas < ActiveRecord::Migration
  def change
    create_table :programas do |t|
      t.string :name
      t.integer :cadena_id

      t.timestamps
    end
  end
end
