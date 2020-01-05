<cfscript>
    WriteOutput("hello");
    datastarwars = entityNew("starwars");
    name = datastarwars.setname("#FORM['name']#");
	height = datastarwars.setheight("#FORM['height']#");
	mass = datastarwars.setmass("#FORM['mass']#");
	hairColor = datastarwars.sethair_color("#FORM['hair_color']#");
	skinColor = datastarwars.setskin_color("#FORM['skin_color']#");
	eyeColor = datastarwars.seteye_color("#FORM['eye_color']#");
    birthYear = datastarwars.setbirth_year("#FORM['birth_year']#");
    gender = datastarwars.setgender("#FORM['gender']#");
    homeWorld = datastarwars.sethomeworld("#FORM['homeworld']#");
    entitySave("#name#" );
    entitySave("#height#" );
    entitySave("#mass#" );
    entitySave("#hairColor#" );
    entitySave("#skinColor#" );
    entitySave("#eyeColor#" );
    entitySave("#birthYear#" );
    entitySave("#gender#" );
    entitySave("#homeWorld#" );
    //writeDump(datastarwars);


</cfscript>
