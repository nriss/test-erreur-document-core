Invariant: FRCDAPerformerRequire
Description: "performer est obligatoire et son attribut nullFlavor interdit pour l’évènement documenté principal"
Severity: #error
Expression: "documentationOf.serviceEvent.performer.count() >= 1"
