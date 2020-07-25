NATOGrunt = "rhsgref_cdf_b_reg_rifleman";
NATOOfficer = "rhsgref_cdf_b_reg_officer";
NATOOfficer2 = "UK3CB_CCM_B_OFF";
NATOBodyG = "rhsgref_cdf_b_reg_rifleman_akm";
NATOCrew = "rhsgref_cdf_b_reg_crew";
NATOUnarmed = "B_G_Survivor_F";
NATOMarksman = "rhsgref_cdf_b_reg_marksman";
staticCrewMalos = "rhsgref_cdf_b_reg_rifleman";
NATOPilot = "rhsgref_cdf_b_air_pilot";

NATOMG = "rhsgref_cdf_b_DSHKM";
NATOMortar = "rhsgref_cdf_b_reg_M252";
staticATmalos = "rhsgref_cdf_b_SPG9M";
staticAAmalos = "rhsgref_cdf_b_Igla_AA_pod";

vehNATOLightArmed = ["rhsgref_cdf_b_reg_uaz_dshkm","UK3CB_B_LandRover_M2_CDF","rhsgref_cdf_b_reg_uaz_ags","UK3CB_B_LandRover_SPG9_CDF","rhsgref_BRDM2_b","rhsgref_BRDM2_HQ_b","rhsgref_BRDM2_ATGM_b","UK3CB_B_BTR40_MG_CDF"];
vehNATOLightUnarmed = ["rhsgref_cdf_b_reg_uaz","rhsgref_cdf_b_reg_uaz_open","UK3CB_B_LandRover_Closed_CDF","UK3CB_B_LandRover_Open_CDF","rhsgref_BRDM2UM_b"];
vehNATOTrucks = ["rhsgref_cdf_b_gaz66","rhsgref_cdf_b_gaz66o","rhsgref_cdf_b_gaz66_flat","rhsgref_cdf_b_gaz66o_flat","rhsgref_cdf_b_ural","rhsgref_cdf_b_ural_open","rhsgref_cdf_b_zil131","rhsgref_cdf_b_zil131_open","rhsgref_cdf_b_zil131_flatbed_cover","rhsgref_cdf_b_zil131_flatbed","UK3CB_B_Kamaz_Open_CDF","UK3CB_B_Kamaz_Covered_CDF"];
vehNATOAmmoTruck = "UK3CB_B_Ural_Ammo_CDF";
vehNATOFuelTruck = "rhsgref_cdf_b_ural_fuel";
vehNATORepairTruck = "UK3CB_B_Ural_Repair_CDF";
vehNATOLight = vehNATOLightArmed + vehNATOLightUnarmed;
vehNATOAPC = ["rhsgref_cdf_b_btr60","rhsgref_cdf_b_btr70","rhsgref_cdf_b_bmp1d","rhsgref_cdf_b_bmp2d","rhsgref_cdf_b_bmp2k"];
vehNATOTank = "rhsgref_cdf_b_t72ba_tv";
vehNATOAA = "rhsgref_cdf_b_ural_Zu23";
vehNATOAttack = vehNATOAPC + [vehNATOTank];
vehNATOBoat = "rhsusf_mkvsoc";
vehNATORBoat = "I_C_Boat_Transport_02_F";
vehNATOBoats = [vehNATOBoat,vehNATORBoat,"rhsgref_cdf_b_btr70"];
vehNATOPlane = "rhs_l159_cdf_b_CDF";
vehNATOPlaneAA = "rhsgref_cdf_b_mig29s";
vehNATOPatrolHeli = "rhsgref_cdf_b_reg_Mi8amt";
vehNATOTransportPlane = "RHS_AN2_B";
vehNATOTransportHelis = [vehNATOPatrolHeli,"rhsgref_cdf_b_reg_Mi17Sh","RHS_AN2_B","UK3CB_UN_B_UH1H_M240"];
vehNATOAttackHelis = ["rhsgref_cdf_b_Mi24D","rhsgref_cdf_b_Mi35","rhsgref_cdf_b_reg_Mi17Sh","UK3CB_UN_B_UH1H_M240"];
vehNATOAir = vehNATOTransportHelis + vehNATOAttackHelis + [vehNATOPlane,vehNATOPlaneAA];
vehNATOUAV = "B_UAV_06_F";//ok
vehNATOUAVSmall = "B_UAV_01_F";
vehNATOMRLS = "rhsgref_cdf_b_reg_BM21";
vehNATOMRLSMags = "rhs_mag_m21of_1";
vehNATONormal = vehNATOLight + vehNATOTrucks + [vehNATOAmmoTruck,vehNATOFuelTruck,vehNATORepairTruck];
vehNATOBike = "I_G_Quadbike_01_F";
NATOFlag = "FlagCarrierCDF";
NATOFlagTexture = "Textures\Flags\flag_cdf.png";
NATOAmmobox = "B_supplyCrate_F";

//cfgNATOInf = (configfile >> "CfgGroups" >> "West" >> "BLU_T_F" >> "Infantry");///
gruposNATOSentry = ["rhsgref_cdf_b_reg_grenadier",NATOGrunt];//"B_T_InfSentry";//
gruposNATOSniper = ["rhsgref_cdf_b_reg_marksman","rhsgref_cdf_b_reg_rifleman_lite"];
gruposNATOsmall = [gruposNATOSentry,gruposNATOSniper]; //[gruposNATOSentry,"B_T_SniperTeam","B_T_ReconSentry"];///
gruposNATOAA = ["rhsgref_cdf_b_reg_squadleader","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_rifleman_akm","rhsgref_cdf_b_reg_specialist_aa"];
gruposNATOAT = ["rhsgref_cdf_b_reg_squadleader","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_rifleman_akm","rhsgref_cdf_b_reg_grenadier_rpg"];
gruposNATOmid = [["rhsgref_cdf_b_reg_squadleader","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_rifleman_lite","rhsgref_cdf_b_reg_grenadier_rpg"],gruposNATOAA,gruposNATOAT];//["B_T_InfTeam","B_T_InfTeam_AA","B_T_InfTeam_AT"];///
NATOSquad = ["rhsgref_cdf_b_reg_squadleader","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_rifleman_akm","rhsgref_cdf_b_reg_medic","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_rifleman_lite","rhsgref_cdf_b_reg_marksman"];//"B_T_InfSquad";//
NATOSpecOp = ["rhsgref_cdf_b_para_squadleader","rhsgref_cdf_b_para_machinegunner","rhsgref_cdf_b_para_engineer","rhsgref_cdf_b_para_grenadier_rpg","rhsgref_cdf_b_para_grenadier","rhsgref_cdf_b_para_medic"];//(configfile >> "CfgGroups" >> "West" >> "BLU_CTRG_F" >> "Infantry" >> "CTRG_InfSquad");
factionMachoMalos = "rhsgref_faction_cdf_b_ground";
gruposNATOSquad = [NATOSquad,["rhsgref_cdf_b_reg_squadleader","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_rifleman_akm","rhsgref_cdf_b_reg_rifleman_akm","rhsgref_cdf_b_reg_grenadier","rhsgref_cdf_b_reg_grenadier_rpg","rhsgref_cdf_b_reg_rifleman_lite"],["rhsgref_cdf_b_reg_squadleader","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_rifleman_akm","rhsgref_cdf_b_reg_rifleman_aks74","rhsgref_cdf_b_reg_grenadier","rhsgref_cdf_b_reg_specialist_aa","rhsgref_cdf_b_reg_rifleman_lite"],["rhsgref_cdf_b_reg_squadleader","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_rifleman_aks74","rhsgref_cdf_b_reg_medic","rhsgref_cdf_b_reg_machinegunner","rhsgref_cdf_b_reg_rifleman_akm","rhsgref_cdf_b_reg_engineer"]]; //[NATOSquad,"B_T_InfSquad_Weapons"];///

soporteStaticNATOB = "RHS_SPG9_Tripod_Bag";
ATStaticNATOB = "RHS_SPG9_Gun_Bag";
MGStaticNATOB = "RHS_DShkM_Gun_Bag";
soporteStaticNATOB2 = "RHS_DShkM_Tripod_Bag";
AAStaticNATOB = "B_AA_01_weapon_F";
MortStaticNATOB = "rhs_M252_Gun_Bag";
soporteStaticNATOB3 = "rhs_M252_Bipod_Bag";

armasNATO append ["rhs_weap_ak103","rhs_weap_ak103_gp25","rhs_weap_ak104","rhs_weap_ak105","rhs_weap_ak74m","rhs_weap_ak74m_folded","rhs_weap_ak74m_gp25","rhs_weap_akm","rhs_weap_akm_gp25","rhs_weap_akms","rhs_weap_akms_gp25","rhs_weap_asval","rhs_weap_m21a","rhs_weap_m21a_fold","rhs_weap_m70ab2","rhs_weap_m70ab2_fold","rhs_weap_m76","rhs_weap_m92","rhs_weap_m92_fold","rhs_weap_pkm","rhs_weap_pkp","rhs_weap_svdp","rhs_weap_svdp_wd","rhs_weap_svds","rhs_weap_svds_npz","rhs_weap_igla","rhs_weap_rpg26","rhs_weap_rpg7","rhs_weap_rshg2","rhs_weap_Izh18","rhs_weap_l1a1_wood","rhs_weap_m1garand_sa43","rhs_weap_m3a1","rhs_weap_m3a1_specops","rhs_weap_m40a5","rhs_weap_m16a4_carryhandle","rhs_weap_m14ebrri","rhs_weap_m79","rhs_weap_mg42","rhs_weap_m38_rail","rhs_weap_mp44","rhs_weap_vss","rhs_weap_vss_npz","rhs_weap_vhsd2","rhs_weap_vhsd2_ct15x","rhs_weap_vhsd2_bg","rhs_weap_vhsd2_bg_ct15x","rhs_weap_makarov_pmm","rhs_weap_pya","rhsusf_weap_m1911a1","rhs_weap_m240b","sgun_HunterShotgun_01_F","sgun_HunterShotgun_01_sawedoff_F"];//possible weapons that spawn in NATO ammoboxes
humo = humo + ["rhs_30Rnd_545x39_AK","rhs_30Rnd_545x39_AK_no_tracers","rhs_30Rnd_545x39_AK_green","rhs_30Rnd_545x39_7N10_AK","rhs_30Rnd_545x39_7N22_AK","rhs_30Rnd_545x39_7U1_AK","rhs_45Rnd_545X39_7N22_AK","rhs_45Rnd_545X39_7N10_AK","rhs_45Rnd_545X39_AK_Green","rhs_45Rnd_545X39_AK","rhs_45Rnd_545X39_7U1_AK","rhs_30Rnd_762x39mm","rhs_30Rnd_762x39mm_tracer","rhs_30Rnd_762x39mm_89","rhs_30Rnd_762x39mm_U","rhs_20rnd_9x39mm_SP5","rhs_20rnd_9x39mm_SP6","rhs_100Rnd_762x54mmR","rhs_100Rnd_762x54mmR_green","rhs_10Rnd_762x54mmR_7N1","rhs_rpg26_mag","rhs_rshg2_mag","rhs_rpg18_mag","rhs_rpg7_PG7VL_mag","rhs_rpg7_PG7VR_mag","rhs_rpg7_TBG7V_mag","rhs_rpg7_OG7V_mag","rhs_mag_9k32_rocket","rhs_mag_9k38_rocket","rhsusf_100Rnd_762x51","rhsusf_100Rnd_762x51_m80a1epr","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Red","rhsusf_20Rnd_762x51_m118_special_Mag","rhsusf_20Rnd_762x51_m993_Mag","rhs_mag_20Rnd_762x51_m80_fnfal"];
NVGoggles = [NVGoggles + ["rhs_1PN138","rhs_ANPVS_14","rhs_ANPVS_15","NVGoggles_INDEP"]];
itemsAAF = [itemsAAF + ["rhs_bipod","rhs_acc_tgpa","rhs_acc_pbs1","rhs_acc_dtk4short","rhs_acc_tgpv","rhs_acc_dtk4long","rhs_acc_dtk4screws","rhs_acc_muzzleFlash_dtk","rhs_acc_dtk3","rhs_acc_dtk1","rhs_acc_dtk","rhs_acc_dtk1l","rhs_acc_ak5","rhs_acc_1p29","rhs_acc_1p78","rhs_acc_pkas","rhs_acc_ekp1","rhs_acc_1p63","rhs_acc_ekp1b","rhs_acc_ekp1c","rhs_acc_ekp1d","rhs_acc_npz","rhs_acc_pso1m2","rhs_acc_pgo7v","rhs_acc_1pn93_1","rhs_acc_1pn93_2","rhsusf_acc_ACOG3_USMC","rhsusf_acc_ACOG2_USMC","rhsusf_acc_ACOG_USMC","rhsusf_acc_ACOG3","rhsusf_acc_ACOG2","rhsusf_acc_ACOG_pip","rhsusf_acc_ACOG_sa","rhsusf_acc_ACOG_d","rhsusf_acc_ACOG_wd","rhsusf_acc_ACOG","rhsusf_acc_ACOG_RMR","rhsusf_acc_eotech_552","rhsusf_acc_harris_bipod","rhs_acc_at4_handler","rhsusf_acc_anpeq15A","rhsusf_acc_anpeq15","rhsusf_acc_anpeq15_light","rhsusf_acc_M2010S","rhsusf_acc_anpeq15side","rhsusf_acc_SR25S","rhsusf_acc_rotex5_grey","rhsusf_acc_rotex5_tan","rhsusf_acc_nt4_black","rhsusf_acc_nt4_tan","rhsusf_acc_muzzleFlash_SF","rhsusf_acc_SF3P556","rhsusf_acc_SFMB556","rhsusf_acc_compm4","optic_Arco_blk_F","IEDLandSmall_Remote_Mag","SatchelCharge_Remote_Mag"]];
flagNATOmrk = "Faction_CDF";//ok

lamparaMalos = "acc_flashlight";
nameMalos = "CDF";
if (isServer) then {"NATO_carrier" setMarkerText "CDF Carrier 'Panovník' Battle Group"};