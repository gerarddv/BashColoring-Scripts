#include "matrice.h"
#include <stdlib.h>

matrice allouer_matrice(int l, int c)
{
    matrice m = {0, 0, NULL};
    int i=0, erreur = 0;
    m.donnees = (double **)malloc(sizeof(double) * l);
    if (m.donnees == NULL)
    {
        m.c = m.l = 0;
    }
    else
    {
        while (i < l && !erreur)
        {
            m.donnees[i] = (double *)malloc(c * sizeof(double));
            if (m.donnees[i] == NULL)
            {
                erreur = 1;
            }
            else
            {
                i++;
            }
        }
        if (erreur)
        {
            while (i)
            {
                free(m.donnees[i]);
                i--;
            }
            free(m.donnees);
            m.l = m.c = 0;
        }
        else
        {
            m.l = l;
            m.c = c;
        }
    }

    return m;
}

void liberer_matrice(matrice m)
{
    for (int i = 0; i < m.l; i++)
    {
        free(m.donnees[i]);
    }
    free(m.donnees);
    m.l = m.c = 0;
}

int est_matrice_invalide(matrice m)
{
    int resultat = (m.l == 0) || (m.c == 0);
    return resultat;
}

double *acces_matrice(matrice m, int i, int j)
{
    double *resultat = NULL;
    if (i < m.l && j < m.c)
    {
        return m.donnees[i] + j; // adresse colonne i + decalage j
    }
    return resultat;
}

int nb_lignes_matrice(matrice m)
{
    return m.l;
}

int nb_colonnes_matrice(matrice m)
{
    return m.c;
}
