class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_name
      t.references :user, index: true

      t.timestamps
    end
  end
end
