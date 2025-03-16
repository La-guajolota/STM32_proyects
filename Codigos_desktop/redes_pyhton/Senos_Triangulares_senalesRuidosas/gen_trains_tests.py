import csv
import os
import numpy as np
import gen_signals as sig

def sec_mill(segundos):
    return [s * 1000 for s in segundos]

# Ruta completa de la carpeta a crear
ruta_carpeta = "E:/Sexto_sem/MCU_avanzados/redes_pyhton/"
nombre_training = "train"
ruta_full = ruta_carpeta+nombre_training
os.mkdir(ruta_full) # Crear la carpeta 

#genera los trainings
cantidad_senos = 100
cantidad_dientes = 0
cantidad_triangulares = 100

f =  np.linspace(1, 50, 100)

for i in range(cantidad_senos): #GENERA SENOS
    t,seno_discreto = sig.gen_seno(f[i])

    # Convertir el tiempo a radianes
    #radianes = t * 2 * np.pi
    
    # Crear una lista de tuplas (tiempo, valor) para cada muestra
    data = [(tiempo, valor) for tiempo, valor in zip(sec_mill(t), seno_discreto)]
    # Escribir los datos en un archivo CSV

    label = 'seno.'
    id = str(i)+'.'
    cvs_name = label+id+'csv'

    # Unir la ruta de guardado con el nombre del archivo
    ruta_completa = os.path.join(ruta_full, cvs_name)

    with open(ruta_completa, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['timestamp', 'dac'])  # Escribir encabezados
        for row in data:
            writer.writerow(row)

for i in range(cantidad_dientes):#GENERA DIENTES
    t,die_discreto = sig.gen_dientes(f[i])
    
    # Convertir el tiempo a radianes
    #radianes = t * 2 * np.pi

    # Crear una lista de tuplas (tiempo, valor) para cada muestra
    data = [(tiempo, valor) for tiempo, valor in zip(sec_mill(t), die_discreto)]
    # Escribir los datos en un archivo CSV

    label = 'dientes.'
    id = str(i)+'.'
    cvs_name = label+id+'csv'

    ruta_completa = os.path.join(ruta_full, cvs_name)


    with open(ruta_completa, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['timestamp', 'dac'])  # Escribir encabezados
        for row in data:
            writer.writerow(row)

for i in range(cantidad_triangulares):#GENERA triangulares
    t,trian_discreto = sig.gen_triangular(f[i])
    
    # Convertir el tiempo a radianes
    #radianes = t * 2 * np.pi

    # Crear una lista de tuplas (tiempo, valor) para cada muestra
    data = [(tiempo, valor) for tiempo, valor in zip(sec_mill(t), trian_discreto)]
    # Escribir los datos en un archivo CSV

    label = 'triangular.'
    id = str(i)+'.'
    cvs_name = label+id+'csv'

    ruta_completa = os.path.join(ruta_full, cvs_name)

    with open(ruta_completa, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['timestamp', 'dac'])  # Escribir encabezados
        for row in data:
            writer.writerow(row)