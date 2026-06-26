Extension: FRNumberOfFramesExtension
Id: fr-number-of-frames-extension
Title: "FR Number of Frames Extension"
Description: "Extension permettant d’indiquer le nombre de cadres référencés dans une instance ImagingStudy, conforme aux exigences du modèle logique Xt-EHR."
* ^context[+].type = #element
* ^context[=].expression = "ImagingStudy"
* value[x] only integer