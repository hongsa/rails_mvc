class EmailController < ApplicationController
  def email_form
  end

  def email_send
    email = params[:email]
    title = params[:title]
    content = params[:content]

    gmail = Gmail.connect("hsasung@gmail.com", "132456ghd")
    gmail.deliver do
      to email
      subject title
      text_part do
        body content
      end
    end


  end
end