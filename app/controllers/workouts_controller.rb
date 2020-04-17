class WorkoutsController < ApplicationController
    def index
        @workouts = Workout.all 
        render json: @workouts 
    end
    def show
        @workouts = Workout.find(params[:id])
        render json: @workouts
    end
    def create
        @workouts = Workout.create(
            typeOf: params[:workout],
            weight: params[:weight],
            set: params[:set],
            reps: params[:reps]
        )
        render json: @workouts
    end
    def update
        @workouts = Workout.find(params[:id])
        @workouts = Workout.update(
            typeOf: params[:workout],
            weight: params[:weight],
            set: params[:set],
            reps: params[:reps]
        )
        @workouts.save
        render json: @workouts
    end
    def delete
        @workouts = Workout.find(params[:id])
        @workouts = Workout.destroy
        render json: @workouts
    end
end
