class CreateFigures < ActiveRecord::Migration[4.2]
  def change
    create_table :figures do |t|
      t.string :name
      t.timestamps
    end
  end
end
