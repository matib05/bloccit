class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @questions = Question.find(params[:id])
  end

  def new
    @questions = Question.new
  end
  
  def create
    @question = Question.new
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    
    if @question.save
      flash[:notice] = "Question was saved"
      redirect_to @question
    else
      flash[:notice] = "There was an error saving your question."
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:id])
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]
    @question.resolved = params[:question][:resolved]
    
    if @question.save
      flash[:notice] = "The Question was saved."
      redirect_to @question
    else
      flash[:notice] = "There was a problem saving the Question. Please try again."
      render :edit
    end
  end
  
  def destroy
    @question = Question.find(params[:id])
    
    if @question.destroy
      flash[:notice] = "Question deleted"
      redirect_to questions_path
    else
      flash[:notice] = "There was a problem deleting the question. Please try again"
      render :show
    end
  end
end
