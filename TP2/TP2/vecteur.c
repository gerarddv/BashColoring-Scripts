#include "vecteur.h"
#include <stdlib.h>

vecteur allouer_vecteur(int taille) {
    vecteur v = { 0, NULL };
    v.taille = taille;
    v.donnees = malloc(taille*sizeof(double));
    return v;
}

void liberer_vecteur(vecteur v) {
    free(v.donnees);
    v.taille = 0;
}

int est_vecteur_invalide(vecteur v) {
    int resultat = 0;
    if (v.donnees == NULL){ return 1;}
    return resultat;
}

double *acces_vecteur(vecteur v, int i) {
    double *resultat = NULL;
    resultat = &v.donnees[i];         //adresse de l'élement i dans le vecteur
    return resultat;
}

int taille_vecteur(vecteur v) {
    return v.taille;
}
