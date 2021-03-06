{
	�bersetzt aus l2cmn.h vom Windows SDK
}

unit nduL2cmn;

interface

uses
  nduCType;

const
	//Profil Name Max L�nge, in Char Zeichen
	NDU_L2_PROFILE_MAX_NAME_LENGTH 											= 256;

  NDU_L2_NOTIFICATION_SOURCE_NONE 										= 0;
  NDU_L2_NOTIFICATION_SOURCE_DOT3_AUTO_CONFIG        	= $00000001;
  NDU_L2_NOTIFICATION_SOURCE_SECURITY									= $00000002;
  NDU_L2_NOTIFICATION_SOURCE_ONEX											= $00000004;
  NDU_L2_NOTIFICATION_SOURCE_WLAN_ACM									= $00000008;
  NDU_L2_NOTIFICATION_SOURCE_WLAN_MSM									= $00000010;
  NDU_L2_NOTIFICATION_SOURCE_WLAN_SECURITY						= $00000020;
  NDU_L2_NOTIFICATION_SOURCE_WLAN_IHV									= $00000040;

  NDU_L2_NOTIFICATION_SOURCE_ALL											= $0000FFFF;
  NDU_L2_NOTIFICATION_CODE_PUBLIC_BEGIN								= $00000000;


  NDU_L2_REASON_CODE_GROUP_SIZE												= $10000;
  NDU_L2_REASON_CODE_GEN_BASE													= $10000;

  NDU_L2_REASON_CODE_DOT11_AC_BASE										=
  	(NDU_L2_REASON_CODE_GEN_BASE + NDU_L2_REASON_CODE_GROUP_SIZE);

  NDU_L2_REASON_CODE_DOT11_MSM_BASE										=
  	(NDU_L2_REASON_CODE_DOT11_AC_BASE + NDU_L2_REASON_CODE_GROUP_SIZE);

  NDU_L2_REASON_CODE_DOT11_SECURITY_BASE							=
  	(NDU_L2_REASON_CODE_DOT11_MSM_BASE + NDU_L2_REASON_CODE_GROUP_SIZE);

  NDU_L2_REASON_CODE_ONEX_BASE 												=
  	(NDU_L2_REASON_CODE_DOT11_SECURITY_BASE + NDU_L2_REASON_CODE_GROUP_SIZE);

  NDU_L2_REASON_CODE_DOT3_AC_BASE											=
  	(NDU_L2_REASON_CODE_ONEX_BASE + NDU_L2_REASON_CODE_GROUP_SIZE);

  NDU_L2_REASON_CODE_DOT3_MSM_BASE										=
  	(NDU_L2_REASON_CODE_DOT3_AC_BASE + NDU_L2_REASON_CODE_GROUP_SIZE);

  NDU_L2_REASON_CODE_PROFILE_BASE											=
  	(NDU_L2_REASON_CODE_DOT3_MSM_BASE + NDU_L2_REASON_CODE_GROUP_SIZE);

  NDU_L2_REASON_CODE_IHV_BASE													=
  	(NDU_L2_REASON_CODE_PROFILE_BASE + NDU_L2_REASON_CODE_GROUP_SIZE);

  NDU_L2_REASON_CODE_SUCCESS													= 0;

  NDU_L2_REASON_CODE_UNKNOWN													=
  	(NDU_L2_REASON_CODE_GEN_BASE + 1);

  NDU_L2_REASON_CODE_PROFILE_MISSING									= $00000001;

type
	Pndu_L2_NOTIFICATION_DATA = ^Tndu_L2_NOTIFICATION_DATA;
	Tndu_L2_NOTIFICATION_DATA = record
  	NotificationSource: DWORD;
    NotificationCode: DWORD;
    InterfaceGuid: TGUID;
    dwDataSize: DWORD;
    pData: PVOID;
  end;

implementation

end.
