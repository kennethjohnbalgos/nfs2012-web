class ContentPartnersController < ApplicationController
  # GET /content_partners
  # GET /content_partners.json
  def index
    @content_partners = ContentPartner.order('title')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_partners }
    end
  end

  # GET /content_partners/1
  # GET /content_partners/1.json
  def show
    @content_partner = ContentPartner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_partner }
    end
  end

  # GET /content_partners/new
  # GET /content_partners/new.json
  def new
    @content_partner = ContentPartner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_partner }
    end
  end

  # GET /content_partners/1/edit
  def edit
    @content_partner = ContentPartner.find(params[:id])
  end

  # POST /content_partners
  # POST /content_partners.json
  def create
    @content_partner = ContentPartner.new(params[:content_partner])

    respond_to do |format|
      if @content_partner.save
        format.html { redirect_to content_partners_path, notice: 'Content partner was successfully created.' }
        format.json { render json: @content_partner, status: :created, location: @content_partner }
      else
        format.html { render action: "new" }
        format.json { render json: @content_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_partners/1
  # PUT /content_partners/1.json
  def update
    @content_partner = ContentPartner.find(params[:id])

    respond_to do |format|
      if @content_partner.update_attributes(params[:content_partner])
        format.html { redirect_to content_partners_path, notice: 'Content partner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_partners/1
  # DELETE /content_partners/1.json
  def destroy
    @content_partner = ContentPartner.find(params[:id])
    @content_partner.destroy

    respond_to do |format|
      format.html { redirect_to content_partners_url }
      format.json { head :no_content }
    end
  end
end
