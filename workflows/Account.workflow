<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>JARVIS Update Longitude and Latitude</fullName>
        <actions>
            <name>JARVIS_Purge_Latitude</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>JARVIS_Purge_Longitude</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR(
				ISCHANGED( Address_Line_1__c ),
				ISCHANGED( Address_Line_2__c ),
				ISCHANGED( Barangay__c ),
				ISCHANGED( City__c ),
				ISCHANGED( Province__c ),
				ISCHANGED( Zip_Code__c )

)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
