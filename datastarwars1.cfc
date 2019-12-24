component persistent="true" table="datastarwars1" {
    property name="id" column="artid" fieldtype="id" generator="increment";
    property name="name" column="name" ormtype="string";
    property name="height" ormtype="int";
    property name="mass" ormtype="int";
    property name="hair_color" ormtype="text";
    property name="skin_color" ormtype="text";
    property name="eye_color" ormtype="text";
    property name="birth_year" ormtype="text";
    property name="gender" ormtype="text";
    property name="homeworld" ormtype="text";

    function getName() {
        return uCase( variables.name );
    }
    
    

}