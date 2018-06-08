

User.destroy_all

u1 = User.create username: "Anna", email: "anna@ga.com", password: "chicken", password_confirmation: "chicken", bio: "Most generous girl"
u2 = User.create username: "Bagi", email: "bagi@ga.com", password: "chicken", password_confirmation: "chicken", bio: "Happy always"
u3 = User.create username: "Linna", email: "linna@ga.com", password: "chicken", password_confirmation: "chicken", bio: "hard worker"

puts "Created #{ User.all.length } Users"

City.destroy_all
c1 = City.create name: 'Paris', image: 'https://www.telegraph.co.uk/content/dam/video_previews/v/2/v2exl2nje6lsczqgxklf2mh1qjkhmfu-xlarge.jpg', bio: 'Paris, Frances capital, is a major European city and a global center for art, fashion, gastronomy and culture. Its 19th-century cityscape is crisscrossed by wide boulevards and the River Seine. Beyond such landmarks as the Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, the city is known for its cafe culture and designer boutiques along the Rue du Faubourg Saint-Honoré.
'
c2 = City.create name: 'London', image: 'https://travel.home.sndimg.com/content/dam/images/travel/fullset/2015/05/28/big-ben-london-england.jpg.rend.hgtvcom.1280.960.suffix/1491582155388.jpeg', bio: 'London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times. At its centre stand the imposing Houses of Parliament, the iconic Big Ben clock tower and Westminster Abbey, site of British monarch coronations. Across the Thames River, the London Eye observation wheel provides panoramic views of the South Bank cultural complex, and the entire city.'
c3 = City.create name: 'New York', image: 'https://www.holidayguru.ie/wp-content/uploads/2018/01/new-york-city-cityscape-skyline-with-statue-of-liberty-shutterstock_339298199.jpg', bio: 'New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park. Broadway theater is staged in neon-lit Times Square.'
c4 = City.create name: 'Hanoi', image: 'https://hanoitourist.info/wp-content/uploads/2016/08/Hoan-Kiem-lake1.jpg', bio: 'Hanoi, the capital of Vietnam, is known for its centuries-old architecture and a rich culture with Southeast Asian, Chinese and French influences. At its heart is the chaotic Old Quarter, where the narrow streets are roughly arranged by trade. There are many little temples, including Bach Ma, honoring a legendary horse, plus Đồng Xuân Market, selling household goods and street food.'
c5 = City.create name: 'Sydney', image: 'https://dynaimage.cdn.cnn.com/cnn/q_auto,w_1024,c_fill,g_auto,h_576,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F170220102107-sydney-habour.jpg', bio: 'Sydney, capital of New South Wales and one of Australias largest cities, is best known for its harbourfront Sydney Opera House, with a distinctive sail-like design. Massive Darling Harbour and the smaller Circular Quay port are hubs of waterside life, with the arched Harbour Bridge and esteemed Royal Botanic Garden nearby. Sydney Tower’s outdoor platform, the Skywalk, offers 360-degree views of the city and suburbs.'
c6 = City.create name: 'Melbourne', image: 'https://res.cloudinary.com/redballoon/c_fill,f_auto/v1523942375/NEW%20Subcat%20Hero%20Images/things-to-do-in-melbourne.jpg', bio: 'Melbourne is the coastal capital of the southeastern Australian state of Victoria. At the citys centre is the modern Federation Square development, with plazas, bars, and restaurants by the Yarra River. In the Southbank area, the Melbourne Arts Precinct is the site of Arts Centre Melbourne – a performing arts complex – and the National Gallery of Victoria, with Australian and indigenous art.'
c7 = City.create name: 'Phuket', image: 'http://cdn-image.travelandleisure.com/sites/default/files/wbislands0715-phuket.jpg', bio: 'Phuket, a rainforested, mountainous island in the Andaman Sea, has some of Thailand’s most popular beaches, mostly situated along the clear waters of the western shore. The island is home to many high-end seaside resorts, spas and restaurants. Phuket City, the capital, has old shophouses and busy markets. Patong, the main resort town, has many nightclubs, bars and discos.'
c8 = City.create name: 'Lisbon', image: 'https://www.thetimes.co.uk/travel/s3/growthtravel-prod/uploads/2016/05/Lisbon-weekend-1500x800.jpg', bio: 'Lisbon is Portugals hilly, coastal capital city. From imposing São Jorge Castle, the view encompasses the old city’s pastel-colored buildings, Tagus Estuary and Ponte 25 de Abril suspension bridge. Nearby, the National Azulejo Museum displays 5 centuries of decorative ceramic tiles. Just outside Lisbon is a string of Atlantic beaches, from Cascais to Estoril.'
c9 = City.create name: 'Los Angeles', image: 'https://accuweather.brightspotcdn.com/dims4/default/4610650/2147483647/resize/590x/quality/90/?url=http%3A%2F%2Faccuweather-bsp.s3.amazonaws.com%2F8a%2Fb1%2Ff2c7c73d422fa7c5163f98b453a0%2Flos-angeles.jpg', bio: 'Los Angeles is a sprawling Southern California city and the center of the nation’s film and television industry. Near its iconic Hollywood sign, studios such as Paramount Pictures, Universal and Warner Brothers offer behind-the-scenes tours. On Hollywood Boulevard, TCL Chinese Theatre displays celebrities’ hand- and footprints, the Walk of Fame honors thousands of luminaries and vendors sell maps to stars’ homes.'
c10 = City.create name: 'Dubai', image: 'https://www.pakistankakhudahafiz.com/pkkhnew/wp-content/uploads/2016/02/Dubai_3050265k.jpg', bio: 'Dubai is a city and emirate in the United Arab Emirates known for luxury shopping, ultramodern architecture and a lively nightlife scene. Burj Khalifa, an 830m-tall tower, dominates the skyscraper-filled skyline. At its foot lies Dubai Fountain, with jets and lights choreographed to music. On artificial islands just offshore is Atlantis, The Palm, a resort with water and marine-animal parks.'



puts "Created #{City.all.length} cities."




Post.destroy_all

p1 = Post.create title: 'Trip to Sydney', image: 'https://exp.cdn-hotels.com/hotels/18000000/17340000/17337700/17337699/09558a73_z.jpg', city_id: 5 , user_id: 2, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas tortor non tincidunt tincidunt. Pellentesque vel luctus lacus. Phasellus euismod elementum dictum. Nam eget viverra nisi, sed sodales odio. Nunc malesuada ornare pharetra. Cras ac risus vel nisi pretium commodo sit amet et quam. Fusce at ornare ante, id vulputate urna. Etiam auctor turpis sed blandit viverra. Morbi lobortis dolor magna, vestibulum feugiat sem rutrum eu.

Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus bibendum in nulla nec sollicitudin. Mauris eleifend accumsan neque nec pellentesque. Duis laoreet bibendum ante. Praesent a congue diam. Praesent quis est ut augue blandit pretium fermentum in est. Donec non viverra ante, sed cursus tortor. Integer iaculis tincidunt metus at dictum. Nunc aliquam eu quam sit amet elementum. Ut a neque interdum, fermentum magna eu, gravida diam. Mauris eu euismod sem. Fusce fermentum, lorem quis scelerisque imperdiet, dolor ante convallis massa, sit amet blandit magna dolor sed metus. Donec quis aliquet velit. Duis efficitur diam et lorem bibendum bibendum. Sed in porttitor justo.

Phasellus a velit pellentesque, tristique eros ut, facilisis lacus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur pulvinar metus ac nunc viverra tincidunt. Nulla condimentum eleifend ipsum sed lobortis. Sed ullamcorper, orci euismod imperdiet viverra, dui tellus tristique nisi, id rhoncus lorem nulla sed sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec sit amet viverra elit. Quisque eu ipsum vitae nisl lacinia ultricies. Nam accumsan dui a feugiat efficitur. Aenean pharetra augue mi, vitae dictum tellus egestas ac. Phasellus rhoncus sagittis lectus id sodales. Cras ut lorem felis. Integer sed suscipit diam. Sed orci nisi, semper vitae turpis ac, aliquet suscipit ante. Mauris sed dictum felis. Etiam tincidunt mollis mi eget elementum.'

p2 = Post.create title: 'Why New York is the BEST city in the world', image: 'https://i.ytimg.com/vi/dzjQ-akB3BI/maxresdefault.jpg', city_id: 3, user_id: 1, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas tortor non tincidunt tincidunt. Pellentesque vel luctus lacus. Phasellus euismod elementum dictum. Nam eget viverra nisi, sed sodales odio. Nunc malesuada ornare pharetra. Cras ac risus vel nisi pretium commodo sit amet et quam. Fusce at ornare ante, id vulputate urna. Etiam auctor turpis sed blandit viverra. Morbi lobortis dolor magna, vestibulum feugiat sem rutrum eu.

Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus bibendum in nulla nec sollicitudin. Mauris eleifend accumsan neque nec pellentesque. Duis laoreet bibendum ante. Praesent a congue diam. Praesent quis est ut augue blandit pretium fermentum in est. Donec non viverra ante, sed cursus tortor. Integer iaculis tincidunt metus at dictum. Nunc aliquam eu quam sit amet elementum. Ut a neque interdum, fermentum magna eu, gravida diam. Mauris eu euismod sem. Fusce fermentum, lorem quis scelerisque imperdiet, dolor ante convallis massa, sit amet blandit magna dolor sed metus. Donec quis aliquet velit. Duis efficitur diam et lorem bibendum bibendum. Sed in porttitor justo.

Phasellus a velit pellentesque, tristique eros ut, facilisis lacus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur pulvinar metus ac nunc viverra tincidunt. Nulla condimentum eleifend ipsum sed lobortis. Sed ullamcorper, orci euismod imperdiet viverra, dui tellus tristique nisi, id rhoncus lorem nulla sed sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec sit amet viverra elit. Quisque eu ipsum vitae nisl lacinia ultricies. Nam accumsan dui a feugiat efficitur. Aenean pharetra augue mi, vitae dictum tellus egestas ac. Phasellus rhoncus sagittis lectus id sodales. Cras ut lorem felis. Integer sed suscipit diam. Sed orci nisi, semper vitae turpis ac, aliquet suscipit ante. Mauris sed dictum felis. Etiam tincidunt mollis mi eget elementum.'


p3 = Post.create title: 'Phuket is beautiful', image: 'https://images.trvl-media.com/hotels/1000000/70000/68800/68751/68751_232_z.jpg', city_id: 7, user_id: 1, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas tortor non tincidunt tincidunt. Pellentesque vel luctus lacus. Phasellus euismod elementum dictum. Nam eget viverra nisi, sed sodales odio. Nunc malesuada ornare pharetra. Cras ac risus vel nisi pretium commodo sit amet et quam. Fusce at ornare ante, id vulputate urna. Etiam auctor turpis sed blandit viverra. Morbi lobortis dolor magna, vestibulum feugiat sem rutrum eu.

Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus bibendum in nulla nec sollicitudin. Mauris eleifend accumsan neque nec pellentesque. Duis laoreet bibendum ante. Praesent a congue diam. Praesent quis est ut augue blandit pretium fermentum in est. Donec non viverra ante, sed cursus tortor. Integer iaculis tincidunt metus at dictum. Nunc aliquam eu quam sit amet elementum. Ut a neque interdum, fermentum magna eu, gravida diam. Mauris eu euismod sem. Fusce fermentum, lorem quis scelerisque imperdiet, dolor ante convallis massa, sit amet blandit magna dolor sed metus. Donec quis aliquet velit. Duis efficitur diam et lorem bibendum bibendum. Sed in porttitor justo.

Phasellus a velit pellentesque, tristique eros ut, facilisis lacus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur pulvinar metus ac nunc viverra tincidunt. Nulla condimentum eleifend ipsum sed lobortis. Sed ullamcorper, orci euismod imperdiet viverra, dui tellus tristique nisi, id rhoncus lorem nulla sed sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec sit amet viverra elit. Quisque eu ipsum vitae nisl lacinia ultricies. Nam accumsan dui a feugiat efficitur. Aenean pharetra augue mi, vitae dictum tellus egestas ac. Phasellus rhoncus sagittis lectus id sodales. Cras ut lorem felis. Integer sed suscipit diam. Sed orci nisi, semper vitae turpis ac, aliquet suscipit ante. Mauris sed dictum felis. Etiam tincidunt mollis mi eget elementum.'


p4 = Post.create title: 'Problem with traveling to Phuket', image: 'https://i.ytimg.com/vi/iXCW5t7asms/maxresdefault.jpg', city_id: 7, user_id: 3, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas tortor non tincidunt tincidunt. Pellentesque vel luctus lacus. Phasellus euismod elementum dictum. Nam eget viverra nisi, sed sodales odio. Nunc malesuada ornare pharetra. Cras ac risus vel nisi pretium commodo sit amet et quam. Fusce at ornare ante, id vulputate urna. Etiam auctor turpis sed blandit viverra. Morbi lobortis dolor magna, vestibulum feugiat sem rutrum eu.

Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus bibendum in nulla nec sollicitudin. Mauris eleifend accumsan neque nec pellentesque. Duis laoreet bibendum ante. Praesent a congue diam. Praesent quis est ut augue blandit pretium fermentum in est. Donec non viverra ante, sed cursus tortor. Integer iaculis tincidunt metus at dictum. Nunc aliquam eu quam sit amet elementum. Ut a neque interdum, fermentum magna eu, gravida diam. Mauris eu euismod sem. Fusce fermentum, lorem quis scelerisque imperdiet, dolor ante convallis massa, sit amet blandit magna dolor sed metus. Donec quis aliquet velit. Duis efficitur diam et lorem bibendum bibendum. Sed in porttitor justo.

Phasellus a velit pellentesque, tristique eros ut, facilisis lacus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur pulvinar metus ac nunc viverra tincidunt. Nulla condimentum eleifend ipsum sed lobortis. Sed ullamcorper, orci euismod imperdiet viverra, dui tellus tristique nisi, id rhoncus lorem nulla sed sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec sit amet viverra elit. Quisque eu ipsum vitae nisl lacinia ultricies. Nam accumsan dui a feugiat efficitur. Aenean pharetra augue mi, vitae dictum tellus egestas ac. Phasellus rhoncus sagittis lectus id sodales. Cras ut lorem felis. Integer sed suscipit diam. Sed orci nisi, semper vitae turpis ac, aliquet suscipit ante. Mauris sed dictum felis. Etiam tincidunt mollis mi eget elementum.'

p5 = Post.create title: 'Sydney is wonderful', image: 'https://images.trvl-media.com/hotels/1000000/10000/2300/2220/e706ad98_z.jpg', city_id: 5, user_id: 2, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas tortor non tincidunt tincidunt. Pellentesque vel luctus lacus. Phasellus euismod elementum dictum. Nam eget viverra nisi, sed sodales odio. Nunc malesuada ornare pharetra. Cras ac risus vel nisi pretium commodo sit amet et quam. Fusce at ornare ante, id vulputate urna. Etiam auctor turpis sed blandit viverra. Morbi lobortis dolor magna, vestibulum feugiat sem rutrum eu.

Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus bibendum in nulla nec sollicitudin. Mauris eleifend accumsan neque nec pellentesque. Duis laoreet bibendum ante. Praesent a congue diam. Praesent quis est ut augue blandit pretium fermentum in est. Donec non viverra ante, sed cursus tortor. Integer iaculis tincidunt metus at dictum. Nunc aliquam eu quam sit amet elementum. Ut a neque interdum, fermentum magna eu, gravida diam. Mauris eu euismod sem. Fusce fermentum, lorem quis scelerisque imperdiet, dolor ante convallis massa, sit amet blandit magna dolor sed metus. Donec quis aliquet velit. Duis efficitur diam et lorem bibendum bibendum. Sed in porttitor justo.

Phasellus a velit pellentesque, tristique eros ut, facilisis lacus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur pulvinar metus ac nunc viverra tincidunt. Nulla condimentum eleifend ipsum sed lobortis. Sed ullamcorper, orci euismod imperdiet viverra, dui tellus tristique nisi, id rhoncus lorem nulla sed sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec sit amet viverra elit. Quisque eu ipsum vitae nisl lacinia ultricies. Nam accumsan dui a feugiat efficitur. Aenean pharetra augue mi, vitae dictum tellus egestas ac. Phasellus rhoncus sagittis lectus id sodales. Cras ut lorem felis. Integer sed suscipit diam. Sed orci nisi, semper vitae turpis ac, aliquet suscipit ante. Mauris sed dictum felis. Etiam tincidunt mollis mi eget elementum.'

puts "Created #{Post.all.length} posts."
