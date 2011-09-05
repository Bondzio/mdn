class PrayersController < ApplicationController
  # before_filter :authenticate_user!, :except => [:edit, :update]
  before_filter :authenticate_admin!, :only => [:edit, :update, :moderate, :index, :destroy, :moderate]
  
  #SMC - This specifies the layout to use: views/layouts/static.html.erb
  layout 'static'
  
  #SMC - This forces authentication when the actions in brackets are called.
  # before_filter :authenticate_admin!, :only => [:index, :update,]
  # before_filter :authenticate_user!, :only => [:show, :update]
 
  # GET /prayers
  # GET /prayers.xml
  def index
    @prayers = Prayer.order("created_at DESC")
    # @prayers = Prayer.page(params[:page]).order('created_at DESC')
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @prayers }
    end
  end

  # GET /prayers/1
  # GET /prayers/1.xml
  def show
    @prayer = Prayer.find(params[:id])

    respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @prayer }
      
    end
  end

  # GET /prayers/new
  # GET /prayers/new.xml
  def new
    @prayer = Prayer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prayer }
    end
  end

  # GET /prayers/1/edit
  def edit
    @prayer = Prayer.find(params[:id])
  end

  # POST /prayers
  # POST /prayers.xml
  def create
    @prayer = Prayer.new(params[:prayer])

    respond_to do |format|
      if @prayer.save
        format.html { redirect_to(@prayer, :notice => 'Prayer was submitted successfully. It will be posted to the web site shortly. We are praying with you!') }
        format.xml  { render :xml => @prayer, :status => :created, :location => @prayer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prayer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prayers/1
  # PUT /prayers/1.xml
  def update
    @prayer = Prayer.find(params[:id])

    respond_to do |format|
      if @prayer.update_attributes(params[:prayer])
        format.html { redirect_to(@prayer, :notice => 'Prayer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prayer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prayers/1
  # DELETE /prayers/1.xml
  def destroy
    @prayer = Prayer.find(params[:id])
    @prayer.destroy

    respond_to do |format|
      format.html { redirect_to(prayers_url) }
      format.xml  { head :ok }
    end
  end
  
  #This method provides a source for the prayer marquee located on the home page.
  def marquee
    @prayers = Prayer.where(:moderated => true).order("created_at ASC").limit(4)
    
    respond_to do |format|
      format.html # marquee.html.erb
      format.xml  { render :xml => @prayers }
    end
  end
  
  #SMC - This method displays a single article to be placed on the homepage of the web site.
  #Need to create logic to place a check box where if the value is set to true it will display this item on the homepage.
  
  def featured
    @prayers = Prayer.where(:moderated => true).order("created_at ASC").limit(1)
    
    respond_to do |format|
      format.html # featured.html.erb
      format.xml  { render :xml => @prayers }
    end
  end
end
