#include "vecteur_dynamique.h"
#include <stdlib.h>

vecteur allouer_vecteur(int taille)
{
    vecteur v = malloc(sizeof(struct donnees_vecteur));
    if (v == NULL)
    {
        return NULL;
    }
    else
    {
        v->donnees = (double *)malloc(sizeof(double) * taille);
        if(v->donnees == NULL){
            free(v);
        }
        else{
            v->taille = taille;
            v->capacite = taille;
        }
    }
    return v;
}

void liberer_vecteur(vecteur v)
{
    free(v->donnees);
    free(v);
}

int est_vecteur_invalide(vecteur v)
{
    int resultat = (v->taille == 0 || v->capacite == 0);
    return resultat;
}

double *acces_vecteur(vecteur v, int i)
{
    double *resultat;
    if(i<0){
        resultat = NULL;
    }
    else{
        if ((0<=i) || (i<=v->taille)){
            resultat = v->donnees + i;
        }
        else{
            
        }
    }
    return resultat;
}

int taille_vecteur(vecteur v)
{
    return v->taille;
}
