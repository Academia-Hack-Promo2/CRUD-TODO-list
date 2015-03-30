class TodoControlController < ApplicationController

	def all
		todo = Todo.all
		render json:todo
	end
	def crea
		todo_new = Todo.new
		render json: todo_new.save
	end
	def all_id
		t = Todo.find(params[:id].to_i)
		render json: t
	end

end
