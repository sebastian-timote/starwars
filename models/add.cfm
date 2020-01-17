<cfscript>
    WriteOutput("hello");
    datastarwars = entityNew("starwars");
    
    name = datastarwars.setname("name");
	height = datastarwars.setheight("height");
	mass = datastarwars.setmass("mass");
    hairColor = datastarwars.sethair_color("hair_color");
	skinColor = datastarwars.setskin_color("skin_color");
	eyeColor = datastarwars.seteye_color("eye_color");
    birthYear = datastarwars.setbirth_year("birth_year");
    gender = datastarwars.setgender("gender");
    homeWorld = datastarwars.sethomeworld("homeworld");
    writeDump(datastarwars);
    abort;


</cfscript>
