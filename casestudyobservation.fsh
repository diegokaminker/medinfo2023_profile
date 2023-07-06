Profile: CasestudyObservation
Parent: Observation
Id: CasestudyObservation
Description: "Observation profile for our Case Study"
* ^version = "0.1.0"
* ^date = "2023-05-18T16:18:29+03:00"
* ^publisher = "Diagnostic Report Publisher"
* ^contact.name = "Diagnostic Report Publisher"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://example.org/example-publisher"
* identifier 1..1
* subject 1..1
* subject only Reference(CasestudyPatient)
* performer 1..1
