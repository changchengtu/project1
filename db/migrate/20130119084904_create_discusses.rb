class CreateDiscusses < ActiveRecord::Migration
  def change
    create_table :discusses do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :context

      t.references :feedback

      t.timestamps
    end
  end
end
