
component persistent="true" table = "datastarwars1" entityname = "starwars" output = "false"{

    property name="name" column="name" fieldtype="id" generator="increment";
    property name="height" ormtype="int";
    property name="mass" ormtype="int";
    property name="hair_color" ormtype="string";
    property name="skin_color" ormtype="string";
    property name="eye_color" ormtype="string";
    property name="birth_year" ormtype="string";
    property name="gender" ormtype="string";
    property name="homeworld" ormtype="string";
    
    function init() {
        this.setname(false);
		this.setheight(false);
		this.setmass(false);
		this.sethair_color(false);
		this.setskin_color(false);
		this.seteye_color(false);
        this.setbirth_year(false);
        this.seteye_color(false);
        this.setbirth_year(false);
        this.setgender(false);
        this.sethomeworld(false);
    }
    function clone(){
        objNew = EntityNew('starwars');
		objNew.setname(this.getname());
		objNew.setheight(this.getheight());
		objNew.setmass(this.getmass());
		objNew.sethair_color(this.gethair_color());
		objNew.setskin_color(this.getskin_color());
		objNew.seteye_color(this.geteye_color());
		objNew.setbirth_year(this.getbirth_year());
		objNew.setgender(this.getgender());
        objNew.sethomeworld(this.gethomeworld());


		return objNew;
    }
}