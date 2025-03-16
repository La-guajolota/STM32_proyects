'''
7. Attribute Information:
   1. sepal length in cm
   2. sepal width in cm
   3. petal length in cm
   4. petal width in cm
   5. class: 
      -- Iris Setosa
      -- Iris Versicolour
      -- Iris Virginica
'''
import csv
import os

#ruta del dataset dercargado
rt = 'Iriz_plant\iris\iris.csv'

# Ruta completa de la carpeta a crear
ruta_carpeta = "E:/Sexto_sem/MCU_avanzados/redes_pyhton/Iriz_plant/iris/"
nombre_training = "train"
nombre_test = "test"

os.mkdir(ruta_carpeta+nombre_training) # Crear las carpetas 
os.mkdir(ruta_carpeta+nombre_test) # Crear las carpetas 

ids = [0,0,0] #Cuenta la cantidad de instanicas por clase
filas = []

with open(rt,'r') as file: #leemos data set
    lector_csv = csv.reader(file)
    
    for fila in lector_csv:
        filas.append(fila)
        print(fila)
file.close()

for data in filas:
    
    if 'Iris-setosa' in data:
        ids[0] = ids[0] + 1
        cvs_name = 'setosa.'+str(ids[0])+'.csv' 

    if 'Iris-versicolor' in data:
        ids[1] = ids[1] + 1
        cvs_name = 'versicolor.'+str(ids[1])+'.csv' 
    
    if 'Iris-virginica' in data:
        ids[2] = ids[2] + 1
        cvs_name = 'virginica.'+str(ids[2])+'.csv' 

    ruta_completa = os.path.join(ruta_carpeta+nombre_training, cvs_name)
    
    with open(ruta_completa, 'w', newline='') as file: #creamos nuestro dataset
        writer = csv.writer(file)
        writer.writerow(['sepal_length','sepal_width','petal_leght','petal_width'])  # Escribir encabezados
    
        writer.writerow(data[0:4])
    file.close()