class ArchivesController < ApplicationController
  def index
    @content_archives = ContentArchive.order('created_at DESC')
    @content_archive = params[:id].present? ? @content_archives.find(params[:id]) : @content_archives.where(clickable: true).first
  end
  
  def content
    @content_archive = ContentArchive.find(params[:id])
    renderJS
  end
end
