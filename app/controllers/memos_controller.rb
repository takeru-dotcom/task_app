class MemosController < ApplicationController
  def index
    @memos = Memo.all
  end
  
  def new
    @memo = Memo.new
  end
  
  def create
    @memo = Memo.new(params.require(:memo).permit(:title, :start_date, :end_date, :all_day, :schedule))
    
    if @memo.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to :memos
    else
      flash[:notice_red] = "スケジュールを登録できませんでした"
      render "new", status: :unprocessable_entity
    end
    
  end
  
  def show
    @memo = Memo.find(params[:id])
  end
  
  def edit
    @memo = Memo.find(params[:id])
  end
  
  def update
    @memo = Memo.find(params[:id])
    if @memo.update(params.require(:memo).permit(:title, :start_date, :end_date, :all_day, :schedule))
      flash[:notice] = "スケジュールを編集しました"
      redirect_to :memos
    else
      flash[:notice_red] = "スケジュールを登録できませんでした"
      render :edit, status: :unprocessable_entity
    end

  end
  
  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy
    flash[:notice_red] = "スケジュールを削除しました"
    redirect_to :memos
  end
  
  end
