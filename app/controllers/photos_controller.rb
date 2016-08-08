class PhotosController < ApplicationController
	def index
		@photos = Photo.all.order(id: :desc)
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(
			title: params[:photo][:title],
			description: params[:photo][:description],
			file: params[:photo][:file],
			status: params[:photo][:status],
		)
		@photo.save
		redirect_to photos_path
	end

	def edit
		@photo = Photo.find(params[:id])
	end

	def update
		@photo = Photo.find(params[:id])
		@photo.update(
			title: params[:photo][:title],
			description: params[:photo][:description],
			file: params[:photo][:file],
			status: params[:photo][:status],
		)
		redirect_to photos_path
	end

	def destroy
		@photo = Photo.find(params[:id])
		@photo.destroy
		redirect_to photos_path
	end


end