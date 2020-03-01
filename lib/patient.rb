class Patient

  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 

  def new_appointment(doctor, date)
    Appointment.new(date, doctor, self)
  end

  def appointments
    #@appointments
    Appointment.all.select { |appt| appt.patient == self }
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
    #appointments.map(&:doctor)
    end
end