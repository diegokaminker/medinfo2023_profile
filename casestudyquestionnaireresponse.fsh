Alias: $MyPractictioner = http://example.org/StructureDefinition/MyPractictioner
Alias: $MyPatient = http://example.org/StructureDefinition/MyPatient

Profile: CasestudyQuestionnaireResponse
Parent: QuestionnaireResponse
Id: CasestudyQuestionnaireResponse
Description: "QuestionnaireResponse profile for our Case Study"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2023-05-18T16:18:29+03:00"
* identifier 1..1
* questionnaire 1..1
* questionnaire = "http://example.org/questionnaires/monkey_virus"
* author 1..1
* source 1..1
* source only Reference(CasestudyPatient)
