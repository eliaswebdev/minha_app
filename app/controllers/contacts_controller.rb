class ContactsController < ApplicationController
	before_action :set_contact, only: [:show, :edit, :update, :destroy]

	def index
		@contacts = Contact.all
	end
	

	def show
	end


	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		@contact.status = false
		
		if @contact.save
			redirect_to contacts_path, notice: 'A mensagem foi enviada com sucesso!'
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @contact.update(contact_params)
			redirect_to contacts_path, notice: 'A mensagem foi atualizada com sucesso!'
		else
			render :edit
		end
	end

	def destroy
		@contact.delete
		redirect_to contacts_path, notice: 'A mensagem foi excluída com sucesso!'
	end

	private
		def set_contact
			@contact = Contact.find(params[:id])
		end

		def contact_params
			params.require(:contact).permit(:name, :email, :mobile, :message)
		end
end