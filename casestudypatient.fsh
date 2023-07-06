// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Alias: $OfficialIdentifierURL = http://myproject.com/pat_identifier

Profile: CasestudyPatient
Parent: Patient
Id: CasestudyPatient
Description: "Patient profile for our Case Study"
* identifier 1..2
* gender 1..1
* name 1..1
* birthDate 1..1
* identifier.system 1..1
* identifier.value 1..1
* photo 0..0
* address 0..2 MS
* extension contains LocalEthnicity named LocalEthnicity 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #closed
* identifier contains OfficialIdentifier 1..1
* identifier[OfficialIdentifier].use = #official
* identifier[OfficialIdentifier].system = $OfficialIdentifierURL
* identifier contains UsualIdentifier 0..1
* identifier[UsualIdentifier].use = #usual

Extension:  LocalEthnicity
Id: LocalEthnicity
Title: "Local Ethnicity for Our Patients"
Description: "Local Ethnicity for Our Patients"
* value[x] only Coding
* valueCoding from LocalEthnicityVS (required)

ValueSet: LocalEthnicityVS
Id: LocalEthnicityVS
Title: "Codes for Ethnicity Validation"
Description:  "Codes for Ethnicity Validation"
* ^experimental = false
* include codes from system LocalEthnicityCS

CodeSystem: LocalEthnicityCS
Id: LocalEthnicityCS
Title: "Local Ethnicity CS"
Description:  "Local Ethnicity CS"
* ^caseSensitive = false
* ^experimental = false
* #00 "Not Informed"
* #01 "Puru"
* #02 "Tupi"
* #03 "Chono"
* #04 "Kayapo"
* #05 "Yamana"


Alias: $LocalEthnicityCS = http://example.org/CodeSystem/LocalEthnicityCS

Instance: PatientExample
InstanceOf: CasestudyPatient
Usage: #example
* gender = #male
* birthDate = "1988-02-03"
* address.city = "Bogota"
* address.country = "Colombia"
* address.line = "1 A Street"
* address.postalCode = "9999"
* name.family = "John"
* name.given = "Smith"
* identifier.use = #official
* identifier.system = "http://myproject.com/pat_identifier"
* identifier.value = "999999"
* extension.url = "http://example.org/StructureDefinition/LocalEthnicity"
* extension.valueCoding = $LocalEthnicityCS#01 "Puru"