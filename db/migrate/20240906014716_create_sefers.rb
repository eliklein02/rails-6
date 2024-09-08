class CreateSefers < ActiveRecord::Migration[6.0]
  def change
    create_table :sefers do |t|
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end
