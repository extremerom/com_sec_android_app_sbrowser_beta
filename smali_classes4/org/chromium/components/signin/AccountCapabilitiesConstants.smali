.class public abstract Lorg/chromium/components/signin/AccountCapabilitiesConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAN_FETCH_FAMILY_MEMBER_INFO_CAPABILITY_NAME:Ljava/lang/String; = "accountcapabilities/ge2dinbnmnqxa"

.field public static final CAN_HAVE_EMAIL_ADDRESS_DISPLAYED_CAPABILITY_NAME:Ljava/lang/String; = "accountcapabilities/haytqlldmfya"

.field public static final CAN_RUN_CHROME_PRIVACY_SANDBOX_TRIALS_CAPABILITY_NAME:Ljava/lang/String; = "accountcapabilities/gu2dqlldmfya"

.field public static final CAN_SHOW_HISTORY_SYNC_OPT_INS_WITHOUT_MINOR_MODE_RESTRICTIONS_CAPABILITY_NAME:Ljava/lang/String; = "accountcapabilities/gi2tklldmfya"

.field public static final CAN_TOGGLE_AUTO_UPDATES_NAME:Ljava/lang/String; = "accountcapabilities/gu4dmlldmfya"

.field public static final CAN_USE_CHROMEOS_GENERATIVE_AI:Ljava/lang/String; = "accountcapabilities/ge3dgmjnmnqxa"

.field public static final CAN_USE_CHROME_IP_PROTECTION_NAME:Ljava/lang/String; = "accountcapabilities/geydgnznmnqxa"

.field public static final CAN_USE_COPYEDITOR_FEATURE_NAME:Ljava/lang/String; = "accountcapabilities/ge2tkmznmnqxa"

.field public static final CAN_USE_DEVTOOLS_GENERATIVE_AI_FEATURES_CAPABILITY_NAME:Ljava/lang/String; = "accountcapabilities/geztenjnmnqxa"

.field public static final CAN_USE_EDU_FEATURES_CAPABILITY_NAME:Ljava/lang/String; = "accountcapabilities/gezdsmbnmnqxa"

.field public static final CAN_USE_GENERATIVE_AI_IN_RECORDER_APP:Ljava/lang/String; = "accountcapabilities/ge2tkobnmnqxa"

.field public static final CAN_USE_GENERATIVE_AI_PHOTO_EDITING:Ljava/lang/String; = "accountcapabilities/ge3dgobnmnqxa"

.field public static final CAN_USE_MANTA_SERVICE_NAME:Ljava/lang/String; = "accountcapabilities/geytcnbnmnqxa"

.field public static final CAN_USE_MODEL_EXECUTION_FEATURES_NAME:Ljava/lang/String; = "accountcapabilities/gezdcnbnmnqxa"

.field public static final CAN_USE_SPEAKER_LABEL_IN_RECORDER_APP:Ljava/lang/String; = "accountcapabilities/ge2tknznmnqxa"

.field public static final IS_ALLOWED_FOR_MACHINE_LEARNING_CAPABILITY_NAME:Ljava/lang/String; = "accountcapabilities/g42tslldmfya"

.field public static final IS_OPTED_IN_TO_PARENTAL_SUPERVISION_CAPABILITY_NAME:Ljava/lang/String; = "accountcapabilities/guzdslldmfya"

.field public static final IS_SUBJECT_TO_CHROME_PRIVACY_SANDBOX_RESTRICTED_MEASUREMENT_NOTICE:Ljava/lang/String; = "accountcapabilities/he4tolldmfya"

.field public static final IS_SUBJECT_TO_ENTERPRISE_POLICIES_CAPABILITY_NAME:Ljava/lang/String; = "accountcapabilities/g44tilldmfya"

.field public static final IS_SUBJECT_TO_PARENTAL_CONTROLS_CAPABILITY_NAME:Ljava/lang/String; = "accountcapabilities/guydolldmfya"

.field public static final SUPPORTED_ACCOUNT_CAPABILITY_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/components/signin/AccountCapabilitiesConstants$1;

    invoke-direct {v0}, Lorg/chromium/components/signin/AccountCapabilitiesConstants$1;-><init>()V

    sput-object v0, Lorg/chromium/components/signin/AccountCapabilitiesConstants;->SUPPORTED_ACCOUNT_CAPABILITY_NAMES:Ljava/util/Set;

    return-void
.end method
