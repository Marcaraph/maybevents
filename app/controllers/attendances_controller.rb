class AttendancesController < ApplicationController
    def index
        puts params
        @event = params[:event_id]
        @attendees = Attendance.where(event: @event)
    end

    def new
       puts "CA CREEE LAAddddddddjjjjjjjjjjjjjjjjjjjjdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddAAA"
       @event = Event.find(params[:event_id])
       attendance = Attendance.new(event: @event, user: current_user, stripe_customer: current_user.email)

       respond_to do |format|
       if attendance.save
            format.html { redirect_to "/events/#{params[:event_id]}", notice: "VOUS ETES INSCRIT YOUPI" }
            format.json { head :no_content }
        else
            format.html { redirect_to "/events/#{params[:event_id]}", notice: "Votre inscription a déjà été prise en compte." }
            format.json { head :no_content }
            end
        end
    end

    def create

    end

    def destroy
        
    end

end

