class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.string :question

      t.timestamps null: false
    end
  end
end
