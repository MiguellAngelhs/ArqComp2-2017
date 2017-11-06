/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/MiguelAngel/Dropbox/2017/2017-1/ARQUITECTURA/PROCESADOR/WM-PROCESADOR4/UNIDADCONTROL.vhd";
extern char *IEEE_P_3620187407;



static void work_a_2178422333_1796462775_p_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    int t49;
    char *t50;
    int t52;
    char *t53;
    int t55;
    char *t56;
    int t58;
    char *t59;
    int t61;
    char *t62;
    int t64;
    char *t65;
    int t67;
    char *t68;
    int t70;
    char *t71;
    int t73;
    char *t74;
    int t76;
    char *t77;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4904U);
    t3 = (t0 + 4968);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t7 = (t0 + 1192U);
    t11 = *((char **)t7);
    t7 = (t0 + 4970);
    t13 = xsi_mem_cmp(t7, t11, 6U);
    if (t13 == 1)
        goto LAB6;

LAB29:    t14 = (t0 + 4976);
    t16 = xsi_mem_cmp(t14, t11, 6U);
    if (t16 == 1)
        goto LAB7;

LAB30:    t17 = (t0 + 4982);
    t19 = xsi_mem_cmp(t17, t11, 6U);
    if (t19 == 1)
        goto LAB8;

LAB31:    t20 = (t0 + 4988);
    t22 = xsi_mem_cmp(t20, t11, 6U);
    if (t22 == 1)
        goto LAB9;

LAB32:    t23 = (t0 + 4994);
    t25 = xsi_mem_cmp(t23, t11, 6U);
    if (t25 == 1)
        goto LAB10;

LAB33:    t26 = (t0 + 5000);
    t28 = xsi_mem_cmp(t26, t11, 6U);
    if (t28 == 1)
        goto LAB11;

LAB34:    t29 = (t0 + 5006);
    t31 = xsi_mem_cmp(t29, t11, 6U);
    if (t31 == 1)
        goto LAB12;

LAB35:    t32 = (t0 + 5012);
    t34 = xsi_mem_cmp(t32, t11, 6U);
    if (t34 == 1)
        goto LAB13;

LAB36:    t35 = (t0 + 5018);
    t37 = xsi_mem_cmp(t35, t11, 6U);
    if (t37 == 1)
        goto LAB14;

LAB37:    t38 = (t0 + 5024);
    t40 = xsi_mem_cmp(t38, t11, 6U);
    if (t40 == 1)
        goto LAB15;

LAB38:    t41 = (t0 + 5030);
    t43 = xsi_mem_cmp(t41, t11, 6U);
    if (t43 == 1)
        goto LAB16;

LAB39:    t44 = (t0 + 5036);
    t46 = xsi_mem_cmp(t44, t11, 6U);
    if (t46 == 1)
        goto LAB17;

LAB40:    t47 = (t0 + 5042);
    t49 = xsi_mem_cmp(t47, t11, 6U);
    if (t49 == 1)
        goto LAB18;

LAB41:    t50 = (t0 + 5048);
    t52 = xsi_mem_cmp(t50, t11, 6U);
    if (t52 == 1)
        goto LAB19;

LAB42:    t53 = (t0 + 5054);
    t55 = xsi_mem_cmp(t53, t11, 6U);
    if (t55 == 1)
        goto LAB20;

LAB43:    t56 = (t0 + 5060);
    t58 = xsi_mem_cmp(t56, t11, 6U);
    if (t58 == 1)
        goto LAB21;

LAB44:    t59 = (t0 + 5066);
    t61 = xsi_mem_cmp(t59, t11, 6U);
    if (t61 == 1)
        goto LAB22;

LAB45:    t62 = (t0 + 5072);
    t64 = xsi_mem_cmp(t62, t11, 6U);
    if (t64 == 1)
        goto LAB23;

LAB46:    t65 = (t0 + 5078);
    t67 = xsi_mem_cmp(t65, t11, 6U);
    if (t67 == 1)
        goto LAB24;

LAB47:    t68 = (t0 + 5084);
    t70 = xsi_mem_cmp(t68, t11, 6U);
    if (t70 == 1)
        goto LAB25;

LAB48:    t71 = (t0 + 5090);
    t73 = xsi_mem_cmp(t71, t11, 6U);
    if (t73 == 1)
        goto LAB26;

LAB49:    t74 = (t0 + 5096);
    t76 = xsi_mem_cmp(t74, t11, 6U);
    if (t76 == 1)
        goto LAB27;

LAB50:
LAB28:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 5234);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(48, ng0);
    t77 = (t0 + 5102);
    t79 = (t0 + 2912);
    t80 = (t79 + 56U);
    t81 = *((char **)t80);
    t82 = (t81 + 56U);
    t83 = *((char **)t82);
    memcpy(t83, t77, 6U);
    xsi_driver_first_trans_fast_port(t79);
    goto LAB5;

LAB7:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 5108);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB8:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 5114);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB9:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 5120);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB10:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5126);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB11:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 5132);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB12:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 5138);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB13:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 5144);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB14:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 5150);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB15:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5156);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB16:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 5162);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB17:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 5168);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB18:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 5174);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB19:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 5180);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB20:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 5186);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB21:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 5192);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB22:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 5198);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB23:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 5204);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB24:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 5210);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB25:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 5216);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB26:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 5222);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB27:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 5228);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB51:;
}


extern void work_a_2178422333_1796462775_init()
{
	static char *pe[] = {(void *)work_a_2178422333_1796462775_p_0};
	xsi_register_didat("work_a_2178422333_1796462775", "isim/TB_PROCESADOR2_isim_beh.exe.sim/work/a_2178422333_1796462775.didat");
	xsi_register_executes(pe);
}
