class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.references :list
      t.string :name

      t.timestamps
    end
    add_index :ideas, :list_id
  end
end
