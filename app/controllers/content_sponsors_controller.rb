class ContentSponsorsController < ApplicationController
  # GET /content_sponsors
  # GET /content_sponsors.json
  def index
    @content_sponsors = ContentSponsor.order('title')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_sponsors }
    end
  end

  # GET /content_sponsors/1
  # GET /content_sponsors/1.json
  def show
    @content_sponsor = ContentSponsor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_sponsor }
    end
  end

  # GET /content_sponsors/new
  # GET /content_sponsors/new.json
  def new
    @content_sponsor = ContentSponsor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_sponsor }
    end
  end

  # GET /content_sponsors/1/edit
  def edit
    @content_sponsor = ContentSponsor.find(params[:id])
  end

  # POST /content_sponsors
  # POST /content_sponsors.json
  def create
    @content_sponsor = ContentSponsor.new(params[:content_sponsor])

    respond_to do |format|
      if @content_sponsor.save
        format.html { redirect_to content_sponsors_path, notice: 'Content sponsor was successfully created.' }
        format.json { render json: @content_sponsor, status: :created, location: @content_sponsor }
      else
        format.html { render action: "new" }
        format.json { render json: @content_sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_sponsors/1
  # PUT /content_sponsors/1.json
  def update
    @content_sponsor = ContentSponsor.find(params[:id])

    respond_to do |format|
      if @content_sponsor.update_attributes(params[:content_sponsor])
        format.html { redirect_to content_sponsors_path, notice: 'Content sponsor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_sponsors/1
  # DELETE /content_sponsors/1.json
  def destroy
    @content_sponsor = ContentSponsor.find(params[:id])
    @content_sponsor.destroy

    respond_to do |format|
      format.html { redirect_to content_sponsors_url }
      format.json { head :no_content }
    end
  end
end
