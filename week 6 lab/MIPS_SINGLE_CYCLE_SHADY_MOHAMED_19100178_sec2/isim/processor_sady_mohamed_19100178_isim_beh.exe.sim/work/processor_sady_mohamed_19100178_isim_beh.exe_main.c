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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    work_a_0314945931_3212880686_init();
    work_a_2635722019_3212880686_init();
    work_a_0123541133_3212880686_init();
    work_a_1235590457_3212880686_init();
    work_a_2310724699_3212880686_init();
    work_a_1415798754_3212880686_init();
    work_a_1066144761_3212880686_init();
    work_a_0280268784_3212880686_init();
    work_a_2418720772_3212880686_init();
    work_a_2209948870_3212880686_init();
    work_a_2754690597_3212880686_init();
    work_a_2268081402_3212880686_init();
    work_a_4148459956_3212880686_init();
    work_a_0224157977_3212880686_init();
    work_a_3560710585_3212880686_init();
    work_a_4046317108_3212880686_init();


    xsi_register_tops("work_a_4046317108_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
