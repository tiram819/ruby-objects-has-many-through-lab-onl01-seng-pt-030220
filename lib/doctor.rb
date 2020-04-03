class Doctor
  @@all=[]

  def self.all
    @@all
  end

  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(patient,date)
  Appointment.new(date,patient,self)
 end
  
  def appointment
    Appointment.all.select
  end
  
  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end

