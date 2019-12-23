<cfcomponent output = "false">
     <cffunction name="onApplicationStart" returnType="boolean" output="false">;<!--- se ejecuta cuando empiza el programa y solo una vez--->
    
        <cfreturn true>
    </cffunction>

    <cffunction name="onRequestStart" returntype="boolean" output="false">
        <cfargument name="requestedPage" type="string" required="true" />

            <!--- check progsOk array for programs accessible when not logged in
                    if in array, return true
                    otherwise, redirect to Login
            --->
        <cfset this.progsOk = ["starWarsAppli/rutesfails/fails.cfm",
                                "starWarsAppli/models/index.cfm",
                                "starWarsAppli/components/select.json"]>
        <cfset var isProgOk = 0 />
        <cfloop array="#this.progsOk#" index="prog">
            <cfif FindNoCase("#prog#",requestedPage)>
                <cfset isProgOk = 1 />
                <cfbreak />
            </cfif>
        </cfloop>
        
       
        <cfif NOT isProgOk><!---si es diferente de cero va a entrar--->
            <cfset var newPage ="/starWarsAppli/" />
            <cflocation url="#newPage#" addtoken="false" />
        <cfelse>
            <cfreturn true />
        </cfif>
            <!--- End: check directories for login access --->


    </cffunction>
</cfcomponent>