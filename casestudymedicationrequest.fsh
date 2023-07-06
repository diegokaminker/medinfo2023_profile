Profile: CasestudyMedicationRequest
Parent: MedicationRequest
Id: CasestudyMedicationRequest
Description: "MedicationRequest profile for our Case Study"
* ^version = "0.1.0"
* ^status = #draft
* identifier 1..1
* priority 1..1
* medicationCodeableConcept 1..1
* medicationCodeableConcept only CodeableConcept
* medicationCodeableConcept.coding 1..1
* authoredOn 1..1
* dosageInstruction 1..1
