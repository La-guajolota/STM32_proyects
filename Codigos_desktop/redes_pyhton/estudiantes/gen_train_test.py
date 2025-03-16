import csv
import os

#ruta del dataset dercargado
rt = 'E:/Sexto_sem/MCU_avanzados/redes_pyhton/estudiantes/Student_mat.csv'

# Ruta completa de la carpeta a crear
ruta_carpeta = "E:/Sexto_sem/MCU_avanzados/redes_pyhton/estudiantes/"
nombre_training = "train"
nombre_test = "test"

#os.mkdir(ruta_carpeta+nombre_training) # Crear las carpetas 
#os.mkdir(ruta_carpeta+nombre_test) # Crear las carpetas 

ids = [0,0] # cantidad de estudiantes malos y buenos
filas = []

with open(rt,'r') as file: #leemos data set
    lector_csv = csv.reader(file)
    
    for fila in lector_csv:
        filas.append(fila)
file.close()

for data in filas:
    
    #decidimos si es bueno o malo alumno
    cal =  int(data[32])

    if cal <= 10:
        label = "malo."
        ids[0] = ids[0] + 1
        id = str(ids[0]) + "."
        cvs_name = label+id+"csv"

    if cal > 10:
        label = "bueno."
        ids[1] = ids[1] + 1
        id = str(ids[1]) + "."
        cvs_name = label+id+"csv"

    ruta_completa = os.path.join(ruta_carpeta+nombre_training, cvs_name)
    
    with open(ruta_completa, 'w', newline='') as file: #creamos nuestro dataset
        writer = csv.writer(file)
        writer.writerow(["school","sex","age","address","famsize","Pstatus","Medu","Fedu","Mjob","Fjob","reason","guardian","traveltime","studytime","failures","schoolsup","famsup","paid","activities","nursery","higher","internet","romantic","famrel","freetime","goout","Dalc","Walc","health","absences","G1","G2","G3"]) # Escribir encabezados
    
        writer.writerow(data)
    file.close()