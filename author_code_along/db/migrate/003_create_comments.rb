class CreateComments < ActiveRecord::Migration[5.1]
    def change
        create_table :comments do |t|
            t.integer :post_id
            t.integer :user_id
            t.text :content
            t.timestamps null: false
        end
    end
end