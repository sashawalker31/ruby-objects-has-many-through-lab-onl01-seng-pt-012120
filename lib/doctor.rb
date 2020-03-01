class Doctor
  attr_accessor :name, :appointments
 
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

 def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end
  
  def self.all 
    @@all 
  end

  def appointments
    #Appointment.all.select { |appt| appt.doctor == self }
    Appointment.all 
  end

  def patients
     appointments.map do |appointment| 
       appointment.patient
     end
  end
end