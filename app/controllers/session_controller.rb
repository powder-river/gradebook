class SessionController < ApplicationController


  def login
    if request.post?
      teacher = Teacher.find_by_email(params[:email])
        if teacher && teacher.authenticate(params[:password])
          session[:teacher_id] = teacher.id
          redirect_to teachers_path, notice: 'You have logged in!'
        else
          flash.now[:notice] = 'Login Failed'
        end
    #   elsif
    #     student = Student.find_by_email(params[:email])
    #     if student && student.authenticate(params[:password])
    #       session[:student_id] = student.id
    #       redirect_to students_path, notice: 'You have logged in!'
    #     # else
    #     # flash.now[:notice] = 'Login Failed'
    #     end
    #   elsif
    #     parent = Parent.find_by_email(params[:email])
    #     if parent && parent.authenticate(params[:password])
    #       session[:parent_id] = parent.id
    #     #   redirect_to parents_path, notice: 'You have logged in!'
    #     # else
    #     # flash.now[:notice] = 'Login Failed'
    #     end
    #   end
    end
  end

  def logout
    session[:teacher_id] = nil
    redirect_to root_path, notice: "You have logged out!"
  end
end
