class AddBookIdToAgendas < ActiveRecord::Migration
  def change
    add_column :agendas, :book_id, :integer
  end
end
