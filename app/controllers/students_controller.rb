class StudentsController < ApplicationController
  def return_key
    if params[:student_id].present?
      @student = Student.find(params[:student_id])
    end
  end

  def update
    @student = Student.find(params[:id])

    if @student.update_attributes(student_params)
      flash[:success] = "#{@student.name} successfully updated!"
      redirect_to root_url
    else
      flash.now[:failure] = "Uh oh, I couldn't update #{@student.first_name} :("
      render 'return_key'
    end
  end

  private
  def student_params
    params.require(:student).permit(:returned_key, :returned_card, :card_id)
  end
end
