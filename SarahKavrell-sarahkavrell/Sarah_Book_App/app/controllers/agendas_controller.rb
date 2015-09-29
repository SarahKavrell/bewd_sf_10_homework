class AgendasController < ApplicationController

def create
  @book = Book.find(params[:book_id])
  @question = Book.find(params[:book_id])
  redirect_to book_path(@book)
end

private
    def agenda_params
      params.require(:question).permit(:question)
    end
end
