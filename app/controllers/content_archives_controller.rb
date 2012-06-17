class ContentArchivesController < ApplicationController
  # GET /content_archives
  # GET /content_archives.json
  def index
    @content_archives = ContentArchive.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_archives }
    end
  end

  # GET /content_archives/1
  # GET /content_archives/1.json
  def show
    @content_archive = ContentArchive.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_archive }
    end
  end

  # GET /content_archives/new
  # GET /content_archives/new.json
  def new
    @content_archive = ContentArchive.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_archive }
    end
  end

  # GET /content_archives/1/edit
  def edit
    @content_archive = ContentArchive.find(params[:id])
  end

  # POST /content_archives
  # POST /content_archives.json
  def create
    @content_archive = ContentArchive.new(params[:content_archive])

    respond_to do |format|
      if @content_archive.save
        format.html { redirect_to content_archives_path, notice: 'Content archive was successfully created.' }
        format.json { render json: @content_archive, status: :created, location: @content_archive }
      else
        format.html { render action: "new" }
        format.json { render json: @content_archive.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_archives/1
  # PUT /content_archives/1.json
  def update
    @content_archive = ContentArchive.find(params[:id])

    respond_to do |format|
      if @content_archive.update_attributes(params[:content_archive])
        format.html { redirect_to content_archives_path, notice: 'Content archive was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_archive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_archives/1
  # DELETE /content_archives/1.json
  def destroy
    @content_archive = ContentArchive.find(params[:id])
    @content_archive.destroy

    respond_to do |format|
      format.html { redirect_to content_archives_url }
      format.json { head :no_content }
    end
  end
end
