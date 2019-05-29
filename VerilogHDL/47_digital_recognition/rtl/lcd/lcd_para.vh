// usage 
// add `include "lcd_para.vh" at the head of the file used this parameter
// uncomment used define list below 

   `define LCD_480_272
// `define LCD_800_480
// `define LCD_1024_600
// `define LCD_1280_800
// `define COLOR_565

//**************************************************************
//                define colors in RGB_565
//**************************************************************

//define colors in RGB_565
`ifdef COLOR_565
`define   BLACK     16'h0000          /*��ɫ    0  ,   0,   0*/
`define   NAVY      16'h000F          /*����ɫ  0  ,   0, 127*/
`define   DGREEN    16'h03E0          /*����ɫ  0  , 127,   0*/
`define   DCYAN     16'h03EF          /*����ɫ  0  , 127, 127*/
`define   MAROON    16'h7800          /*���ɫ  127,   0,   0*/
`define   PURPLE    16'h780F          /*��ɫ    127,   0, 127*/
`define   OLIVE     16'h7BE0          /*�����  127, 127,   0*/
`define   LGRAY     16'hC618          /*�Ұ�ɫ  192, 192, 192*/
`define   DGRAY     16'h7BEF          /*���ɫ  127, 127, 127*/
`define   BLUE      16'h001F          /*��ɫ    0  ,   0, 255*/
`define   GREEN     16'h07E0          /*��ɫ    0  , 255,   0*/
`define   CYAN      16'h07FF          /*��ɫ    0  , 255, 255*/
`define   RED       16'hF800          /*��ɫ    255,   0,   0*/
`define   MAGENTA   16'hF81F          /*Ʒ��    255,   0, 255*/
`define   YELLOW    16'hFFE0          /*��ɫ    255, 255,   0*/
`define   WHITE     16'hFFFF          /*��ɫ    255, 255, 255*/
`endif

//**************************************************************
//                define LCD RGB timing parameter
//**************************************************************

// 4.3' 480*272
`ifdef  LCD_480_272
parameter    H_SYNC   =  11'd41 ;    //��ͬ��
parameter    H_BACK   =  11'd2  ;    //����ʾ����
parameter    H_DISP   =  11'd480;    //����Ч����
parameter    H_FRONT  =  11'd2  ;    //����ʾǰ��
parameter    H_TOTAL  =  11'd525;    //��ɨ������

parameter    V_SYNC   =  11'd10 ;    //��ͬ��
parameter    V_BACK   =  11'd2  ;    //����ʾ����
parameter    V_DISP   =  11'd272;    //����Ч����
parameter    V_FRONT  =  11'd2  ;    //����ʾǰ��
parameter    V_TOTAL  =  11'd286;    //��ɨ������
`endif

// 7' 800*480
`ifdef  LCD_800_480
parameter  H_SYNC   =   11'd128 ;   //��ͬ��
parameter  H_BACK   =   11'd88  ;   //����ʾ����
parameter  H_DISP   =   11'd800 ;   //����Ч����
parameter  H_FRONT  =   11'd40  ;   //����ʾǰ��
parameter  H_TOTAL  =   11'd1056;   //��ɨ������

parameter  V_SYNC   =   11'd2   ;   //��ͬ��
parameter  V_BACK   =   11'd33  ;   //����ʾ����
parameter  V_DISP   =   11'd480 ;   //����Ч����
parameter  V_FRONT  =   11'd10  ;   //����ʾǰ��
parameter  V_TOTAL  =   11'd525 ;   //��ɨ������
`endif

// 7' 1024*600
`ifdef  LCD_1024_600
parameter  H_SYNC   =   11'd20  ;   //��ͬ��
parameter  H_BACK   =   11'd140 ;   //����ʾ����
parameter  H_DISP   =   11'd1024;   //����Ч����
parameter  H_FRONT  =   11'd160 ;   //����ʾǰ��
parameter  H_TOTAL  =   11'd1344;   //��ɨ������

parameter  V_SYNC   =   11'd3   ;   //��ͬ��
parameter  V_BACK   =   11'd20  ;   //����ʾ����
parameter  V_DISP   =   11'd600 ;   //����Ч����
parameter  V_FRONT  =   11'd12  ;   //����ʾǰ��
parameter  V_TOTAL  =   11'd635 ;   //��ɨ������
`endif

// 10.1' 1280*800
`ifdef  LCD_1280_800
parameter  H_SYNC   =   11'd10  ;   //��ͬ��
parameter  H_BACK   =   11'd80  ;   //����ʾ����
parameter  H_DISP   =   11'd1280;   //����Ч����
parameter  H_FRONT  =   11'd70  ;   //����ʾǰ��
parameter  H_TOTAL  =   11'd1440;   //��ɨ������

parameter  V_SYNC   =   11'd3   ;   //��ͬ��
parameter  V_BACK   =   11'd10  ;   //����ʾ����
parameter  V_DISP   =   11'd800 ;   //����Ч����
parameter  V_FRONT  =   11'd10  ;   //����ʾǰ��
parameter  V_TOTAL  =   11'd823 ;   //��ɨ������
`endif