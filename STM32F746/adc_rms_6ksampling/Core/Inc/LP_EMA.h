/*
    Credit goes for https://www.youtube.com/watch?v=1e_ZB8p5n6s
    From that resource this was based

    ESTO ES UN FILTRO PASA BAJAS DE EXPONENIAL MOVING AVERAGE
                Yn= a*Xn + (1-a)*Y(n-1)
*/

#ifndef INC_LP_EMA_H_
#define INC_LP_EMA_H_

typedef struct{

    float alpha; //Coeficiente de filtrado alfa
    float out; // Salida del filtro

}FILTRO_EMA;

void EMA_init(FILTRO_EMA *filt, float alpha); //Iniciamos el filtro con un valor de usuario en alppha
void EMA_setalpha(FILTRO_EMA *filt, float alpha); //Clampeamos alpha
float EMA_update(FILTRO_EMA *filt, float inp); //Aplicamos el filtro

#endif
