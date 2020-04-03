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
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor = self
  end
end
  
 def patients
    appointments.map {|appointment| appointment.patient}
  end
end

