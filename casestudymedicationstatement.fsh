Profile: CasestudyMedicationStatement
Parent: MedicationStatement
Id: CasestudyMedicationStatement
Description: "MedicationStatement profile for our Case Study"
* ^version = "0.1.0"
* ^status = #draft
* identifier 1..1
* medicationCodeableConcept 1..1
* medicationCodeableConcept only CodeableConcept
* context 1..1
* subject only Reference(CasestudyPatient)
* dateAsserted 1..1
* note ..1