Profile: CasestudyEncounter
Parent: Encounter
Id: CasestudyEncounter
Description: "Encounter profile for our Case Study"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2023-05-18T16:18:29+03:00"
* identifier 1..1
* subject 1..1
* subject only Reference(CasestudyPatient)
