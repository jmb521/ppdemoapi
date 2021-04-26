class TimeslotsController < ApplicationController
    before_action :set_timeslot, only: [:show, :update, :destroy]
    def index
        @timeslot = Timeslot.all
        render json: @timeslot, include: :user
    end

    # def show
    #     if @timeslot
    #         render json: @timeslot, include: :user
    #     end
    # end

    def update
        if @timeslot
            @timeslot.update(timeslot_params)
            render json: @timeslot
        else
            render json: {error: "Could not update timeslot"}
        end
    end

    def create
        @timeslot = Timeslot.new(timeslot_params)
        if @timeslot.save
            render json: @timeslot, include: :user
        else
            render json: {error: "Timeslot was not created"}
        end
    end

    # def destroy
    #     if @timeslot
    #         @timeslot.destroy
    #         render json: @timeslot
    #     end
    # end

    # def available
    #     @timeslots = Timeslot.available_timeslots
    #     render json: @timeslots
    # end

    private

    def timeslot_params
        params.require(:timeslot).permit(:activity, :id, :taken, :booked_time, :booked_email, :user_id)
    end


    def set_timeslot
        @timeslot = Timeslot.find_by(id: params[:id])
    end

end
