class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents, force: true do |t|
      t.integer :format_type
      t.string :url
      t.string :md5
      t.string :password
      t.string :title
      t.text :description
      t.integer :access_type
      t.datetime :created_at
      t.datetime :updated_at
      t.string :file

      t.belongs_to :user, index:true

      t.timestamps
    end
  end
end
