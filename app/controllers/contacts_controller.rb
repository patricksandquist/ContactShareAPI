class ContactsController < ApplicationController
  def index
    # contacts that the user owns
    # render json: Contact.all
    all_contacts = User.find(params[:user_id]).contacts + User.find(params[:user_id]).given_contacts

    render json: all_contacts
  end

  def show
    render json: Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact
    else
      render(
        json: @contact.errors.full_messages,
        status: :unprocessable_entity
      )
    end
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update(contact_params)
      render json: @contact
    else
      render(
        json: @contact.errors.full_messages,
        status: :unprocessable_entity
      )
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    render json: contact
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email)
  end
end

#  id         :integer          not null, primary key
#  user_id    :integer
#  name       :string
#  email      :string
