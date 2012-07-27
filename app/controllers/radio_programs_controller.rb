class RadioProgramsController < ApplicationController
  #SMC - This specifies the layout to use: views/layouts/prayer.html.erb
  layout 'static'
  before_filter :authenticate_admin!, :only => [:edit, :update, :index, :destroy, :moderate]
  
  # GET /radio_programs
  # GET /radio_programs.xml
  def index
    @radio_programs = RadioProgram.page(params[:page]).order('date DESC').limit(20)
 #   @radio_programs = RadioProgram.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @radio_programs }
    end
  end
  def ankom
    @radio_programs = RadioProgram.featured.page(params[:page]).order('date DESC').limit(20)

    respond_to do |format|
      format.html # ankom.html.erb
      format.xml  { render :xml => @radio_programs }
    end
  end
  # GET /radio_programs/1
  # GET /radio_programs/1.xml
  def show
    @radio_program = RadioProgram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @radio_program }
    end
  end

  # GET /radio_programs/new
  # GET /radio_programs/new.xml
  def new
    @radio_program = RadioProgram.new
    1.times { @radio_program.audios.build }

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @radio_program }
    end
  end

  # GET /radio_programs/1/edit
  def edit
    @radio_program = RadioProgram.find(params[:id])
    1.times { @radio_program.audios.build }
  end

  # POST /radio_programs
  # POST /radio_programs.xml
  def create
    @radio_program = RadioProgram.new(params[:radio_program])

    respond_to do |format|
      if @radio_program.save
        format.html { redirect_to(@radio_program, :notice => 'Radio program was successfully created.') }
        format.xml  { render :xml => @radio_program, :status => :created, :location => @radio_program }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @radio_program.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /radio_programs/1
  # PUT /radio_programs/1.xml
  def update
    @radio_program = RadioProgram.find(params[:id])

    respond_to do |format|
      if @radio_program.update_attributes(params[:radio_program])
        format.html { redirect_to(@radio_program, :notice => 'Radio program was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @radio_program.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /radio_programs/1
  # DELETE /radio_programs/1.xml
  def destroy
    @radio_program = RadioProgram.find(params[:id])
    @radio_program.destroy

    respond_to do |format|
      format.html { redirect_to(radio_programs_url) }
      format.xml  { head :ok }
    end
  end
end
