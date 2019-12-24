<!---http://www.learncfinaweek.com/course/index/section/ORM/item/Intro_To_ORM/--->
<cfcomponent output = "false">
    <cfset this.datasource = "starwars">
    <cfset this.ormEnabled = true>
    <cfset this.ormSettings.logsql = true>
    <cfset this.invokeImplicitAccessor = true>
    <cffunction name="onApplicationStart" returnType="boolean" output="false"><!--- se ejecuta cuando empiza el programa y solo una vez--->
    
        <cfreturn true>
    </cffunction>

    <cffunction name="onRequestStart" returntype="boolean" output="false">
        <cfargument name="requestedPage" type="string" required="true" />

            <!--- check progsOk array for programs accessible when not logged in
                    if in array, return true
                    otherwise, redirect to Login
            --->


        <cfset this.progsOk = ["proyectosGitHubCF/starWars/rutesfails/fails.cfm",<!---rutas las cuales queremos que no acceda el usuario --->
                                "proyectosGitHubCF/starWars/models/index.cfm",<!---esto se hace para proteger estas url y que el usuario no acceda a ellas--->
                                "proyectosGitHubCF/starWars/components/select.json"]>

        <cfset var isProgOk = 0 />
        <cfloop array="#this.progsOk#" index="prog">
            <cfif FindNoCase("#prog#",requestedPage)>
                <cfset isProgOk = 1 />
                <cfbreak />
            </cfif>
        </cfloop>
        
       
        <cfif NOT isProgOk><!---si es diferente de cero va a entrar--->

            <cfset var newPage ="/proyectosGitHubCF/starWars/" />

            <cflocation url="#newPage#" addtoken="false" />
        <cfelse>
            <cfreturn true />
        </cfif>
            <!--- End: check directories for login access --->


    </cffunction>
</cfcomponent>