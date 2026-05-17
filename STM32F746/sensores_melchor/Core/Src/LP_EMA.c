#include "LP_EMA.h"

void EMA_init(FILTRO_EMA *filt, float alpha){

    EMA_setalpha(filt,alpha);//Seteamos el valor de alpha
    filt->out = 0.0f; //Limmpiamos a salida del filtro

}

void EMA_setalpha(FILTRO_EMA *filt, float alpha){

    //Clampeams alpha de 0 a 1
    if(alpha > 1.0f){
        alpha = 1.0f;
    }
    if(alpha < 0.0f){
        alpha = 0.0f;
    }

    filt->alpha = alpha;//Seteamos el valor del coeficiente
}

float EMA_update(FILTRO_EMA *filt, float inp){
    /*
        ECUACION INDIFERENCIA DEL FILTRO EMA
        Yn= a*Xn + (1-a)*Y(n-1)
    */

   filt->out = filt->alpha*inp + (1.0f-filt->alpha)*filt->out;

   return filt->out;
}

