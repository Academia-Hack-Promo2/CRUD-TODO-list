class TodoControlController < ApplicationController

	def all
		todo = Todo.all
		render json:todo
	end
	def crear
		todo_new = Todo.new
		render json: todo_new.save
		
	end

end
