class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.string :content
      t.references :waste, foreign_key: true

      t.timestamps
    end
  end
end
