class StudentsController < ApplicationController
	def new
		@student = Student.new
	end

	def create
		@student = Student.new(:firstname => params[:firstname], 
			:lastname => params[:lastname], :username => params[:username], :password => params[:password], 
			:confirm_password => params[:confirm_password])
		@student.save
		redirect_to students_path
	end

	def index
		@students = Student.all
	end
end
