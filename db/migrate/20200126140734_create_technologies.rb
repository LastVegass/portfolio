class CreateTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :technologies do |t|
      t.string :name
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
