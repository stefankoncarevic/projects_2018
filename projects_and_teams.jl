#!/usr/bin/env julia
###############################################################################

type Student
	name::AbstractString
	surname::AbstractString
	index::AbstractString
	email::AbstractString
	points::Int
end

type Team
	members::Vector{Student}
end

typealias URL AbstractString
type Spec
	text::AbstractString
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
	name::AbstractString
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
		"Boomberman",
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
		"Štoljpi za Duck Hunt",
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
		"Worms",
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
				URL("https://github.com/MarkoMajkic/LPRS2_Space_Invaders_FSL"),
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
				URL("https://github.com/MarkoMajkic/LPRS2_Space_Invaders_FSL"),
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
				URL("https://github.com/MarkoMajkic/LPRS2_Space_Invaders_FSL"),
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
		"8-bit MIDI",
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

for project in projects
	if !project.done && project_taken(project)
		println("Not done: ", project.name)
	end
end

###############################################################################
