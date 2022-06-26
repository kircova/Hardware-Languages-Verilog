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
static const char *ng0 = "D:/EE310Projects/lab_1/lab_1.v";
static int ng1[] = {1, 0};
static int ng2[] = {2, 0};
static int ng3[] = {5, 0};
static int ng4[] = {3, 0};
static int ng5[] = {6, 0};



static void Cont_26_0(char *t0)
{
    char t5[8];
    char t6[8];
    char t9[8];
    char t10[8];
    char t13[8];
    char t14[8];
    char t17[8];
    char t18[8];
    char t21[8];
    char t22[8];
    char t25[8];
    char t26[8];
    char t29[8];
    char t30[8];
    char t33[8];
    char t34[8];
    char t37[8];
    char t38[8];
    char t41[8];
    char t42[8];
    char t45[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t7;
    char *t8;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    char *t19;
    char *t20;
    char *t23;
    char *t24;
    char *t27;
    char *t28;
    char *t31;
    char *t32;
    char *t35;
    char *t36;
    char *t39;
    char *t40;
    char *t43;
    char *t44;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t5, 0, 8);
    xsi_vlog_unsigned_lshift(t5, 14, t4, 8, t2, 32);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 14, t3, 8, t5, 14);
    t7 = (t0 + 1368U);
    t8 = *((char **)t7);
    t7 = ((char*)((ng2)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_lshift(t9, 14, t8, 8, t7, 32);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 14, t6, 14, t9, 14);
    t11 = (t0 + 1368U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng1)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_lshift(t13, 14, t12, 8, t11, 32);
    memset(t14, 0, 8);
    xsi_vlog_unsigned_add(t14, 14, t10, 14, t13, 14);
    t15 = (t0 + 1528U);
    t16 = *((char **)t15);
    t15 = ((char*)((ng3)));
    memset(t17, 0, 8);
    xsi_vlog_unsigned_lshift(t17, 14, t16, 8, t15, 32);
    memset(t18, 0, 8);
    xsi_vlog_unsigned_add(t18, 14, t14, 14, t17, 14);
    t19 = (t0 + 1528U);
    t20 = *((char **)t19);
    t19 = ((char*)((ng4)));
    memset(t21, 0, 8);
    xsi_vlog_unsigned_lshift(t21, 14, t20, 8, t19, 32);
    memset(t22, 0, 8);
    xsi_vlog_unsigned_add(t22, 14, t18, 14, t21, 14);
    t23 = (t0 + 1528U);
    t24 = *((char **)t23);
    t23 = ((char*)((ng2)));
    memset(t25, 0, 8);
    xsi_vlog_unsigned_lshift(t25, 14, t24, 8, t23, 32);
    memset(t26, 0, 8);
    xsi_vlog_unsigned_add(t26, 14, t22, 14, t25, 14);
    t27 = (t0 + 1528U);
    t28 = *((char **)t27);
    t27 = ((char*)((ng1)));
    memset(t29, 0, 8);
    xsi_vlog_unsigned_lshift(t29, 14, t28, 8, t27, 32);
    memset(t30, 0, 8);
    xsi_vlog_unsigned_add(t30, 14, t26, 14, t29, 14);
    t31 = (t0 + 1688U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng2)));
    memset(t33, 0, 8);
    xsi_vlog_unsigned_lshift(t33, 14, t32, 8, t31, 32);
    memset(t34, 0, 8);
    xsi_vlog_unsigned_add(t34, 14, t30, 14, t33, 14);
    t35 = (t0 + 1688U);
    t36 = *((char **)t35);
    t35 = ((char*)((ng1)));
    memset(t37, 0, 8);
    xsi_vlog_unsigned_lshift(t37, 14, t36, 8, t35, 32);
    memset(t38, 0, 8);
    xsi_vlog_unsigned_add(t38, 14, t34, 14, t37, 14);
    t39 = (t0 + 1848U);
    t40 = *((char **)t39);
    t39 = ((char*)((ng1)));
    memset(t41, 0, 8);
    xsi_vlog_unsigned_lshift(t41, 14, t40, 8, t39, 32);
    memset(t42, 0, 8);
    xsi_vlog_unsigned_add(t42, 14, t38, 14, t41, 14);
    t43 = (t0 + 2008U);
    t44 = *((char **)t43);
    memset(t45, 0, 8);
    xsi_vlog_unsigned_add(t45, 14, t42, 14, t44, 8);
    t43 = (t0 + 4152);
    t46 = (t43 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memset(t49, 0, 8);
    t50 = 16383U;
    t51 = t50;
    t52 = (t45 + 4);
    t53 = *((unsigned int *)t45);
    t50 = (t50 & t53);
    t54 = *((unsigned int *)t52);
    t51 = (t51 & t54);
    t55 = (t49 + 4);
    t56 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t56 | t50);
    t57 = *((unsigned int *)t55);
    *((unsigned int *)t55) = (t57 | t51);
    xsi_driver_vfirst_trans(t43, 0, 13);
    t58 = (t0 + 4056);
    *((int *)t58) = 1;

LAB1:    return;
}

static void Cont_27_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_rshift(t4, 14, t3, 14, t2, 32);
    t5 = (t0 + 4216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 255U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 7);
    t18 = (t0 + 4072);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000003522901894_0036237261_init()
{
	static char *pe[] = {(void *)Cont_26_0,(void *)Cont_27_1};
	xsi_register_didat("work_m_00000000003522901894_0036237261", "isim/testbench2_isim_beh.exe.sim/work/m_00000000003522901894_0036237261.didat");
	xsi_register_executes(pe);
}
