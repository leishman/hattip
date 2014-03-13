# Seed URL's

urls = [
        "http://youtu.be/hXlzci1rKNM",
        "http://youtu.be/puSkP3uym5k",
        "http://youtu.be/YPYGeELPpno",
        "http://youtu.be/ub26kLEfphw",
        "http://youtu.be/sUlfGOezE48",
        "http://youtu.be/wphB0fq4PlA",
        "https://www.youtube.com/watch?v=uXMuWi0dUBc",
        "https://www.youtube.com/watch?v=-Ow8Gut-4XY",
        "https://www.youtube.com/watch?v=wphB0fq4PlA",
        "https://www.youtube.com/watch?v=uue6oJ_jDns",
        "https://www.youtube.com/watch?v=JlfsXd62Qss",
        "https://www.youtube.com/watch?v=szeq1M0_7PQ",
        "https://www.youtube.com/watch?v=rLGpdkYEwrw",
        "http://www.youtube.com/watch?v=jEA9aG0UNVA"
      ]

profile_image_urls = [
  "http://upload.wikimedia.org/wikipedia/commons/1/14/Street_performer,_Paris_December_30,_2007.jpg",
  "http://stuffiveseenonmybikeinneworleans.files.wordpress.com/2008/06/ladder-street-performer-1.jpg",
  "http://www.eclectablog.com/wp-content/uploads/2013/10/StreetPerformer.jpg",
  "http://upload.wikimedia.org/wikipedia/commons/3/3d/Street_performer,_Liverpool_-_DSC06888.JPG",
  "http://myephemerality.com/wp-content/uploads/2009/10/20070405-DSC6801_Street_Performers.jpg",
  "http://www.prlog.org/10237907-dk-is-street-performer-and-cowboy.jpg",
  "http://metrouk2.files.wordpress.com/2012/12/street-performer-poses-with-ipad-showing-time-of-121212-in-madrid-ay_99689642.jpg",
  "http://www.theroadtoanywhere.com/wp-content/uploads/2011/11/italy-street-performer-florence.jpg",
  "http://thumbs.dreamstime.com/z/supple-street-performer-aurillac-france-august-portrait-very-named-jyoti-as-part-aurillac-international-theater-35159453.jpg",
  "http://upload.wikimedia.org/wikipedia/commons/a/ae/A_Girl_Playing_Grip_(Street_Performer).jpg",
  "http://www.sfexaminer.com/imager/supervisors-decided-to-allow-public-health-department-to-cite-loud-street-p/b/original/2350237/deae/street_performer2.jpg",
  "http://gridskipper.com/assets/resources/2008/04/germanstreetperformer424.jpg",
  "http://www.richardalois.com/wp-content/uploads/2011/08/Street-Performer-London-Southbank.jpg",
  "http://shutterific.files.wordpress.com/2012/01/street-performer-2.jpg",
  "http://ackadia.com/gallery/var/albums/people/street-performer-statue-blackpool.JPG?m=1338835884",
  "http://upload.wikimedia.org/wikipedia/commons/e/e2/Street_Performer,_Sacr%C3%A9-C%C5%93ur,_Paris.JPG",
  "http://travelingcanucks.com/wp-content/uploads/2012/09/street-performer-germany.jpg",
  "http://beckyyk.files.wordpress.com/2012/11/meaghan_street_performer.jpg",
  "http://cambridge.com/wp-content/uploads/2013/06/street-performer-1-in-picture-Eric-Royer.jpg",
  "http://neworleanseasytravelguide.com/wp-content/uploads/2012/12/Street-Performer-1-800x1200.jpg",
  "http://genxtraordinary.files.wordpress.com/2011/04/street-performer.jpg",
  "http://traskavenue.files.wordpress.com/2012/07/street-performers.jpg",
  "http://4.bp.blogspot.com/-m49E3s4tzz0/TbV8aCBeHkI/AAAAAAAAAS8/Ompp4q4Pcao/s1600/IMG_2745.JPG",
  "http://lloydi.com/travel-writing/barcelona/images/somersault.jpg",
  "http://thumbs.dreamstime.com/z/street-performer-charlie-chaplin-17110218.jpg"
]

categories = ["vocal", "instrumental", "dance", "acrobatic", "comedy", "other"]


## Helper methods

def create_location(user)
 loc_params = {
   city: Faker::Address.city,
   state: Faker::Address.state,
   country: Faker::Address.country,
   zip_code: Faker::Address.zip
 }
 user.location = Location.create(loc_params)
 user.save
end

def create_profile(user, urls, profile_image_urls, categories)
   prof_params = {
    name: Faker::Name.name,
    twitter_handle: Faker::Lorem.word,
    verified: false,
    tagline: Faker::Lorem.sentence,
    story: Faker::Lorem.paragraph,
    highlight_video_url: urls.sample,
    profile_photo_url: profile_image_urls.sample,
    category: categories.sample
   }
   user.profile = Profile.create(prof_params)
   user.save
end

def create_posts(user, urls)
  5.times do
    post_params = {
      title: Faker::Lorem.words(5).join(' '),
      youtube_url: urls.sample,
      description: Faker::Lorem.sentence
    }
    user.posts.create(post_params)
  end
end

5.times do
  first_name = Faker::Name.first_name
  User.create(
    email: Faker::Internet.safe_email,
    password: "password",
    password_confirmation: "password",
    )
end

User.all.each do |user|
  create_location(user)
  create_profile(user, urls, profile_image_urls, categories)
  create_posts(user, urls)
end



    
    

