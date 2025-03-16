import numpy as np
import random

resolucion = 4095
ruido = int(0.05*resolucion)
duracion = 1  # Duración en segundos
f_signals_max = 60 #hz
f_sampling = f_signals_max*10 #hz sampling
muestras = int(duracion * f_sampling) # Generar valores de tiempo discreto
t = np.arange(muestras) / f_sampling

def gen_seno(frecuencia):
    # Definir parámetros de la señal
    amplitud_seno = resolucion/2  # El valor máximo para una señal de 8 bits sería 127 para tener una amplitud de 255

    # Generar señal senoidal discreta, señal de diente de sierra discreta y señal triangular discreta
    seno_discreto = np.round(amplitud_seno * np.sin(2 * np.pi * frecuencia * t) + resolucion/2).astype(int)

    # Agregar ruido a las señales
    for y in range(muestras):
        seno_discreto[y] = np.clip(seno_discreto[y] + random.randint(-ruido, ruido), 0, resolucion)

    return t,seno_discreto

def gen_dientes(frecuencia):
    # Definir parámetros de la señal
    amplitud_diente = resolucion  # Ampliamos la amplitud del diente de sierra y la señal triangular

    # Generar señal senoidal discreta, señal de diente de sierra discreta y señal triangular discreta
    diente_de_sierra_discreta = np.round(amplitud_diente * (t % (1 / frecuencia)) / (1 / frecuencia)).astype(int)  # Normalizamos el diente de sierra

    # Agregar ruido a las señales
    for y in range(muestras):
        diente_de_sierra_discreta[y] = np.clip(diente_de_sierra_discreta[y] + random.randint(-ruido, ruido), 0, resolucion)

    return t,diente_de_sierra_discreta

def gen_triangular(frecuencia):
    amplitud_diente = resolucion  # Ampliamos la amplitud del diente de sierra y la señal triangular

    triangular_discreta = np.round(np.abs((t * frecuencia - np.floor(t * frecuencia + 0.5))) * 2 * amplitud_diente).astype(int)

    for y in range(muestras):
        triangular_discreta[y] = np.clip(triangular_discreta[y] + random.randint(-ruido, ruido), 0, resolucion)

    return t,triangular_discreta