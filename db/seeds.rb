

12.times do
  
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

speaker = Speaker.create(
              {first_name: first_name,
               last_name: last_name,
                email: Faker::Internet.free_email("#{first_name}.#{last_name}")}
                
    
                )

speaker.save

end

meeting = Meeting.create(
              {title: "BookClub",
                agenda: "Meeting to discuss weekly books read",
                time: "2:00 PM"}
                )

meeting.save