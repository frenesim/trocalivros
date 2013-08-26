class CreateReview < ActiveRecord::Migration
  def change
    create_table :review do |t|
      t.string :review
      t.integer :livro_id

      t.timestamps
    end
  end
end
