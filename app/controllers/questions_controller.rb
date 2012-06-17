class QuestionsController < ApplicationController
  
  # GET /questions
  # GET /questions.json
  def index
    @questions = Thesis.find(session[:thesis_id]).questions

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questions }
    end
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/new
  # GET /questions/new.json
  def new
    @question = Question.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @question }
    end
  end

  # GET /questions/1/edit
  def edit
    @question = Question.find(params[:id])
  end

  # POST /questions
  # POST /questions.json
  def create
    params[:question][:thesis_id] = session[:thesis_id] 
    @question = Question.new(params[:question])

    respond_to do |format|
      if @question.save
        format.html { redirect_to questions_path, notice: 'Question was successfully created.' }
        format.json { render json: @question, status: :created, location: @question }
      else
        format.html { render action: "new" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /questions/1
  # PUT /questions/1.json
  def update
    @question = Question.find(params[:id])
    respond_to do |format|
      if @question.update_attributes(params[:question])
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
   @question = Question.find(params[:id])
   @question.destroy
   respond_to do |format|
    format.html { redirect_to questions_url }
    format.json { head :ok }
   end
  end

  #post /questions/1/add_answer
  def add_answer
   @question = Question.find(params[:id])
   if student_signed_in?
    @question.answers.create(:content => params[:question][:answer][:content], :name => current_student.student_information.name, :question => @question)
   elsif teacher_signed_in?
    @question.answers.create(:content => params[:question][:answer][:content], :name => current_teacher.teacher_information.name, :question => @question)
   end
   redirect_to @question
  end 

  #post /questions/1/destroy_answer
  def destroy_answer
   @question = Question.find(params[:id])
   @answer = Answer.find(params[:answer_id])
   @answer.destroy
   redirect_to @question
  end
end
