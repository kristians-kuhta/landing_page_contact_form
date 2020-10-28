# frozen_string_literal: true

class ContactFormEntriesController < ApplicationController
  def create
    ContactFormEntryMailer.with(
      full_name: params[:full_name],
      email: params[:email],
      phone: params[:phone],
      subject: params[:subject],
      message: params[:message]
    ).entry_received_email.deliver

    redirect_to root_path, flash: { success: 'Thank you for contacting us!' }
  end
end
