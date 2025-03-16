import numpy as np
import matplotlib.pyplot as plt
import random

# Definir parámetros de la señal
resolucion = 4095
ruiodo = int(0.05*resolucion)
amplitud_seno = resolucion/2  # El valor máximo para una señal de 8 bits sería 127 para tener una amplitud de 255
amplitud_diente = resolucion  # Ampliamos la amplitud del diente de sierra y la señal triangular

frecuencia = 1 # Frecuencia de las señales

duracion = 1/60 # Duración en segundos
muestras_por_segundo = 60*100  # Frecuencia de muestreo en Hz

# Generar valores de tiempo discreto
muestras = int(duracion * muestras_por_segundo)
t = np.arange(muestras) / muestras_por_segundo

# Convertir el tiempo a radianes
radianes = t * 2 * np.pi

# Generar señal senoidal discreta, señal de diente de sierra discreta y señal triangular discreta
seno_discreto = np.round(amplitud_seno * np.sin(2 * np.pi * frecuencia * t) + amplitud_seno).astype(int)
#diente_de_sierra_discreta = np.round(amplitud_diente * (t % (1 / frecuencia)) / (1 / frecuencia)).astype(int)  # Normalizamos el diente de sierra
triangular_discreta = np.round(np.abs((t * frecuencia - np.floor(t * frecuencia + 0.5))) * 2 * amplitud_diente).astype(int)

# Graficar señales con colores diferentes
plt.scatter(radianes, seno_discreto, label='Señal Senoidal Discreta', color='blue', s=10)
#plt.scatter(radianes, diente_de_sierra_discreta, label='Señal Diente de Sierra Discreta', color='red', s=10)
#plt.scatter(radianes, triangular_discreta, label='Señal Triangular Discreta', color='green', s=10)
plt.xlabel('Radianes')
plt.ylabel('Amplitud')
plt.title('Señales Senoidal, Diente de Sierra y Triangular Discretas (Valores de 8 bits)')
plt.legend()
plt.grid(True)
plt.show()

# Agregar ruido a las señales
for y in range(muestras):
    seno_discreto[y] = np.clip(seno_discreto[y] + random.randint(-ruiodo, ruiodo), 0, resolucion)
    #diente_de_sierra_discreta[y] = np.clip(diente_de_sierra_discreta[y] + random.randint(-25, 25), 0, resolucion)
    triangular_discreta[y] = np.clip(triangular_discreta[y] + random.randint(-ruiodo, ruiodo), 0, resolucion)

# Graficar señales con ruido
plt.scatter(radianes, seno_discreto, label='Señal Senoidal Discreta', color='blue', s=10)
#plt.scatter(radianes, diente_de_sierra_discreta, label='Señal Diente de Sierra Discreta', color='red', s=10)
#plt.scatter(radianes, triangular_discreta, label='Señal Triangular Discreta', color='green', s=10)
plt.xlabel('Radianes')
plt.ylabel('Amplitud')
plt.title('Señales Senoidal, Diente de Sierra y Triangular Discretas (Valores de 8 bits)')
plt.legend()
plt.grid(True)
plt.show()
