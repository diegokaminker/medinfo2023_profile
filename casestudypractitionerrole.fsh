Profile: CasestudyPractictionerRole
Parent: PractitionerRole
Id: CasestudyPractictionerRole
Description: "PractitionerRole profile for our Case Study"
* ^version = "0.1.0"
* ^status = #active
* identifier 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #closed
* identifier.system 1..1
* identifier.value 1..1
* identifier contains OfficialIdentifier 1..1
* identifier[OfficialIdentifier].use 1..1
* identifier[OfficialIdentifier].use = #official
* identifier[OfficialIdentifier].system = "http://kmpdu.org/member-stationing"
* active 1..1
* practitioner 1..1
* practitioner only Reference(CasestudyPractitioner)
* organization 1..1
* organization only Reference(CasestudyOrganization)
* specialty 1..1
* availableTime 1..1 MS