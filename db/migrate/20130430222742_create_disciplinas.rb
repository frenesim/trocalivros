class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :disciplina

      t.timestamps
    end
  end
end
