<cfscript>
    WriteOutput("hello");
    datastarwars = entityNew("starwars");
    datastarwars.setname("michu");
    datastarwars.setheight("120");
    entitySave(datastarwars );
    writeDump(datastarwars);


</cfscript>
