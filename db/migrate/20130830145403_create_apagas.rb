class CreateApagas < ActiveRecord::Migration
  def change
    create_table :apagas do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
