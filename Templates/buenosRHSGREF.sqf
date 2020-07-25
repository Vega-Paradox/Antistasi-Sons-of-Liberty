SDKMortar = "rhsgref_ins_g_2b14";
SDKMortarHEMag = "rhs_mag_3vo18_10";
SDKMortarSmokeMag = "rhs_mag_d832du_10";
SDKMGStatic = "rhsgref_ins_g_DSHKM";
staticATBuenos = "rhsgref_ins_g_SPG9M";
staticAABuenos = "rhsgref_ins_g_ZU23";

staticCrewBuenos = "rhsgref_nat_rifleman_vz58";
SDKUnarmed = "I_G_Survivor_F";
SDKSniper = ["rhsgref_nat_hunter","rhsgref_ins_g_sniper"];
SDKATman = ["rhsgref_nat_grenadier_rpg","rhsgref_nat_pmil_grenadier_rpg"];
SDKMedic = ["rhsgref_nat_medic","rhsgref_ins_g_medic"];
SDKMG = ["rhsgref_nat_machinegunner_mg42","rhsgref_nat_machinegunner"];
SDKExp = ["rhsgref_nat_saboteur","rhsgref_nat_pmil_saboteur"];
SDKGL = ["rhsgref_nat_grenadier","rhsgref_nat_pmil_grenadier"];
SDKMil = ["rhsgref_nat_rifleman","rhsgref_nat_rifleman_akms"];
SDKSL = ["rhsgref_nat_commander","rhsgref_nat_scout"];
SDKEng = ["rhsgref_nat_saboteur","rhsgref_ins_g_engineer"];

arrayMilitia = ["UK3CB_CCM_I_TL","UK3CB_CCM_I_RIF_BOLT","UK3CB_CCM_I_RIF_1","UK3CB_CCM_I_AR","UK3CB_CCM_I_MD"];

vehSDKBike = "I_G_Quadbike_01_F";
vehSDKLightArmed = "rhsgref_ins_g_uaz_dshkm_chdkz";
vehSDKAT = "rhsgref_nat_uaz_spg9";
vehSDKLightUnarmed = "rhsgref_nat_uaz_open";
vehSDKTruck = "rhsgref_nat_ural_open";
//vehSDKHeli = "rhsgref_ins_g_Mi8amt";
vehSDKPlane = "RHS_AN2";
vehSDKBoat = "I_C_Boat_Transport_01_F";
vehSDKRepair = "rhsgref_ins_g_gaz66_repair";
SDKFlag = "Flag_Syndikat_F";
SDKFlagTexture = "Textures\Flags\flag_dpvc.paa";
tipoPetros = "rhsgref_nat_scout";

soporteStaticSDKB = "RHS_SPG9_Tripod_Bag";
ATStaticSDKB = "RHS_SPG9_Gun_Bag";
MGStaticSDKB = "RHS_DShkM_Gun_Bag";
soporteStaticSDKB2 = "RHS_DShkM_TripodHigh_Bag";
AAStaticSDKB = "I_AA_01_weapon_F"; 
MortStaticSDKB = "RHS_Podnos_Gun_Bag";
soporteStaticSDKB3 = "RHS_Podnos_Bipod_Bag";

civCar = "UK3CB_C_Datsun_Open";
civTruck = "UK3CB_C_S1203";
civHeli = "C_Heli_Light_01_civil_F";
civBoat = "C_Boat_Transport_02_F";

//Civilian dealer options
	//Air
civairMed = "rhs_uh1h_idap";
civairHeavy = "UK3CB_C_Mi8AMT";
civairHeavy2 = "C_IDAP_Heli_Transport_02_F";
civairScout = "C_Plane_Civil_01_F";
	//Ground
civgndBike = "C_Quadbike_01_F";
civgndSedan = "UK3CB_C_Sedan";
civgndJeepL = "UK3CB_CHC_C_UAZ_Open";
civgndJeepH = "UK3CB_CHC_C_LR_Closed";
civgndLightTruck = "C_Van_01_transport_F";
civgndCoverTruck = "UK3CB_CHC_C_V3S_Closed";
civgndRecovTruck = "UK3CB_CHC_C_Ural_Recovery";
civgndRepairTruck = "UK3CB_CHC_C_V3S_Repair";
civgndFuelTruck = "UK3CB_CHC_C_Kamaz_Fuel";

//Military dealer options
	//Antique -- should spawn with no ammo
milantBTR40 = "UK3CB_B_G_BTR40";
milantBTR40a = "UK3CB_B_G_BTR40_MG";
milantMTLB = "UK3CB_B_G_MTLB_PKT";
milantBTR60 = "rhs_btr60_vv";
milantT34 = "UK3CB_B_G_T34";
	//Black Market
milblkGunVic = "rhs_tigr_sts_3camo_vdv";
milblkAPC = "rhsusf_m113_usarmy";
milblkMRAP = "rhsgref_BRDM2_vdv";
milblkScoutIFV = "rhs_bmd1";
milblkAH6 = "RHS_MELB_AH6M";

arrayCivVeh = arrayCivVeh + ["RHS_Ural_Open_Civ_03","RHS_Ural_Open_Civ_01","RHS_Ural_Open_Civ_02", civgndBike, civgndJeepL, civgndJeepH];
arrayCivAir = [civHeli, civairMed, civairHeavy, civairScout];

sniperRifle = "rhs_weap_m76_pso";
lamparasSDK = ["rhs_acc_2dpZenit","acc_flashlight"];

ATMineMag = "rhs_mine_tm62m_mag";
APERSMineMag = "rhs_mine_pmn2_mag";

if (hayFFAA) then
	{
	call compile preProcessFileLineNumbers "Templates\malosFFAA.sqf"
	}
else
	{
	if (gameMode != 4) then
		{
		FIARifleman = "rhsgref_cdf_b_para_rifleman";
		FIAMarksman = "rhsgref_cdf_b_para_marksman";
		vehFIAArmedCar = "rhsgref_BRDM2_b";
		vehUNArmedCar = "UK3CB_UN_B_M1117";
		vehFIATruck = "UK3CB_B_BTR40_CDF";
		vehFIACar = "UK3CB_B_LandRover_Closed_CDF";

		gruposFIASmall = [["rhsgref_cdf_b_para_grenadier","rhsgref_cdf_b_para_rifleman"],["rhsgref_cdf_b_para_marksman","rhsgref_cdf_b_para_rifleman"]];//["IRG_InfSentry","IRG_ReconSentry","IRG_SniperTeam_M"];///
		gruposFIAMid = [["rhsgref_cdf_b_para_squadleader","rhsgref_cdf_b_para_machinegunner","rhsgref_cdf_b_para_rifleman_lite","rhsgref_cdf_b_para_grenadier"],["rhsgref_cdf_b_para_squadleader","rhsgref_cdf_b_para_grenadier_rpg","rhsgref_cdf_b_para_grenadier_rpg","rhsgref_cdf_b_para_grenadier"]];//["IRG_InfAssault","IRG_InfTeam","IRG_InfTeam_AT"];///
		FIASquad = ["rhsgref_cdf_b_para_squadleader","rhsgref_cdf_b_para_machinegunner","rhsgref_cdf_b_para_rifleman_lite","rhsgref_cdf_b_para_rifleman","rhsgref_cdf_b_para_grenadier_rpg","rhsgref_cdf_b_para_grenadier_rpg","rhsgref_cdf_b_para_grenadier","rhsgref_cdf_b_para_medic"];//"IRG_InfSquad";///
		gruposFIASquad = [FIASquad];
		factionFIA = "rhsgref_faction_cdf_ground_b";
		}
	else
		{
		FIARifleman = "rhs_msv_emr_rifleman";
		FIAMarksman = "rhs_msv_emr_marksman";
		vehFIAArmedCar = "rhs_tigr_sts_3camo_msv";
		vehFIATruck = "rhs_zil131_open_msv";
		vehFIACar = "rhs_uaz_open_MSV_01";

		gruposFIASmall = [["rhs_msv_emr_grenadier",FIARifleman],[FIAMarksman,FIARifleman]];//["IRG_InfSentry","IRG_ReconSentry","IRG_SniperTeam_M"];///
		gruposFIAMid = [["rhsgref_hidf_teamleader","rhs_msv_emr_machinegunner",FIARifleman,"rhs_msv_emr_grenadier"],["rhsgref_hidf_teamleader","rhs_msv_emr_machinegunner",FIARifleman,"rhs_msv_emr_at"],["rhsgref_hidf_teamleader","rhs_msv_emr_machinegunner",FIARifleman,"rhs_msv_emr_engineer"]];//["IRG_InfAssault","IRG_InfTeam","IRG_InfTeam_AT"];///
		FIASquad = ["rhs_msv_emr_officer","rhs_msv_emr_grenadier","rhs_msv_emr_machinegunner","rhs_msv_emr_rifleman","rhs_msv_emr_marksman","rhs_msv_emr_engineer","rhs_msv_emr_at","rhs_msv_emr_medic"];//"IRG_InfSquad";///
		gruposFIASquad = [FIASquad];
		factionFIA = "rhs_faction_msv";
		};
	};

vehUNCar = "UK3CB_UN_B_M1025_M2";
vehPoliceCar = "UK3CB_CPD_B_TIGR_FFV";
policeOfficer = "UK3CB_CPD_B_OREL_SL";
policeGrunt = "UK3CB_CPD_B_OREL_RIF_2";
unSoldier = "UK3CB_UN_B_TL";
gruposNATOGen = [policeOfficer,policeGrunt,unSoldier];
nameBuenos = "DPVC";

factionGEN = "rhsgref_faction_cdf_ground";
