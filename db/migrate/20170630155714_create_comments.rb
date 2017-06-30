class CreateComments < ActiveRecord::Migration[5.0]
  def change

    create_table :comments do |t|
      t.string :name
      t.text :body
      t.references :page, index: true

      t.timestamps
    end

    add_foreign_key :comments, :pages
  end
end
