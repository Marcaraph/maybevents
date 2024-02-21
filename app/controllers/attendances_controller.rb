class AttendancesController < ApplicationController
    def index
        puts params
        @event = params[:event_id]
        @attendees = Attendance.where(event: @event)
    end

    def new

    end

    def create
        puts "CA CREEE LAAAAA"
        @event = Event.find(params[:event])
        Attendance.create(event: @event, user: current_user, stripe_customer: current_user.email)
    end

    def destroy
        
    end

end

