class CreateCharacters < ActiveRecord::Migration[4.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :show_id
      t.string :catchphrase
      t.string :show
      t.string :build_show
      t.integer :actor_id
    end
  end
end
