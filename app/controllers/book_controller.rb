class BookController < ApplicationController
  def list
    @Books = Book.all

  end
  def show
    @Book = Book.find(params[:id])
  end
  def new
    @Book = Book.new
    @Students = Student.all
  end
  def create
    @Book = Book.new(Book_params)

    if @Book.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end

  end

  def Book_params
    params.require(:Books).permit(:title, :author, :description, :details,:name,:taken,:return,)
  end
  def update
    @Book = Book.find(params[:id])

    if @Book.update_attributes(Book_param)
      redirect_to :action => 'show', :id => @Book
    else
      @Students = Student.all
      render :action => 'edit'
    end

  end

  def delete
    Book.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def show_Studentss
    @subject = Student.find(params[:id])
  end
