class ContentAboutsController < ApplicationController
  # GET /content_abouts
  # GET /content_abouts.json
  def index
    @content_abouts = ContentAbout.order('position')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_abouts }
    end
  end

  # GET /content_abouts/1
  # GET /content_abouts/1.json
  def show
    @content_about = ContentAbout.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_about }
    end
  end

  # GET /content_abouts/new
  # GET /content_abouts/new.json
  def new
    @content_about = ContentAbout.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_about }
    end
  end

  # GET /content_abouts/1/edit
  def edit
    @content_about = ContentAbout.find(params[:id])
  end

  # POST /content_abouts
  # POST /content_abouts.json
  def create
    @content_about = ContentAbout.new(params[:content_about])

    respond_to do |format|
      if @content_about.save
        format.html { redirect_to content_abouts_path, notice: 'Content about was successfully created.' }
        format.json { render json: @content_about, status: :created, location: @content_about }
      else
        format.html { render action: "new" }
        format.json { render json: @content_about.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_abouts/1
  # PUT /content_abouts/1.json
  def update
    @content_about = ContentAbout.find(params[:id])

    respond_to do |format|
      if @content_about.update_attributes(params[:content_about])
        format.html { redirect_to content_abouts_path, notice: 'Content about was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_about.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_abouts/1
  # DELETE /content_abouts/1.json
  def destroy
    @content_about = ContentAbout.find(params[:id])
    @content_about.destroy

    respond_to do |format|
      format.html { redirect_to content_abouts_url }
      format.json { head :no_content }
    end
  end
end
