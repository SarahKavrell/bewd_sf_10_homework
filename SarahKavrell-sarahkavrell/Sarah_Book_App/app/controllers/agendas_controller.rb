class AgendasController < ApplicationController

def create
  @book = Book.find(params[:book_id])
  @question = @book.agendas.create(agenda_params)
  if @question.save
    redirect_to book_path(@book)
  else
    render 'new'
  end
end
private
    def agenda_params
      params.require(:agenda).permit(:question)
    end
end
