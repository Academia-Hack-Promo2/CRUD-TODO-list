class TodoControlController < ApplicationController
	# me muestra todos los elementos
	def all
		todo = Todo.all
		render json:todo
	end
	# crea un elemento(beta)
	def create
		todo_new = Todo.new = permit
		render json: todo_new.save
	end
	# muestra un elemento en especifico
	def all_id
		t = Todo.find(params[:id].to_i)
		render json: t
	end
	# Actualiza un todo
	def options
		t = Todo.find(params[:id].to_i)
		t.permit()
		render json: t
		
	end
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
