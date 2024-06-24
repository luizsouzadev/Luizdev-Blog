class CreatePostagens < ActiveRecord::Migration[7.1]
  def change
    create_table :postagens do |t|
      t.string :titulo
      t.datetime :data

      t.timestamps
    end
  end
end
