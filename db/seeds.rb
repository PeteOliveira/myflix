# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Video(title: string, description: text, small_cover_url: string, large_cover_url: string)
Video.find_or_create_by(title: "Batman The Dark Knight Returns",
             description: "After training with his mentor, Batman begins his war on crime to free the crime-ridden Gotham City from corruption that the Scarecrow and the League of Shadows have cast upon it.",
             cover_image_url: "batman_tdk.jpg",
             large_cover_url: "batman_tdk-large.jpg",)

Video.find_or_create_by(title: "Europa Report",
             description: "An international crew of astronauts undertakes a privately funded mission to search for life on Jupiter's fourth largest moon.",
             cover_image_url: "europareport.jpg",
             large_cover_url: "europareport-large.jpg")

Video.find_or_create_by(title: "The Lord of the Rings: The Fellowship of the Ring",
             description: "A meek hobbit of The Shire and eight companions set out on a journey to Mount Doom to destroy the One Ring and the dark lord Sauron. ",
             cover_image_url: "lor_fotr.jpg",
             large_cover_url: "lor_fotr-large.jpg")

Video.find_or_create_by(title: "Resident Evil",
             description: "A special military unit fights a powerful, out-of-control supercomputer and hundreds of scientists who have mutated into flesh-eating creatures after a laboratory accident. ",
             cover_image_url: "re.jpg",
             large_cover_url: "re-large.jpg")

Video.find_or_create_by(title: "Resident Evil Afterlife",
             description: "While still out to destroy the evil Umbrella Corporation, Alice joins a group of survivors who want to relocate to the mysterious but supposedly unharmed safe haven known only as Arcadia. ",
             cover_image_url: "re_afterlife.jpg",
             large_cover_url: "re_afterlife-large.jpg")

Video.find_or_create_by(title: "The Lord of the Rings: The Return of the King",
             description: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring. ",
             cover_image_url: "lor_rotk.jpg",
             large_cover_url: "lor_rotk-large.jpg")

Video.find_or_create_by(title: "the road",
             description: "A post-apocalyptic tale of a man and his son trying to survive by any means possible. ",
             cover_image_url: "the_road.jpg",
             large_cover_url: "the_road-large.jpg")

Video.find_or_create_by(title: "The Lord of the Rings: The Two Towers",
             description: "While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron's new ally, Saruman, and his hordes of Isengard. ",
             cover_image_url: "lor_tt.jpg",
             large_cover_url: "lor_tt-large.jpg")

Video.find_or_create_by(title: "The Mighty Macs",
             description: "In the early 70s, Cathy Rush becomes the head basketball coach at a tiny, all-girls Catholic college. Though her team has no gym and no uniforms -- and the school itself is in danger of being sold -- Coach Rush looks to steer her girls to their first national championship. ",
             cover_image_url: "mightmacs.jpg",
             large_cover_url: "mightmacs-large.jpg")

Video.find_or_create_by(title: "See no Evil",
             description: "A group of delinquents are sent to clean the Blackwell Hotel. Little do they know reclusive psychopath Jacob Goodnight (Jacobs) has holed away in the rotting hotel. When one of the teens is captured, those who remain -- a group that includes the cop who put a bullet in Goodnight's head four years ago -- band together to survive against the brutal killer. ",
             cover_image_url: "seenoevil.jpg",
             large_cover_url: "seenoevil-large.jpg")

Video.find_or_create_by(title: "Finding Nemo",
             description: "After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.",
             cover_image_url: "nemo.jpg",
             large_cover_url: "nemo-large.jpg")

Video.find_or_create_by(title: "Flashpoint",
             description: "The missions and trials of a Toronto police tactical unit.",
             cover_image_url: "flashpoint.jpg",
             large_cover_url: "flashpoint-large.jpg")

Video.find_or_create_by(title: "Serenity",
             description: "The crew of the ship Serenity tries to evade an assassin sent to recapture one of their number who is telepathic. ",
             cover_image_url: "serenity.jpg",
             large_cover_url: "serenity-large.jpg")

Video.find_or_create_by(title: "Open Water 2: Adrift",
             description: "Amy, her husband James and their baby Sarah travel to Mexico to sail in the yacht of their reckless friend Dan with their common friends Zach and Lauren and celebrate the thirtieth birthday of Zach. They are introduced to Dan's girlfriend Michelle and they drink and recall moments of their past while navigating. Miles away from the shore, Michelle suggest to stop the yacht and swim in the calm water. Amy stays in the boat since she has a childhood trauma with ocean and Dan stays with her. Later, the irresponsible Dan pushes Amy overboard, falling with her in a prank. Once in the water, the group realizes that Dan forgot to put the embarkation ladder and the freeboard makes impossible to climb to the main deck the yacht. With the baby alone in the boat and stranded in the open sea, they panic and their desperation lead them to a tragic fight for survival. ",
             cover_image_url: "openwater2.jpg",
             large_cover_url: "openwater2-large.jpg")

Video.find_or_create_by(title: "skyline",
             description: "Jarrod and his pregnant girlfriend Elaine travel to Los Angeles to meet his old friend and successful entrepreneur Terry, and his wife Candice. Terry gives a party in his apartment for Jarrod and offers a job position to him in LA. Terry's assistant and lover Denise (Crystal Reed) and his friend Ray (Neil Hopkins) sleep on the couch in the living room, but in the dawn of the next morning, the group is awakened by mysterious beams of blue light. Ray stares at the light and is taken by the mysterious force. The group of friends try to escape from the alien invaders. ",
             cover_image_url: "skyline.jpg",
             large_cover_url: "skyline-large.jpg")

Video.find_or_create_by(title: "grabbers",
             description: "When an island off the coast of Ireland is invaded by bloodsucking aliens, the heroes discover that getting drunk is the only way to survive. ",
             cover_image_url: "grabbers.jpg",
             large_cover_url: "grabbers-large.jpg")

Video.find_or_create_by(title: "pans labyrinth",
             description: "In the fascist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world. ",
             cover_image_url: "panslabyrinth.jpg",
             large_cover_url: "panslabyrinth-large.jpg")

Video.find_or_create_by(title: "hellraiser",
             description: "An unfaithful wife encounters the zombie of her dead lover, who's being chased by demons after he escaped from their sado-masochistic Hell. ",
             cover_image_url: "hellraiser.jpg",
             large_cover_url: "hellraiser-large.jpg")

underworld = Video.find_or_create_by(title: "underworld",
             description: "Selene, a beautiful vampire warrior, is entrenched in a war between the vampire and werewolf races. Although she is aligned with the vampires, she falls in love with Michael, a werewolf who longs for the war to end. ",
             cover_image_url: "underworld.jpg",
             large_cover_url: "underworld-large.jpg")

Video.find_or_create_by(title: "Underworld Awakening",
             description: "When human forces discover the existence of the Vampire and Lycan clans, a war to eradicate both species commences. The vampire warrioress Selene leads the battle against humankind. ",
             cover_image_url: "underworld_awakening.jpg",
             large_cover_url: "underworld_awakening-large.jpg")

Video.find_or_create_by(title: "Resident Evil: Apocalypse",
             description: "Alice awakes in Raccoon City, only to find it has become infested with zombies and monsters. With the help of Jill Valentine and Carlos Olivera, Alice must find a way out of the city before it is destroyed by a nuclear missile. ",
             cover_image_url: "re_apocalypse.jpg",
             large_cover_url: "re_apocalypse-large.jpg")

Video.find_or_create_by(title: "underworld evolution",
             description: "Picking up directly from the previous film, vampire warrior Selena and the half werewolf Michael hunt for clues to reveal the history of their races and the war between them. ",
             cover_image_url: "underworld_evolution.jpg",
             large_cover_url: "underworld_evolution-large.jpg")

Video.find_or_create_by(title: "resident evil extinction",
             description: "Survivors of the Raccoon City catastrophe travel across the Nevada desert, hoping to make it to Alaska. Alice joins the caravan and their fight against the evil Umbrella Corp. ",
             cover_image_url: "re_extinction.jpg",
             large_cover_url: "re_extinction-large.jpg")

Video.find_or_create_by(title: "Underworld: Rise of the Lycans",
             description: "An origins story centered on the centuries-old feud between the race of aristocratic vampires and their onetime slaves, the Lycans. ",
             cover_image_url: "underworld_rol.jpg",
             large_cover_url: "underworld_rol-large.jpg")

Video.find_or_create_by(title: "Resident Evil: Retribution",
             description: "Alice fights alongside a resistance movement in the continuing battle against the Umbrella Corporation and the undead. ",
             cover_image_url: "re_retribution.jpg",
             large_cover_url: "re_retribution-large.jpg")

# Category(id: integer, name: string, created_at: datetime, updated_at: datetime)
Category.find_or_create_by(name: "Horror")
Category.find_or_create_by(name: "SciFi")
Category.find_or_create_by(name: "Comedy")
Category.find_or_create_by(name: "Drama")
Category.find_or_create_by(name: "Chick Flick")

# Assign videos to categories
Category.find_or_create_by(name: "Drama").videos << Video.find_by(title: "Batman The Dark Knight Returns")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "Europa Report")
Category.find_or_create_by(name: "Drama").videos << Video.find_by(title: "The Lord of the Rings: The Fellowship of the Ring")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "Resident Evil")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "Resident Evil Afterlife")
Category.find_or_create_by(name: "Drama").videos << Video.find_by(title: "The Lord of the Rings: The Return of the King")
Category.find_or_create_by(name: "Drama").videos << Video.find_by(title: "the road")
Category.find_or_create_by(name: "Chick Flick").videos << Video.find_by(title: "The Mighty Macs")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "See no Evil")
Category.find_or_create_by(name: "Comedy").videos << Video.find_by(title: "Finding Nemo")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "Flashpoint")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "Serenity")
Category.find_or_create_by(name: "Horror").videos << Video.find_by(title: "Open Water 2: Adrift")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "skyline")
Category.find_or_create_by(name: "Drama").videos << Video.find_by(title: "grabbers")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "pans labyrinth")
Category.find_or_create_by(name: "Horror").videos << Video.find_by(title: "hellraiser")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "underworld")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "Underworld Awakening")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "Resident Evil: Apocalypse")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "underworld evolution")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "resident evil extinction")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "Underworld: Rise of the Lycans")
Category.find_or_create_by(name: "SciFi").videos << Video.find_by(title: "Resident Evil: Retribution")
Category.find_or_create_by(name: "Drama").videos << Video.find_by(title: "The Lord of the Rings: The Two Towers")

alice = User.create(email: "alice@test.com", password: "pass4test", full_name: "Alice W Land")

Review.find_or_create_by(user: alice, video: underworld, rating: 3.5, content: "Amazing movie - so why did i rate it 3.5?"  )

Review.find_or_create_by(user: alice, video: underworld, rating: 3.5, content: "How is it going"  )
