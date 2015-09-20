class ResourcesController < ApplicationController
#  before_filter :authenticate_admin!, :only => [:edit, :update, :new, :index, :destroy, :show]
  load_and_authorize_resource :only => [:edit, :update, :new, :resources, :destroy]
  layout "no_side", :only => [:edit, :new, :create, :index, :resources]
  # GET /resources
  # GET /resources.json
  # def index
  #   @resources = Resource.all

  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.json { render json: @resources }
  #   end
  # end

  # def resources
  #   @resources = Resource.page(params[:page]).order('created_at DESC').limit(3)
    
  #   respond_to do |format|
  #     format.html # index.html.erb
  #     format.xml  { render :xml => @resources }
  #   end
  # end

    # GET /resources
  # GET /resources.json
  def resources
    @resources = Resource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resources }
    end
  end

  def index
    @resources = Resource.page(params[:page]).order('created_at DESC').limit(3)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resources }
    end
  end

  # GET /resources/1
  # GET /resources/1.json
  def show
    @resource = Resource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resource }
    end
  end

  # GET /resources/new
  # GET /resources/new.json
  def new
    @resource = Resource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resource }
    end
  end

  # GET /resources/1/edit
  def edit
    @resource = Resource.find(params[:id])
  end

  # POST /resources
  # POST /resources.json
  def create
    @resource = Resource.new(params[:resource])

    respond_to do |format|
      if @resource.save
        format.html { redirect_to @resource, notice: 'Resource was successfully created.' }
        format.json { render json: @resource, status: :created, location: @resource }
      else
        format.html { render action: "new" }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /resources/1
  # PUT /resources/1.json
  def update
    @resource = Resource.find(params[:id])

    respond_to do |format|
      if @resource.update_attributes(params[:resource])
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resources/1
  # DELETE /resources/1.json
  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy

    respond_to do |format|
      format.html { redirect_to resources_url }
      format.json { head :no_content }
    end
  end

  def download_file
      @resource = Resource.find(params[:id])
      send_file(@resource.document.path,
            
            :type => 'application/pdf',
            :disposition => 'inline',
            :url_based_filename => true)
  end
  
  def download_video
      @resource = Resource.find(params[:id])
      send_file(@resource.video.path,
            :disposition => 'attachment',
            :url_based_filename => false)
  end
  
  def download_audio
      @resource = Resource.find(params[:id])
      send_file(@resource.audio.path,
            :disposition => 'attachment',
            :url_based_filename => false)
  end
end
