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
static const char *ng0 = "C:/XilinxRun/FPGA_HighDRADC_V1/chip_reset.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {2, 0};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {1U, 0U};



static void Always_36_0(char *t0)
{
    char t4[8];
    char t21[8];
    char t22[8];
    char t32[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;

LAB0:    t1 = (t0 + 4104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4920);
    *((int *)t2) = 1;
    t3 = (t0 + 4136);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t5 = (t0 + 1184U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(41, ng0);

LAB14:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2864);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 472);
    t12 = *((char **)t6);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_divide(t4, 32, t12, 32, t6, 32);
    t13 = ((char*)((ng4)));
    memset(t21, 0, 8);
    xsi_vlog_unsigned_minus(t21, 32, t4, 32, t13, 32);
    memset(t22, 0, 8);
    t19 = (t5 + 4);
    t20 = (t21 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t21);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t19);
    t17 = *((unsigned int *)t20);
    t18 = (t16 | t17);
    t23 = (~(t18));
    t24 = (t15 & t23);
    if (t24 != 0)
        goto LAB18;

LAB15:    if (t18 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t22) = 1;

LAB18:    t26 = (t22 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (~(t27));
    t29 = *((unsigned int *)t22);
    t30 = (t29 & t28);
    t31 = (t30 != 0);
    if (t31 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(46, ng0);

LAB27:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3024);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3024);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2864);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 7, t6, 32);
    t12 = (t0 + 2864);
    xsi_vlogvar_wait_assign_value(t12, t4, 0, 0, 7, 0LL);

LAB21:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(37, ng0);

LAB13:    xsi_set_current_line(38, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 2864);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 7, 0LL);
    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3024);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

LAB17:    t25 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(42, ng0);

LAB22:    xsi_set_current_line(43, ng0);
    t33 = (t0 + 3024);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memset(t32, 0, 8);
    t36 = (t35 + 4);
    t37 = *((unsigned int *)t36);
    t38 = (~(t37));
    t39 = *((unsigned int *)t35);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB26;

LAB24:    if (*((unsigned int *)t36) == 0)
        goto LAB23;

LAB25:    t42 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t42) = 1;

LAB26:    t43 = (t0 + 3024);
    xsi_vlogvar_wait_assign_value(t43, t32, 0, 0, 1, 0LL);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2864);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 7, 0LL);
    goto LAB21;

LAB23:    *((unsigned int *)t32) = 1;
    goto LAB26;

}

static void NetDecl_55_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char t21[8];
    char t22[8];
    char t26[8];
    char t51[8];
    char t52[8];
    char t55[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t53;
    char *t54;
    char *t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;

LAB0:    t1 = (t0 + 4352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1504U);
    t5 = *((char **)t2);
    t2 = (t0 + 1664U);
    t6 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t5 + 4);
    if (*((unsigned int *)t2) != 0)
        goto LAB5;

LAB4:    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t5) > *((unsigned int *)t6))
        goto LAB6;

LAB7:    memset(t4, 0, 8);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t7);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB9;

LAB10:    if (*((unsigned int *)t10) != 0)
        goto LAB11;

LAB12:    t17 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t17);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB13;

LAB14:    t47 = *((unsigned int *)t4);
    t48 = (~(t47));
    t49 = *((unsigned int *)t17);
    t50 = (t48 || t49);
    if (t50 > 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t17) > 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t4) > 0)
        goto LAB19;

LAB20:    memcpy(t3, t51, 8);

LAB21:    t69 = (t0 + 5032);
    t76 = (t69 + 56U);
    t77 = *((char **)t76);
    t78 = (t77 + 56U);
    t79 = *((char **)t78);
    memset(t79, 0, 8);
    t80 = 255U;
    t81 = t80;
    t82 = (t3 + 4);
    t83 = *((unsigned int *)t3);
    t80 = (t80 & t83);
    t84 = *((unsigned int *)t82);
    t81 = (t81 & t84);
    t85 = (t79 + 4);
    t86 = *((unsigned int *)t79);
    *((unsigned int *)t79) = (t86 | t80);
    t87 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t87 | t81);
    xsi_driver_vfirst_trans(t69, 0, 7U);
    t88 = (t0 + 4936);
    *((int *)t88) = 1;

LAB1:    return;
LAB5:    t9 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB7;

LAB6:    *((unsigned int *)t7) = 1;
    goto LAB7;

LAB9:    *((unsigned int *)t4) = 1;
    goto LAB12;

LAB11:    t16 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t16) = 1;
    goto LAB12;

LAB13:    t23 = (t0 + 1504U);
    t24 = *((char **)t23);
    t23 = (t0 + 1824U);
    t25 = *((char **)t23);
    memset(t26, 0, 8);
    t23 = (t24 + 4);
    if (*((unsigned int *)t23) != 0)
        goto LAB23;

LAB22:    t27 = (t25 + 4);
    if (*((unsigned int *)t27) != 0)
        goto LAB23;

LAB26:    if (*((unsigned int *)t24) > *((unsigned int *)t25))
        goto LAB24;

LAB25:    memset(t22, 0, 8);
    t29 = (t26 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (~(t30));
    t32 = *((unsigned int *)t26);
    t33 = (t32 & t31);
    t34 = (t33 & 1U);
    if (t34 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t29) != 0)
        goto LAB29;

LAB30:    t36 = (t22 + 4);
    t37 = *((unsigned int *)t22);
    t38 = *((unsigned int *)t36);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB31;

LAB32:    t42 = *((unsigned int *)t22);
    t43 = (~(t42));
    t44 = *((unsigned int *)t36);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t36) > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t22) > 0)
        goto LAB37;

LAB38:    memcpy(t21, t46, 8);

LAB39:    goto LAB14;

LAB15:    t40 = (t0 + 1664U);
    t53 = *((char **)t40);
    t40 = (t0 + 1824U);
    t54 = *((char **)t40);
    memset(t55, 0, 8);
    t40 = (t53 + 4);
    if (*((unsigned int *)t40) != 0)
        goto LAB41;

LAB40:    t56 = (t54 + 4);
    if (*((unsigned int *)t56) != 0)
        goto LAB41;

LAB44:    if (*((unsigned int *)t53) > *((unsigned int *)t54))
        goto LAB42;

LAB43:    memset(t52, 0, 8);
    t58 = (t55 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t55);
    t62 = (t61 & t60);
    t63 = (t62 & 1U);
    if (t63 != 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t58) != 0)
        goto LAB47;

LAB48:    t65 = (t52 + 4);
    t66 = *((unsigned int *)t52);
    t67 = *((unsigned int *)t65);
    t68 = (t66 || t67);
    if (t68 > 0)
        goto LAB49;

LAB50:    t71 = *((unsigned int *)t52);
    t72 = (~(t71));
    t73 = *((unsigned int *)t65);
    t74 = (t72 || t73);
    if (t74 > 0)
        goto LAB51;

LAB52:    if (*((unsigned int *)t65) > 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t52) > 0)
        goto LAB55;

LAB56:    memcpy(t51, t75, 8);

LAB57:    goto LAB16;

LAB17:    xsi_vlog_unsigned_bit_combine(t3, 8, t21, 8, t51, 8);
    goto LAB21;

LAB19:    memcpy(t3, t21, 8);
    goto LAB21;

LAB23:    t28 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB25;

LAB24:    *((unsigned int *)t26) = 1;
    goto LAB25;

LAB27:    *((unsigned int *)t22) = 1;
    goto LAB30;

LAB29:    t35 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB30;

LAB31:    t40 = (t0 + 1504U);
    t41 = *((char **)t40);
    goto LAB32;

LAB33:    t40 = (t0 + 1824U);
    t46 = *((char **)t40);
    goto LAB34;

LAB35:    xsi_vlog_unsigned_bit_combine(t21, 8, t41, 8, t46, 8);
    goto LAB39;

LAB37:    memcpy(t21, t41, 8);
    goto LAB39;

LAB41:    t57 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB43;

LAB42:    *((unsigned int *)t55) = 1;
    goto LAB43;

LAB45:    *((unsigned int *)t52) = 1;
    goto LAB48;

LAB47:    t64 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t64) = 1;
    goto LAB48;

LAB49:    t69 = (t0 + 1664U);
    t70 = *((char **)t69);
    goto LAB50;

LAB51:    t69 = (t0 + 1824U);
    t75 = *((char **)t69);
    goto LAB52;

LAB53:    xsi_vlog_unsigned_bit_combine(t51, 8, t70, 8, t75, 8);
    goto LAB57;

LAB55:    memcpy(t51, t70, 8);
    goto LAB57;

}

static void Always_56_2(char *t0)
{
    char t4[8];
    char t25[8];
    char t27[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t26;
    unsigned int t28;
    unsigned int t29;

LAB0:    t1 = (t0 + 4600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 4952);
    *((int *)t2) = 1;
    t3 = (t0 + 4632);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(56, ng0);

LAB5:    xsi_set_current_line(57, ng0);
    t5 = (t0 + 1184U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(63, ng0);

LAB14:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3184);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 1984U);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    if (*((unsigned int *)t6) != 0)
        goto LAB16;

LAB15:    t13 = (t12 + 4);
    if (*((unsigned int *)t13) != 0)
        goto LAB16;

LAB19:    if (*((unsigned int *)t5) > *((unsigned int *)t12))
        goto LAB18;

LAB17:    *((unsigned int *)t4) = 1;

LAB18:    t20 = (t4 + 4);
    t7 = *((unsigned int *)t20);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(70, ng0);

LAB78:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3184);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3184);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2384);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2384);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2544);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2544);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2704);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2704);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);

LAB22:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(57, ng0);

LAB13:    xsi_set_current_line(58, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 3184);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 8, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2384);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2544);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2704);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

LAB16:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB18;

LAB20:    xsi_set_current_line(64, ng0);

LAB23:    xsi_set_current_line(65, ng0);
    t21 = (t0 + 3184);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = ((char*)((ng4)));
    memset(t25, 0, 8);
    xsi_vlog_unsigned_add(t25, 32, t23, 8, t24, 32);
    t26 = (t0 + 3184);
    xsi_vlogvar_wait_assign_value(t26, t25, 0, 0, 8, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3184);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 1504U);
    t12 = *((char **)t6);
    memset(t27, 0, 8);
    t6 = (t5 + 4);
    if (*((unsigned int *)t6) != 0)
        goto LAB25;

LAB24:    t13 = (t12 + 4);
    if (*((unsigned int *)t13) != 0)
        goto LAB25;

LAB28:    if (*((unsigned int *)t5) < *((unsigned int *)t12))
        goto LAB26;

LAB27:    memset(t25, 0, 8);
    t20 = (t27 + 4);
    t7 = *((unsigned int *)t20);
    t8 = (~(t7));
    t9 = *((unsigned int *)t27);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB29;

LAB30:    if (*((unsigned int *)t20) != 0)
        goto LAB31;

LAB32:    t22 = (t25 + 4);
    t14 = *((unsigned int *)t25);
    t15 = *((unsigned int *)t22);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB33;

LAB34:    t17 = *((unsigned int *)t25);
    t18 = (~(t17));
    t28 = *((unsigned int *)t22);
    t29 = (t18 || t28);
    if (t29 > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t22) > 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t25) > 0)
        goto LAB39;

LAB40:    memcpy(t4, t24, 8);

LAB41:    t26 = (t0 + 2384);
    xsi_vlogvar_wait_assign_value(t26, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3184);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 1664U);
    t12 = *((char **)t6);
    memset(t27, 0, 8);
    t6 = (t5 + 4);
    if (*((unsigned int *)t6) != 0)
        goto LAB43;

LAB42:    t13 = (t12 + 4);
    if (*((unsigned int *)t13) != 0)
        goto LAB43;

LAB46:    if (*((unsigned int *)t5) < *((unsigned int *)t12))
        goto LAB44;

LAB45:    memset(t25, 0, 8);
    t20 = (t27 + 4);
    t7 = *((unsigned int *)t20);
    t8 = (~(t7));
    t9 = *((unsigned int *)t27);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t20) != 0)
        goto LAB49;

LAB50:    t22 = (t25 + 4);
    t14 = *((unsigned int *)t25);
    t15 = *((unsigned int *)t22);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB51;

LAB52:    t17 = *((unsigned int *)t25);
    t18 = (~(t17));
    t28 = *((unsigned int *)t22);
    t29 = (t18 || t28);
    if (t29 > 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t22) > 0)
        goto LAB55;

LAB56:    if (*((unsigned int *)t25) > 0)
        goto LAB57;

LAB58:    memcpy(t4, t24, 8);

LAB59:    t26 = (t0 + 2544);
    xsi_vlogvar_wait_assign_value(t26, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3184);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 1824U);
    t12 = *((char **)t6);
    memset(t27, 0, 8);
    t6 = (t5 + 4);
    if (*((unsigned int *)t6) != 0)
        goto LAB61;

LAB60:    t13 = (t12 + 4);
    if (*((unsigned int *)t13) != 0)
        goto LAB61;

LAB64:    if (*((unsigned int *)t5) < *((unsigned int *)t12))
        goto LAB62;

LAB63:    memset(t25, 0, 8);
    t20 = (t27 + 4);
    t7 = *((unsigned int *)t20);
    t8 = (~(t7));
    t9 = *((unsigned int *)t27);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t20) != 0)
        goto LAB67;

LAB68:    t22 = (t25 + 4);
    t14 = *((unsigned int *)t25);
    t15 = *((unsigned int *)t22);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB69;

LAB70:    t17 = *((unsigned int *)t25);
    t18 = (~(t17));
    t28 = *((unsigned int *)t22);
    t29 = (t18 || t28);
    if (t29 > 0)
        goto LAB71;

LAB72:    if (*((unsigned int *)t22) > 0)
        goto LAB73;

LAB74:    if (*((unsigned int *)t25) > 0)
        goto LAB75;

LAB76:    memcpy(t4, t24, 8);

LAB77:    t26 = (t0 + 2704);
    xsi_vlogvar_wait_assign_value(t26, t4, 0, 0, 1, 0LL);
    goto LAB22;

LAB25:    t19 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB27;

LAB26:    *((unsigned int *)t27) = 1;
    goto LAB27;

LAB29:    *((unsigned int *)t25) = 1;
    goto LAB32;

LAB31:    t21 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB32;

LAB33:    t23 = ((char*)((ng5)));
    goto LAB34;

LAB35:    t24 = ((char*)((ng2)));
    goto LAB36;

LAB37:    xsi_vlog_unsigned_bit_combine(t4, 1, t23, 1, t24, 1);
    goto LAB41;

LAB39:    memcpy(t4, t23, 8);
    goto LAB41;

LAB43:    t19 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB45;

LAB44:    *((unsigned int *)t27) = 1;
    goto LAB45;

LAB47:    *((unsigned int *)t25) = 1;
    goto LAB50;

LAB49:    t21 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB50;

LAB51:    t23 = ((char*)((ng5)));
    goto LAB52;

LAB53:    t24 = ((char*)((ng2)));
    goto LAB54;

LAB55:    xsi_vlog_unsigned_bit_combine(t4, 1, t23, 1, t24, 1);
    goto LAB59;

LAB57:    memcpy(t4, t23, 8);
    goto LAB59;

LAB61:    t19 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB63;

LAB62:    *((unsigned int *)t27) = 1;
    goto LAB63;

LAB65:    *((unsigned int *)t25) = 1;
    goto LAB68;

LAB67:    t21 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB68;

LAB69:    t23 = ((char*)((ng5)));
    goto LAB70;

LAB71:    t24 = ((char*)((ng2)));
    goto LAB72;

LAB73:    xsi_vlog_unsigned_bit_combine(t4, 1, t23, 1, t24, 1);
    goto LAB77;

LAB75:    memcpy(t4, t23, 8);
    goto LAB77;

}


extern void work_m_00000000001867319522_2195887567_init()
{
	static char *pe[] = {(void *)Always_36_0,(void *)NetDecl_55_1,(void *)Always_56_2};
	xsi_register_didat("work_m_00000000001867319522_2195887567", "isim/chip_reset_tb_isim_beh.exe.sim/work/m_00000000001867319522_2195887567.didat");
	xsi_register_executes(pe);
}
