Profile: CasestudyPractitioner
Parent: Practitioner
Id: CasestudyPractitioner
Description: "Practitioner profile for our Case Study"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-05-18T16:18:29+03:00"
* identifier 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #closed
* identifier.system 1..
* identifier.value 1..
* identifier contains OfficialIdentifier 1..1
* identifier[OfficialIdentifier].use 1..
* identifier[OfficialIdentifier].use = #official
* identifier[OfficialIdentifier].system = "http://kmpdu.org/members"
* name 1..1
* telecom 1..1
* address 1..1
* gender 1..1
* birthDate MS