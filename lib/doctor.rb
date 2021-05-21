
class Doctor

attr_reader :name

@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end


	def self.all
		@@all
	end


	def appointments
		Appointment.all.select do | appointment |
			self == appointment.doctor
	  end
	end


	def new_appointment(date, patient)
		Appointment.new(date, patient, self)
	  end


	  def patients
		appointments.map do |patient|
			patient.appointment
		end
	  end


end
