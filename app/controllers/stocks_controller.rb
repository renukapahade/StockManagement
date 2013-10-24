class StocksController < ApplicationController

  def index
    @stocks = Stock.all

  end


  def show
    @stock = Stock.find(params[:id])

  end


  def new
    @stock = Stock.new

  end


  def edit
    @stock = Stock.find(params[:id])
  end


  def create
    @stock = Stock.new(params[:stock])

    if @stock.save
      flash[:notice] = 'Stock was successfully created.'
      redirect_to @stock

    else
      flash[:alert] = 'Your post has not been saved'
      render  :new
    end
  end


  def update
    @stock = Stock.find(params[:id])


    if @stock.update_attributes(params[:stock])
      flash[:notice] = 'Stock was successfully updated.'
      redirect_to @stock

    else
      flash[:alert] = 'Error while updating'
      render :edit

    end
  end


  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy
    redirect_to @stock

  end


end
