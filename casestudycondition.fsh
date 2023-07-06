Profile: CasestudyCondition
Parent: Condition
Id: CasestudyCondition
Description: "Condition profile for our Case Study"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2023-05-18T16:18:29+03:00"
* category 1..1
* code 1..1
* subject only Reference(CasestudyPatient)
