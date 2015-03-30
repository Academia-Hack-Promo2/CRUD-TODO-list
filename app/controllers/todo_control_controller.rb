class TodoControlController < ApplicationController
	# me muestra todos los elementos
	def all
		todo = Todo.all
		render json:todo
	end
	# crea un elemento(beta)
	def create
		t = Todo.new
		t.save
		render json: t
	end
	# muestra un elemento en especifico
	def all_id
		t = Todo.find(params[:id].to_i)
		render json: t
	end
	# Actualiza un elemento del todo(beta)
	def options
		t = Todo.find(params[:id].to_i)
		#t.permit()
		render json: t
		
	end
	# Elimina un elemento del todo
	def delete
		t = Todo.find(params[:id].to_i)
		t.delete()
		render json: t
	end


	private
	def permit
		params.require(:todo).permit(:text, :done)
	end
end
