Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $SnomedCT = http://snomed.info/sct 

Instance: CasestudyQuestionnaire
InstanceOf: Questionnaire
Usage: #example
* url = "http://example.org/questionnaires/monkey_virus"
* identifier.use = #official
* identifier.system = "http://example.org/questionnaires"
* identifier.value = "999999"
* version = "0.1.0"
* title = "Traveller Questionnaire for FLMC Virus"
* status = #draft
* date = "2023-05-18T16:18:29+03:00"
* description = "Form for Travellers from Latin America"
* purpose = "Screening for Monkey Disease"
* effectivePeriod.start = "2023-05-18T00:00:00.000+00:00"
* effectivePeriod.end = "2023-08-30T00:00:00.000+00:00"
* item[0].linkId = "Q01"
* item[=].text = "Are you returning from Central America"
* item[=].type = #boolean
* item[=].required = true
* item[=].repeats = false
* item[=].initial.valueBoolean = false
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item.linkId = "Q01_helpText"
* item[=].item.text = "Any country in Central America south of mexico and north of colombia"
* item[=].item.type = #display
* item[+].linkId = "Q02"
* item[=].text = "Which Airline Service Did You Travel With?"
* item[=].type = #text
* item[=].required = false
* item[+].linkId = "Q03"
* item[=].text = "Have you experienced any of these symptoms?"
* item[=].type = #choice
* item[=].repeats = true
* item[=].answerOption[0].valueCoding = $SnomedCT#386661006 "Fever"
* item[=].answerOption[+].valueCoding = $SnomedCT#712831003 "Headache"
* item[=].answerOption[+].valueCoding = $SnomedCT#84229001 "Fatigue"
* item[=].answerOption[+].valueCoding = $SnomedCT#68962001 "Muscle aches"
* item[=].answerOption[+].valueCoding = $SnomedCT#73879007 "Nausea"
* item[=].answerOption[+].valueCoding = $SnomedCT#422400008 "Vomiting"
* item[=].answerOption[+].valueCoding = $SnomedCT#62315008  "Diarrhea"
* item[=].answerOption[+].valueCoding = $SnomedCT#725119006 "Skin Rash"
* item[+].linkId = "Q04"
* item[=].text = "Where will you be staying?"
* item[=].type = #text
* item[+].linkId = "Q05"
* item[=].text = "What is your phone number?"
* item[=].type = #string