class SessionController < ApplicationController	


	def new
	end

	def create
		usuario = User.find_by(:email => params[:email])

		if usuario && usuario.authenticate(params[:password])		
			session[:user_id] = usuario.id
			redirect_to :users
		else
			redirect_to :index, notice: 'Usuário ou senha inválido'
		end
	end

	def destroy
		session.delete(:user_id) 
		@current_user = nil
		redirect_to :index

	end


	private 	
end
