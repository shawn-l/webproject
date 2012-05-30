class ThesesController < ApplicationController
  before_filter :authenticate_teacher!, :only => ['new', 'create']
  # GET /theses
  # GET /theses.json
  def index
    @theses = Thesis.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @theses }
    end
  end

  # GET /theses/1
  # GET /theses/1.json
  def show
    @thesis = Thesis.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thesis }
    end
  end

  # GET /theses/new
  # GET /theses/new.json
  def new
    @thesis = Thesis.new
    @teacher = current_teacher
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thesis }
    end
  end

  # GET /theses/1/edit
  def edit
    @thesis = Thesis.find(params[:id])
  end

  # POST /theses
  # POST /theses.json
  def create
    @thesis = Thesis.new(params[:thesis])


    respond_to do |format|
      if @thesis.save
        current_teacher.theses << @thesis
        format.html { redirect_to teacher_page_path, notice: 'Thesis was successfully created.' }
        format.json { render json: @thesis, status: :created, location: @thesis }
      else
        format.html { render action: "new" }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /theses/1
  # PUT /theses/1.json
  def update
    @thesis = Thesis.find(params[:id])
    respond_to do |format|
      if @thesis.update_attributes(params[:thesis])
        format.html { redirect_to @thesis, notice: 'Thesis was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theses/1
  # DELETE /theses/1.json
  def destroy
    @thesis = Thesis.find(params[:id])
    @thesis.destroy

    respond_to do |format|
      format.html { redirect_to teacher_page_path }
      format.json { head :ok }
    end
  end
  #get /theses/1/download
  def download
    File.new("pdf/thesis#{params[:id]}.pdf","w").close
    DrawPdf.draw(Thesis.find(params[:id]))
    send_file("pdf/thesis#{params[:id]}.pdf")
    File.delete "pdf/thesis#{params[:id]}.pdf"
  end

  def student
    thesis = Thesis.find(params[:id])
    thesis.student_id = params[:student]
    thesis.save
    redirect_to student_page_url
  end
end
