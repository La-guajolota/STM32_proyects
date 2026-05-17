#include "LCD.h"

/*
 * Definiciones de los pines al LCD 16x2
 */
#define RS_PORT RS_GPIO_Port
#define RS_PIN RS_Pin
//#define RW_PORT xxx			Mantenemos a ese pin en 0logico
//#define RW_PIN xxx 	Solo haremos operaciones de escritura
#define EN_PORT EN_GPIO_Port
#define EN_PIN EN_Pin
#define D4_PORT D4_GPIO_Port
#define D4_PIN D4_Pin
#define D5_PORT D5_GPIO_Port
#define D5_PIN D5_Pin
#define D6_PORT D6_GPIO_Port
#define D6_PIN D6_Pin
#define D7_PORT D7_GPIO_Port
#define D7_PIN D7_Pin

/***************************************
*           Variables
***************************************/

static const char LCD_CodeHex[16] = "0123456789ABCDEF";

/***************************************
*           Functions
***************************************/

/* Function prototypes */
static void LCD_WriteControl(unsigned char cByte);
static void LCD_WriteData(unsigned char dByte);
static void LCD_WriteControlNibble(unsigned char nibble);
static void LCD_WriteDataNibble(unsigned char nibble);

void LCD_Start(void) {    // Funcion de inicializacion del modulo de display (16x2 o 20x4)
    /* INIT CODE */
    HAL_Delay(80);                                                        /* Delay 40 ms */
    LCD_WriteControlNibble(LCD_DISPLAY_8_BIT_INIT);    /* Selects 8-bit mode */
    HAL_Delay(10);                                                         /* Delay 5 ms */
    LCD_WriteControlNibble(LCD_DISPLAY_8_BIT_INIT);    /* Selects 8-bit mode */
    HAL_Delay(30);                                                        /* Delay 15 ms */
    LCD_WriteControlNibble(LCD_DISPLAY_8_BIT_INIT);    /* Selects 8-bit mode */
    HAL_Delay(2);                                                         /* Delay 1 ms */
    LCD_WriteControlNibble(LCD_DISPLAY_4_BIT_INIT);    /* Selects 4-bit mode */
    HAL_Delay(10);                                                         /* Delay 5 ms */

    LCD_WriteControl(LCD_CURSOR_AUTO_INCR_ON);    /* Incr Cursor After Writes */
    LCD_WriteControl(LCD_DISPLAY_CURSOR_ON);      /* Turn Display, Cursor ON */
    LCD_WriteControl(LCD_DISPLAY_2_LINES_5x10);   /* 2 Lines by 5x10 Characters */
    LCD_WriteControl(LCD_DISPLAY_CURSOR_OFF);     /* Turn Display, Cursor OFF */

    LCD_WriteControl(LCD_CLEAR_DISPLAY);          /* Clear LCD Screen */
    LCD_WriteControl(LCD_DISPLAY_ON_CURSOR_OFF);  /* Turn Display ON, Cursor OFF */
    LCD_WriteControl(LCD_RESET_CURSOR_POSITION);  /* Set Cursor to 0,0 */
    HAL_Delay(10);
}

void LCD_ClearDisplay(void) {    // Funcion de limpieza total de la pantalla
    LCD_WriteControl(LCD_CLEAR_DISPLAY);
    HAL_Delay(1);
}

void LCD_Position(unsigned char row, unsigned char column) {    // Funcion de posicionamiento de cursor en pantalla
/*
 * row      -> Fila donde va a empezar a escribir       (0-3)
 * column   -> Columna donde va a empezar a escribir    (0-15)

 * LCD_Position(1,6);
 */
    row = (LCD_ROW_MASK & row);

    switch(row) {
        case 0:
            LCD_WriteControl(LCD_ROW_0_START + column);
            break;
        case 1:
            LCD_WriteControl(LCD_ROW_1_START + column);
            break;
        case 2:
            LCD_WriteControl(LCD_ROW_2_START + column);
            break;
        case 3:
            LCD_WriteControl(LCD_ROW_3_START + column);
            break;
        default:
            break;
    }
}

void LCD_PrintHex8(unsigned int hex8) {    // Funcion de escritura de numero hexadecimal de 8 bits - Funcion de conversion de numero decimal a hexadecimal de 8 bits
/*
 * hex8 -> Numero o variable a imprimir en formato hexadecimal
 *
 * LCD_PrintHex8(0xFE);
 * LCD_PrintHex8(254);
 * LCD_PrintHex8(x);
 */
    LCD_PutChar((char) LCD_CodeHex[hex8 >> LCD_NIBBLE_SHIFT]);
    LCD_PutChar((char) LCD_CodeHex[hex8 & LCD_NIBBLE_MASK]);
}

void LCD_PrintHex16(unsigned short hex16) {    // Funcion de escritura de numero hexadecimal de 16 bits - Funcion de conversion de numero decimal a hexadecimal de 16 bits
/*
* hex16 -> Numero o variable a imprimir en formato hexadecimal
*
* LCD_PrintHex16(0xFFFE);
* LCD_PrintHex16(65534);
* LCD_PrintHex16(x);
*/
    LCD_PrintHex8((unsigned char)(hex16 >> LCD_U16_UPPER_BYTE_SHIFT));
    LCD_PrintHex8((unsigned char)(hex16 & LCD_U16_LOWER_BYTE_SHIFT));
}

void LCD_PrintHex32(unsigned long hex32) {    // Funcion de escritura de numero hexadecimal hasta de 16 bits - Funcion de conversion de numero decimal a hexadecimal hasta de 16 bits
/*
* hex -> Numero o variable a imprimir en formato hexadecimal
*
* LCD_PrintHex32(0xFFFFABCD);
* LCD_PrintHex32(4294945741);
* LCD_PrintHex32(x);
*/
    unsigned char shift = LCD_32_BIT_SHIFT;

    while (shift != 0) {
        /* "shift" var is to be subtracted by 8 prior shifting. This implements
        * shifting by 24, 16, 8 and 0u.
        */
        shift -= LCD_8_BIT_SHIFT;

        /* Print 8 bits of uint32 hex number */
        LCD_PrintHex8((unsigned char) ((unsigned long) (hex32 >> shift)));
    }
}

void LCD_PrintNumber(unsigned long value) {    // Funcion de impresion de numero decimal de 32 bits
/*
 * value -> Numero entero a imprimirse

 * LCD_PrintNumber(5894);
 * LCD_PrintNumber(x);
 */
    unsigned char tmpDigit;
    char number[LCD_NUMBER_OF_REMAINDERS_U32 + 1];
    unsigned char digIndex = LCD_NUMBER_OF_REMAINDERS_U32;

    /* This API will output a decimal number as a string and that string will be
    * filled from end to start. Set Null termination character first.
    */
    number[digIndex] = (char) '\0';
    digIndex--;

    /* Load these in reverse order */
    while(value >= LCD_TEN)
    {
        /* Extract decimal digit, indexed by 'digIndex', from 'value' and
        * convert it to ASCII character.
        */
        tmpDigit = (unsigned char) (((unsigned char) (value % LCD_TEN)) + (unsigned char) LCD_ZERO_CHAR_ASCII);

        /* Temporary variable 'tmpDigit' is used to avoid Violation of MISRA rule
        * #10.3.
        */
        number[digIndex] = (char) tmpDigit;
        value /= LCD_TEN;
        digIndex--;
    }

    /* Extract last decimal digit 'digIndex', from the 'value' and convert it
    * to ASCII character.
    */
    tmpDigit = (unsigned char) (((unsigned char)(value % LCD_TEN)) + (unsigned char) LCD_ZERO_CHAR_ASCII);
    number[digIndex] = (char) tmpDigit;

    /* Print out number */
    LCD_PrintString(&number[digIndex]);
}

void LCD_PrintString(char const string[]) {    // Funcion de impresion en pantalla de cadena alfanumerica
/*
 * text -> Texto entre comillas a imprimir

 * LCD_PrintString("Hello, World!");
 */
    unsigned char indexU8 = 1;
    char current = *string;

    /* Until null is reached, print next character */
    while((char) '\0' != current)
    {
        LCD_WriteData((unsigned char)current);
        current = string[indexU8];
        indexU8++;
    }
}

void LCD_PutChar(char character) {    // Funcion de impresion de caracter simple
/*
 * character -> Caracter simple a imprimir

 * LCD_PutChar('h');
 * LCD_PutChar(0x68);
 */
    LCD_WriteData((unsigned char)character);
}


// **** FUNCIONES DE DISEÑO PROPIO EN CLASE ***//
/*

De la referecnia de : https://github.com/LaSalleBajio-FIT/design-mpu/blob/main/source/ejemplos/LCD/Texas_DevBoard.c

static void LCD_WriteControl(unsigned char cByte) {
    static unsigned char nibble;

    //delay_ms(10); // 10
    nibble = cByte >> LCD_NIBBLE_SHIFT;

    // Escribir nibble m�s significativo
    LCD_WriteControlNibble(nibble);
    nibble = cByte & LCD_NIBBLE_MASK;

    // Escribir nibble menos significativo
    LCD_WriteControlNibble(nibble);
    //delay_ms(5); // 5
}
static void LCD_WriteData(unsigned char dByte) {
    static unsigned char nibble;

    //delay_ms(10); // 10
    nibble = dByte >> LCD_NIBBLE_SHIFT;

    // Escribir nibble m�s significativo
    LCD_WriteDataNibble(nibble);
    nibble = dByte & LCD_NIBBLE_MASK;

    // Escribir nibble menos significativo
    LCD_WriteDataNibble(nibble);
    //delay_ms(5); // 5
}
static void LCD_WriteControlNibble(unsigned char nibble) {
    static unsigned char dPort = 0x00;

    dPort = (nibble << LCD_NIBBLE_SHIFT);
    dPort &= (~RS);

    P4OUT = (dPort | 0x03);
    P4OUT |= E;
    delay_ms(2);    // 2
    P4OUT &= (~E);
}
static void LCD_WriteDataNibble(unsigned char nibble) {
    static unsigned char dPort = 0x00;

    dPort = (nibble << LCD_NIBBLE_SHIFT);
    dPort |= RS;

    P4OUT = (dPort | 0x03);
    P4OUT |= E;
    delay_ms(2);    // 2
    P4OUT &= (~E);
}

*/


/*

                REGISTRO DE SALIDA AL LCD

    Las X son dont' care    RW--> 0 constante
    BIT7 BIT8 BIT7 BIT6 BIT5 BIT4 BIT3 BIT2 BIT1 BIT0
       X    X    X   RW   RS    E   D7   D6   D5   D4

*/
//Rutina para sacar la trama en paralelo
static void LCD_Write(unsigned char nible){

	HAL_GPIO_WritePin(RS_GPIO_Port, RS_PIN, ((nible>>5)&0x01));
	HAL_GPIO_WritePin(EN_GPIO_Port, EN_PIN, ((nible>>4)&0x01));
	HAL_GPIO_WritePin(D7_GPIO_Port, D7_Pin, ((nible>>3)&0x01));
	HAL_GPIO_WritePin(D6_GPIO_Port, D6_Pin, ((nible>>2)&0x01));
	HAL_GPIO_WritePin(D5_GPIO_Port, D5_Pin, ((nible>>1)&0x01));
	HAL_GPIO_WritePin(D4_GPIO_Port, D4_Pin, ((nible>>0)&0x01));

}

//Rutinas de escitura en los registros de instrucciones y de datos
static void LCD_WriteControl(unsigned char cByte) {
    // CYBYTE = 0xABCDEFGH
    static unsigned char nibble;

    //HAL_Delay(10); // 10
    nibble = cByte >> LCD_NIBBLE_SHIFT; // 0Xabcdefg << 4 --> nimble = 0X0000abcd

    // Escribir nibble m�s significativo
    LCD_WriteControlNibble(nibble);//ALGORITMO PARA ESCRIBIRLE AL LCD UN COMANDO
    nibble = cByte & LCD_NIBBLE_MASK; // 0Xabcdefg AND 0x0F  --> nimble = 0X0000efgh

    // Escribir nibble menos significativo
    LCD_WriteControlNibble(nibble);//ALGORITMO PARA ESCRIBIRLE AL LCD UN COMANDO
    //HAL_Delay(5); // 5

}

static void LCD_WriteData(unsigned char dByte) {
    // CYBYTE = 0xABCDEFGH
    static unsigned char nibble;

    //HAL_Delay(10); // 10
    nibble = dByte >> LCD_NIBBLE_SHIFT;// abcdefg << 4 --> nimble = 0000abcd

    // Escribir nibble m�s significativo
    LCD_WriteDataNibble(nibble);//ALGORITMO PARA ESCRIBIRLE AL LCD INFO
    nibble = dByte & LCD_NIBBLE_MASK; // abcdefg AND 0x0F  --> nimble = 0000efgh

    // Escribir nibble menos significativo
    LCD_WriteDataNibble(nibble);//ALGORITMO PARA ESCRIBIRLE AL LCD INFO
    //HAL_Delay(5); // 5

}

//Subrutinas de escitura en los registros de instrucciones y de datos
static void LCD_WriteControlNibble(unsigned char nibble) {//RS=0

    //PASO1
    nibble &= ~RS;
    LCD_Write(nibble);//RW es 0 constante

    //PASO2
    nibble |= E;
    LCD_Write(nibble);//E=1
    HAL_Delay(2);    // 2
    nibble &= (~E);
    LCD_Write(nibble);//E=0
}

static void LCD_WriteDataNibble(unsigned char nibble) {//RS=1

    //PASO1
    nibble |= RS;
    LCD_Write(nibble);//RW es 1 constante

    //PASO2
    nibble |= E;
    LCD_Write(nibble);//E=1
    HAL_Delay(2);    // 2
    nibble &= (~E);
    LCD_Write(nibble);//E=0
}


