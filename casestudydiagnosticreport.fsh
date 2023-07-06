Profile: CasestudyDiagnosticReport
Parent: DiagnosticReport
Id: CasestudyDiagnosticReport
Description: "DiagnosticReport profile for our Case Study"
* ^version = "0.1.0"
* ^status = #active
* identifier 1..1
* category 1..1
* subject 1..1
* subject only Reference(CasestudyPatient)
* encounter 1..1
* encounter only Reference(CasestudyEncounter)
* performer 1..1
* performer only Reference(CasestudyPractitioner)
* result 1..1
* result only Reference(CasestudyObservation)