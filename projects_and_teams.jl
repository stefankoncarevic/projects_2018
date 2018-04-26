#!/usr/bin/env julia
###############################################################################

type Student
	name::String
	surname::String
	index::String
	email::String
	points::Int
end

type Team
	members::Vector{Student}
end

const URL = String
type Spec
	text::String
	resources::Vector{URL}
end

type Solution
	repo::URL
	# Short youtube presentation.
	youtube::URL
	# download.bit HW+SW
	# Could set URL to file in github master blob.
	release_bit::URL
	# Short project documentation.
	# Could set URL to file in github master blob.
	doc::URL
end

type Project
	name::String
	points::Int
	min_team_members::Int
	team::Team
	spec::Spec
	solution::Solution
	done::Bool
end


###############################################################################

projects = Project[
	Project(
		"NES",
		45,
		3,
		Team(
			Student[
				Student(
					"Mario",
					"Peric",
					"RA-14/2015",
					"pericmario96@gmail.com",
					0
				),
				Student(
					"Pavle",
					"Portic",
					"RA-97/2015",
					"pavle.portic@tilda.center",
					0
				),
				Student(
					"Kosta",
					"Svrdlan",
					"RA-6/2015",
					"svrdlankosta@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL(""),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Zelda 1",
		45,
		3,
		Team(
			Student[
				Student(
					"Milorad",
					"Markovic",
					"RA-162/2015",
					"mmiloradmiso@gmail.com",
					0
				),
				Student(
					"Vesna",
					"Isic",
					"RA-41/2015",
					"isic.vesna@gmail.com",
					0
				),
				Student(
					"Jelena",
					"Boroja",
					"RA-22/2015",
					"jelena.boroja1@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/CubeLord/LPRS2-Zelda.gitq",
# Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Boomberman",
		45,
		3,
		Team(
			Student[
				Student(
					"Nebojsa",
					"Kakuca",
					"RA-147/2015",
					"nebojsa96@live.com",
					0
				),
				Student(
					"Nemanja",
					"Lazic",
					"RA-104/2015",
					"nemanjanesh@gmail.com",
					0
				),
				Student(
					"Milica",
					"Ponos",
					"RA-118/2015",
					"miponos@hotmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Sensible Soccer",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Duck Hunt",
		45,
		4,
		Team(
			Student[
				Student(
					"Mladen",
					"Matić",
					"RA-44/2015",
					"maticmladen96@gmail.com",
					0
				),
				Student(
					"Mihailo",
					"Marković",
					"RA-191/2015",
					"mix996@gmail.com",
					0
				),
				Student(
					"Damjan",
					"Glamočić",
					"RA-65/2015",
					"damjan.glamocic75@gmail.com",
					0
				),
				Student(
					"Marko",
					"Milošević",
					"RA-46/2015",
					"markom26@yandex.ru",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Štoljpi za Duck Hunt",
		45,
		3,
		Team(
			Student[
				Student(
					"Nikola",
					"Malenčić",
					"RA-122/2015",
					"nmalencic@gmail.com",
					0
				),
				Student(
					"Dejan",
					"Bordjoški",
					"RA-053/2015",
					"bordjoski.dejan@gmail.com",
					0
				),
				Student(
					"Naci",
					"Cemo",
					"Treceg",
					"Uskoro",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/LPRS2/lab5"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Worms",
		45,
		4,
		Team(
			Student[
				Student(
					"Bojan",
					"Strbac",
					"RA-82/2015",
					"bokasina@gmail.com",
					0
				),
				Student(
					"Marko",
					"Milosavljevic",
					"RA-90/2015",
					"mmarko1996@gmail.com",
					0
				),
				Student(
					"Branislav",
					"Novak",
					"RA-221/2015",
					"banenovak.bn@gmail.com",
					0
				),
				Student(
					"Stevan",
					"Popov",
					"RA-207/2015",
					"steva.popov96@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"New Rally X",
		45,
		3,
		Team(
			Student[
				Student(
					"Aleksa",
					"Rodić",
					"RA-218/2015",
					"aleksa.rodic@uns.ac.rs",
					0
				),
				Student(
					"Danka",
					"Radovanović",
					"RA-206/2014",
					"danka.radovanovic95@gmail.com",
					0
				),
				Student(
					"Nemanja",
					"Raković",
					"RA-134/2014",
					"nemus95@yahoo.com",
					0
				),
				Student(
					"Sara",
					"Brančić",
					"RA-150/2014",
					"sara.brancic@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Risico",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"The World's Hardest Game",
		45,
		3,
		Team(
			Student[
				Student(
					"Aleksa",
					"Arsic",
					"RA-119/2015",
					"aleksa.arsic.ftn@gmail.com",
					0
				),
				Student(
					"Milan",
					"Musikic",
					"RA-252/2017",
					"milan.musikic@gmail.com",
					0
				),
				Student(
					"Ivan",
					"Mitrovic",
					"RA-39/2013",
					"ivanmitrovic94@yahoo.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/SuvakovSrdjan/LPRS2_Asteroids_game"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Tap That Cat with Colors",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/SuvakovSrdjan/LPRS2_Asteroids_game"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Pie with Rationals",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/SuvakovSrdjan/LPRS2_Asteroids_game"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Potapanje brodića",
		45,
		4,
		Team(
			Student[
				Student(
					"Aleksandar",
					"Lazovic",
					"RA-2/2015",
					"alazovic96@gmail.com",
					0
				),
				Student(
					"Aleksandar",
					"Martinovic",
					"RA-4/2015",
					"a.martinovic996@gmail.com",
					0
				),
				Student(
					"Aleksandar",
					"Tendjer",
					"RA-167/2015",
					"tendjer@protonmail.com",
					0
				),
				Student(
					"Uros",
					"Radujko",
					"RA-179/2015",
					"urosradujko@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/stevanStevic/I2C_on_E2LP"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"DMA",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/LPRS2/lab5"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Tenkići",
		45,
		3,
		Team(
			Student[
				Student(
					"Stefan",
					"Koncarevic",
					"RA-235/2013",
					"knajt94@gmail.com",
					0
				),
				Student(
					"Aleksandar",
					"Gruba",
					"RA-049/2015",
					"salegruba@yahoo.com",
					0
				),
				Student(
					"Milica",
					"Damjanovic",
					"RA-185/2015",
					"milicaeo96@gmail.com",
					0
				),
				Student(
					"Stefan",
					"Misic",
					"RA-251/2017",
					"stefan_2142@outlook.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/mixa6492/battle_city_fpga"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Super Mario",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Galaga",
		45,
		3,
		Team(
			Student[
				Student(
					"Ivana",
					"Tesevic",
					"RA-30/2015",
					"tesevicivana@gmail.com",
					0
				),
				Student(
					"Milica",
					"Okuka",
					"RA-18/2015",
					"mokuka.okuka5@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/Gvex95/Galaga"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Dig Dug",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/MiljanV/DigDugProject"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"麻将 – Mahjong",
		45,
		3,
		Team(
			Student[
				Student(
					"Isidora",
					"Isailovic",
					"RA-141/2015",
					"isidora.doo@gmail.com",
					0
				),
				Student(
					"Jovana",
					"Mihic",
					"RA-163/2015",
					"jovanamihic.29.10@gmail.com",
					0
				),
				Student(
					"Aleksandra",
					"Bojic",
					"RA-133/2015",
					"aboich96@gmail.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/banovicradenko/MahjongProjekatLPRS2"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Pacman",
		45,
		3,
		Team(
			Student[
				Student(
					"Predrag",
					"Radonjic",
					"RA-58/2015",
					"xxx@yyy",
					0
				),
				Student(
					"Vladimir",
					"Spasojevic",
					"RA-56/2015",
					"xxx@yyy",
					0
				),
				Student(
					"Janos",
					"Bagi",
					"RA-59/2015",
					"jany.bagi@gmail.com",
					0				
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/MaticMarko/PacmanProjekatLPRS2"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Trap Adventure",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Ice Climber",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Lode Runner",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/vukse95/super_mario"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Zagrađivanje",
		45,
		3,
		Team(
			Student[
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Name",
					"Lastname",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/SuvakovSrdjan/LPRS2_Asteroids_game"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Advance Tetris",
		45,
		3,
		Team(
			Student[
				Student(
					"Sandra",
					"Bugarin",
					"RA-39/2015",
					"sandra.bugarin3@gmail.com",
					0
				),
				Student(
					"Maja",
					"Bugarin",
					"RA-38/2015",
					"xxx@yyy",
					0
				),
				
				Student(
					"Ksenija",
					"Jovanovic",
					"RA-88/2015",
					"xxx@yyy",
					0
				),
				
				Student(
					"Aleksandra",
					"Jamina",
					"RA-55/2015",
					"xxx@yyy",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/Nevernik/dr_Mario_E2LP"),
				URL("https://github.com/boza94/pizeo_buzz"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"Tower Defence",
		45,
		4,
		Team(
			Student[
				Student(
					"Branislav",
					"Gamf",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Dusan",
					"Kenjic",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Nikola",
					"Cvetanovski",
					"RA-XXX/20YY",
					"xxx@yyy",
					0
				),
				Student(
					"Stefan",
					"Jovanovic",
					"RA-234/2013",
					"stefanj94@live.com",
					0
				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/suncicam/MinesweeperProjekatLPRS2"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	Project(
		"8-bit MIDI",
		45,
		3,
		Team(
			Student[
				Student(
					"Srdjan",
					"Usorac",
					"RA-60/2015",
					"susorac96@gmail.com",
					0
				),
				Student(
					"Igor",
					"Ilic",
					"RA-152/2015",
					"igorilic03@yahoo.com",
					0
				),
				Student(
					"Savo",
					"Dragovic",
					"RA-117/2015",
					"savo.dragovic1997@gmail.com",
 					0
 				),
			]
		),
		Spec(
			"""
			""",
			URL[
				URL("https://github.com/boza94/pizeo_buzz"),
				URL("https://github.com/rondor1/Buzzer-synthesizer"),
			]
		),
		Solution(
			"https://github.com/X/Y", # Git repo
			"", # Youtube
			"", # Bit file
			"" # Doc file
		),
		false
	),
	
]

additional = URL[
	# Making bit file.
	"https://www.youtube.com/watch?v=RBa6gx5Mx5c",
	# Presentations.
	# Fun.
]

###############################################################################

N_projects = length(projects)
@show N_projects

function no_of_students(project::Project)
	if project.team.members[1].name == "Name"
		return 0
	else
		return length(project.team.members)
	end
end
N_students = sum(map(no_of_students, projects))
@show N_students

function project_taken(project::Project)
	!any(map((member) -> member.name == "??", project.team.members))
end

if false
	for project in projects
		if !project.done && project_taken(project)
			println("Not done: ", project.name)
		end
	end
end

if false
	resources = Set{URL}()
	for project in projects
		for r in project.spec.resources
			push!(resources, r)
		end
	end
	
	for r in resources
		println("Resource: ", r)
	end
end

###############################################################################
