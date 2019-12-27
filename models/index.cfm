<!--- tags ---
<cfquery name="querySW" datasource="starwars" username="root" password="">
    INSERT INTO `datastarwars1`
        (
            `name`,
            `height`,
            `mass`,
            `hair_color`,
            `skin_color`, 
            `eye_color`,
            `birth_year`,
            `gender`,
            `homeworld`
        ) VALUES (
            "#FORM['name']#",
            "#FORM['height']#",
            "#FORM['mass']#",
            "#FORM['hair_color']#",
            "#FORM['skin_color']#",
            "#FORM['eye_color']#",
            "#FORM['birth_year']#",
            "#FORM['gender']#",
            "#FORM['homeworld']#"
        );
</cfquery>--->