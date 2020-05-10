adaptadorvariants
=================

Adaptador a variant dialectal valenciana

## Mòdul Web2py

/Adaptador conté el mòdul d'adaptació per a web2py


## Tools

Conté les eines utilitzades per a l'adaptació mitjançant la línia de comandes.

* src2valencia.sed -- script sed amb totes les adaptacions
* adapta_recursivament.sh -- script bash per aplicar adaptacions recursivament en directoris -fa servir src2valencia.sed com a base-

## Programes

Conté utilitats per simplificar l'adaptació d'alguns programes utilitzant Dockerfiles.
### Virtualbox
Des de l'arrel del codi, cal executar `bash programes/virtualbox/virtualbox-valencia.sh` i apareixeran dos fitxers (`virtualbox_valencia.ts` i `qt_valencia.ts` dins la carpeta `programes/virtualbox`)