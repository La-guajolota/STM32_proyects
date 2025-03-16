#ifndef INC_LCD_H_
#define INC_LCD_H_

#include "stm32f1xx.h"
#include "main.h"

/***************************************
*           API Constants
***************************************/

/* LCD & GLCD interface pin */
#define E                               0x10
#define RS                              0x20

/* LCD commands */
#define LCD_DISPLAY_8_BIT_INIT          0x03
#define LCD_DISPLAY_4_BIT_INIT          0x02
#define LCD_DISPLAY_CURSOR_OFF          0x08
#define LCD_CLEAR_DISPLAY               0x01
#define LCD_CURSOR_AUTO_INCR_ON         0x06
#define LCD_DISPLAY_CURSOR_ON           0x0E
#define LCD_DISPLAY_2_LINES_5x10        0x28
#define LCD_DISPLAY_ON_CURSOR_OFF       0x0C
#define LCD_RESET_CURSOR_POSITION       0x03
#define LCD_CURSOR_WINK                 0x0D
#define LCD_CURSOR_BLINK                0x0F
#define LCD_CURSOR_SH_LEFT              0x10
#define LCD_CURSOR_SH_RIGHT             0x14
#define LCD_DISPLAY_SCRL_LEFT           0x18
#define LCD_DISPLAY_SCRL_RIGHT          0x1E
#define LCD_CURSOR_HOME                 0x02
#define LCD_CURSOR_LEFT                 0x04
#define LCD_CURSOR_RIGHT                0x06

/* LCD conversion routines */
#define LCD_NUMBER_OF_REMAINDERS_U32    0x0A
#define LCD_TEN                         0x0A
#define LCD_8_BIT_SHIFT                 8
#define LCD_32_BIT_SHIFT                32
#define LCD_ZERO_CHAR_ASCII             0x30
#define LCD_LETTER_CHAR_ASCII           0x37

/* LCD nibble offset and mask */
#define LCD_NIBBLE_SHIFT                0x04
#define LCD_NIBBLE_MASK                 0x0F

/* LCD Module Address Constants */
#define LCD_ROW_0_START                 0x80
#define LCD_ROW_1_START                 0xC0
#define LCD_ROW_2_START                 0x94
#define LCD_ROW_3_START                 0xD4

/* LCD position control mask */
#define LCD_COLUMN_MASK                 0x0F
#define LCD_ROW_MASK                    0x03

/* Other definitions */
#define LCD_BYTE_UPPER_NIBBLE_SHIFT     0x04
#define LCD_BYTE_LOWER_NIBBLE_MASK      0x0F
#define LCD_U16_UPPER_BYTE_SHIFT        0x08
#define LCD_U16_LOWER_BYTE_SHIFT        0xFF
#define LCD_8_BIT_SHIFT                 8
#define LCD_32_BIT_SHIFT                32

///////////////////////////////////////////////
/* LCD (16x2 or 20x4) */
///////////////////////////////////////////////

void LCD_Start(void);//INICIALIZA LA LCD EN MODO DE 4bits
void LCD_ClearDisplay(void); //limpia la pantalla
void LCD_Position(unsigned char row, unsigned char column);//Te posiciona en la matriz el cursor
//Funciones para la escritura de info
void LCD_PrintHex8(unsigned int hex8);
void LCD_PrintHex16(unsigned short hex16);
void LCD_PrintHex32(unsigned long hex32);
void LCD_PrintNumber(unsigned long value);
void LCD_PrintString(char const string[]);
void LCD_PutChar(char character);

#endif /* INC_LCD_H_ */
