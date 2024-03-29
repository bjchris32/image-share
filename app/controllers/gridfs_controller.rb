class GridfsController < ApplicationController
  def serve
    gridfs_path = "image/media/#{gridfs_params[:id]}/#{gridfs_params[:filename]}"
    begin
      gridfs_file = Mongoid::GridFS[gridfs_path]
      self.response_body = gridfs_file.data
      self.content_type = gridfs_file.content_type
    rescue
      self.status = :file_not_found
      self.content_type = 'text/plain'
      self.response_body = ''
    end
  end

  def gridfs_params
    params.permit(:id, :filename)
  end
end
