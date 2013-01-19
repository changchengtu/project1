class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :name
      t.string :context

      t.references :feedback
          
      t.timestamps
    end
  end
end
