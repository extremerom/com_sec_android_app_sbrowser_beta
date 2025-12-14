.class public final enum Lcom/google/ar/core/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum A:Lcom/google/ar/core/f;

.field public static final enum B:Lcom/google/ar/core/f;

.field public static final enum C:Lcom/google/ar/core/f;

.field public static final enum D:Lcom/google/ar/core/f;

.field public static final enum E:Lcom/google/ar/core/f;

.field public static final enum F:Lcom/google/ar/core/f;

.field private static final synthetic J:[Lcom/google/ar/core/f;

.field public static final enum a:Lcom/google/ar/core/f;

.field public static final enum b:Lcom/google/ar/core/f;

.field public static final enum c:Lcom/google/ar/core/f;

.field public static final enum d:Lcom/google/ar/core/f;

.field public static final enum e:Lcom/google/ar/core/f;

.field public static final enum f:Lcom/google/ar/core/f;

.field public static final enum g:Lcom/google/ar/core/f;

.field public static final enum h:Lcom/google/ar/core/f;

.field public static final enum i:Lcom/google/ar/core/f;

.field public static final enum j:Lcom/google/ar/core/f;

.field public static final enum k:Lcom/google/ar/core/f;

.field public static final enum l:Lcom/google/ar/core/f;

.field public static final enum m:Lcom/google/ar/core/f;

.field public static final enum n:Lcom/google/ar/core/f;

.field public static final enum o:Lcom/google/ar/core/f;

.field public static final enum p:Lcom/google/ar/core/f;

.field public static final enum q:Lcom/google/ar/core/f;

.field public static final enum r:Lcom/google/ar/core/f;

.field public static final enum s:Lcom/google/ar/core/f;

.field public static final enum t:Lcom/google/ar/core/f;

.field public static final enum u:Lcom/google/ar/core/f;

.field public static final enum v:Lcom/google/ar/core/f;

.field public static final enum w:Lcom/google/ar/core/f;

.field public static final enum x:Lcom/google/ar/core/f;

.field public static final enum y:Lcom/google/ar/core/f;

.field public static final enum z:Lcom/google/ar/core/f;


# instance fields
.field final G:I

.field final H:Ljava/lang/Class;

.field final I:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 48

    new-instance v6, Lcom/google/ar/core/f;

    const/4 v5, 0x0

    const-string v4, "SUCCESS"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/google/ar/core/f;->a:Lcom/google/ar/core/f;

    new-instance v1, Lcom/google/ar/core/f;

    const/4 v12, 0x0

    const-string v11, "ERROR_INVALID_ARGUMENT"

    const/4 v8, 0x1

    const/4 v9, -0x1

    const-class v10, Ljava/lang/IllegalArgumentException;

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/google/ar/core/f;->b:Lcom/google/ar/core/f;

    new-instance v2, Lcom/google/ar/core/f;

    const/16 v18, 0x0

    const-string v17, "ERROR_FATAL"

    const/4 v14, 0x2

    const/4 v15, -0x2

    const-class v16, Lcom/google/ar/core/exceptions/FatalException;

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/google/ar/core/f;->c:Lcom/google/ar/core/f;

    new-instance v3, Lcom/google/ar/core/f;

    const/4 v12, 0x0

    const-string v11, "ERROR_SESSION_PAUSED"

    const/4 v8, 0x3

    const/4 v9, -0x3

    const-class v10, Lcom/google/ar/core/exceptions/SessionPausedException;

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/ar/core/f;->d:Lcom/google/ar/core/f;

    new-instance v4, Lcom/google/ar/core/f;

    const/16 v18, 0x0

    const-string v17, "ERROR_SESSION_NOT_PAUSED"

    const/4 v14, 0x4

    const/4 v15, -0x4

    const-class v16, Lcom/google/ar/core/exceptions/SessionNotPausedException;

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/google/ar/core/f;->e:Lcom/google/ar/core/f;

    new-instance v5, Lcom/google/ar/core/f;

    const/4 v12, 0x0

    const-string v11, "ERROR_NOT_TRACKING"

    const/4 v8, 0x5

    const/4 v9, -0x5

    const-class v10, Lcom/google/ar/core/exceptions/NotTrackingException;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/google/ar/core/f;->f:Lcom/google/ar/core/f;

    new-instance v7, Lcom/google/ar/core/f;

    const/16 v18, 0x0

    const-string v17, "ERROR_TEXTURE_NOT_SET"

    const/4 v14, 0x6

    const/4 v15, -0x6

    const-class v16, Lcom/google/ar/core/exceptions/TextureNotSetException;

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/google/ar/core/f;->g:Lcom/google/ar/core/f;

    new-instance v14, Lcom/google/ar/core/f;

    const/4 v13, 0x0

    const-string v12, "ERROR_MISSING_GL_CONTEXT"

    const/4 v9, 0x7

    const/4 v10, -0x7

    const-class v11, Lcom/google/ar/core/exceptions/MissingGlContextException;

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lcom/google/ar/core/f;->h:Lcom/google/ar/core/f;

    new-instance v8, Lcom/google/ar/core/f;

    const/16 v20, 0x0

    const-string v19, "ERROR_UNSUPPORTED_CONFIGURATION"

    const/16 v16, 0x8

    const/16 v17, -0x8

    const-class v18, Lcom/google/ar/core/exceptions/UnsupportedConfigurationException;

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/google/ar/core/f;->i:Lcom/google/ar/core/f;

    new-instance v9, Lcom/google/ar/core/f;

    const/16 v26, 0x0

    const-string v25, "ERROR_FINE_LOCATION_PERMISSION_NOT_GRANTED"

    const/16 v22, 0x9

    const/16 v23, -0x15

    const-class v24, Lcom/google/ar/core/exceptions/FineLocationPermissionNotGrantedException;

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/google/ar/core/f;->j:Lcom/google/ar/core/f;

    new-instance v10, Lcom/google/ar/core/f;

    const/16 v20, 0x0

    const-string v19, "ERROR_GOOGLE_PLAY_SERVICES_LOCATION_LIBRARY_NOT_LINKED"

    const/16 v16, 0xa

    const/16 v17, -0x16

    const-class v18, Lcom/google/ar/core/exceptions/GooglePlayServicesLocationLibraryNotLinkedException;

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/google/ar/core/f;->k:Lcom/google/ar/core/f;

    new-instance v11, Lcom/google/ar/core/f;

    const-class v24, Ljava/lang/SecurityException;

    const-string v26, "Camera permission is not granted"

    const-string v25, "ERROR_CAMERA_PERMISSION_NOT_GRANTED"

    const/16 v22, 0xb

    const/16 v23, -0x9

    move-object/from16 v21, v11

    invoke-direct/range {v21 .. v26}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/google/ar/core/f;->l:Lcom/google/ar/core/f;

    new-instance v12, Lcom/google/ar/core/f;

    const/16 v20, 0x0

    const-string v19, "ERROR_DEADLINE_EXCEEDED"

    const/16 v16, 0xc

    const/16 v17, -0xa

    const-class v18, Lcom/google/ar/core/exceptions/DeadlineExceededException;

    move-object v15, v12

    invoke-direct/range {v15 .. v20}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/google/ar/core/f;->m:Lcom/google/ar/core/f;

    new-instance v13, Lcom/google/ar/core/f;

    const/16 v26, 0x0

    const-string v25, "ERROR_RESOURCE_EXHAUSTED"

    const/16 v22, 0xd

    const/16 v23, -0xb

    const-class v24, Lcom/google/ar/core/exceptions/ResourceExhaustedException;

    move-object/from16 v21, v13

    invoke-direct/range {v21 .. v26}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/google/ar/core/f;->n:Lcom/google/ar/core/f;

    new-instance v21, Lcom/google/ar/core/f;

    const/16 v20, 0x0

    const-string v19, "ERROR_NOT_YET_AVAILABLE"

    const/16 v16, 0xe

    const/16 v17, -0xc

    const-class v18, Lcom/google/ar/core/exceptions/NotYetAvailableException;

    move-object/from16 v15, v21

    invoke-direct/range {v15 .. v20}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v21, Lcom/google/ar/core/f;->o:Lcom/google/ar/core/f;

    new-instance v15, Lcom/google/ar/core/f;

    const/16 v27, 0x0

    const-string v26, "ERROR_CAMERA_NOT_AVAILABLE"

    const/16 v23, 0xf

    const/16 v24, -0xd

    const-class v25, Lcom/google/ar/core/exceptions/CameraNotAvailableException;

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/google/ar/core/f;->p:Lcom/google/ar/core/f;

    new-instance v16, Lcom/google/ar/core/f;

    const/16 v33, 0x0

    const-string v32, "ERROR_ANCHOR_NOT_SUPPORTED_FOR_HOSTING"

    const/16 v29, 0x10

    const/16 v30, -0x10

    const-class v31, Lcom/google/ar/core/exceptions/AnchorNotSupportedForHostingException;

    move-object/from16 v28, v16

    invoke-direct/range {v28 .. v33}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v16, Lcom/google/ar/core/f;->q:Lcom/google/ar/core/f;

    new-instance v17, Lcom/google/ar/core/f;

    const/16 v27, 0x0

    const-string v26, "ERROR_IMAGE_INSUFFICIENT_QUALITY"

    const/16 v23, 0x11

    const/16 v24, -0x11

    const-class v25, Lcom/google/ar/core/exceptions/ImageInsufficientQualityException;

    move-object/from16 v22, v17

    invoke-direct/range {v22 .. v27}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v17, Lcom/google/ar/core/f;->r:Lcom/google/ar/core/f;

    new-instance v18, Lcom/google/ar/core/f;

    const/16 v33, 0x0

    const-string v32, "ERROR_DATA_INVALID_FORMAT"

    const/16 v29, 0x12

    const/16 v30, -0x12

    const-class v31, Lcom/google/ar/core/exceptions/DataInvalidFormatException;

    move-object/from16 v28, v18

    invoke-direct/range {v28 .. v33}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v18, Lcom/google/ar/core/f;->s:Lcom/google/ar/core/f;

    new-instance v19, Lcom/google/ar/core/f;

    const/16 v27, 0x0

    const-string v26, "ERROR_DATA_UNSUPPORTED_VERSION"

    const/16 v23, 0x13

    const/16 v24, -0x13

    const-class v25, Lcom/google/ar/core/exceptions/DataUnsupportedVersionException;

    move-object/from16 v22, v19

    invoke-direct/range {v22 .. v27}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v19, Lcom/google/ar/core/f;->t:Lcom/google/ar/core/f;

    new-instance v20, Lcom/google/ar/core/f;

    const/16 v33, 0x0

    const-string v32, "ERROR_ILLEGAL_STATE"

    const/16 v29, 0x14

    const/16 v30, -0x14

    const-class v31, Ljava/lang/IllegalStateException;

    move-object/from16 v28, v20

    invoke-direct/range {v28 .. v33}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v20, Lcom/google/ar/core/f;->u:Lcom/google/ar/core/f;

    new-instance v28, Lcom/google/ar/core/f;

    const/16 v27, 0x0

    const-string v26, "ERROR_RECORDING_FAILED"

    const/16 v23, 0x15

    const/16 v24, -0x17

    const-class v25, Lcom/google/ar/core/exceptions/RecordingFailedException;

    move-object/from16 v22, v28

    invoke-direct/range {v22 .. v27}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v28, Lcom/google/ar/core/f;->v:Lcom/google/ar/core/f;

    new-instance v22, Lcom/google/ar/core/f;

    const/16 v34, 0x0

    const-string v33, "ERROR_PLAYBACK_FAILED"

    const/16 v30, 0x16

    const/16 v31, -0x18

    const-class v32, Lcom/google/ar/core/exceptions/PlaybackFailedException;

    move-object/from16 v29, v22

    invoke-direct/range {v29 .. v34}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v22, Lcom/google/ar/core/f;->w:Lcom/google/ar/core/f;

    new-instance v23, Lcom/google/ar/core/f;

    const/16 v40, 0x0

    const-string v39, "ERROR_SESSION_UNSUPPORTED"

    const/16 v36, 0x17

    const/16 v37, -0x19

    const-class v38, Lcom/google/ar/core/exceptions/SessionUnsupportedException;

    move-object/from16 v35, v23

    invoke-direct/range {v35 .. v40}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v23, Lcom/google/ar/core/f;->x:Lcom/google/ar/core/f;

    new-instance v24, Lcom/google/ar/core/f;

    const/16 v34, 0x0

    const-string v33, "ERROR_METADATA_NOT_FOUND"

    const/16 v30, 0x18

    const/16 v31, -0x1a

    const-class v32, Lcom/google/ar/core/exceptions/MetadataNotFoundException;

    move-object/from16 v29, v24

    invoke-direct/range {v29 .. v34}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v24, Lcom/google/ar/core/f;->y:Lcom/google/ar/core/f;

    new-instance v25, Lcom/google/ar/core/f;

    const/16 v40, 0x0

    const-string v39, "ERROR_CLOUD_ANCHORS_NOT_CONFIGURED"

    const/16 v36, 0x19

    const/16 v37, -0xe

    const-class v38, Lcom/google/ar/core/exceptions/CloudAnchorsNotConfiguredException;

    move-object/from16 v35, v25

    invoke-direct/range {v35 .. v40}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v25, Lcom/google/ar/core/f;->z:Lcom/google/ar/core/f;

    new-instance v26, Lcom/google/ar/core/f;

    const-class v32, Ljava/lang/SecurityException;

    const-string v34, "Internet permission is not granted"

    const-string v33, "ERROR_INTERNET_PERMISSION_NOT_GRANTED"

    const/16 v30, 0x1a

    const/16 v31, -0xf

    move-object/from16 v29, v26

    invoke-direct/range {v29 .. v34}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v26, Lcom/google/ar/core/f;->A:Lcom/google/ar/core/f;

    new-instance v27, Lcom/google/ar/core/f;

    const/16 v40, 0x0

    const-string v39, "UNAVAILABLE_ARCORE_NOT_INSTALLED"

    const/16 v36, 0x1b

    const/16 v37, -0x64

    const-class v38, Lcom/google/ar/core/exceptions/UnavailableArcoreNotInstalledException;

    move-object/from16 v35, v27

    invoke-direct/range {v35 .. v40}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v27, Lcom/google/ar/core/f;->B:Lcom/google/ar/core/f;

    new-instance v35, Lcom/google/ar/core/f;

    const/16 v34, 0x0

    const-string v33, "UNAVAILABLE_DEVICE_NOT_COMPATIBLE"

    const/16 v30, 0x1c

    const/16 v31, -0x65

    const-class v32, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    move-object/from16 v29, v35

    invoke-direct/range {v29 .. v34}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v35, Lcom/google/ar/core/f;->C:Lcom/google/ar/core/f;

    new-instance v29, Lcom/google/ar/core/f;

    const/16 v41, 0x0

    const-string v40, "UNAVAILABLE_APK_TOO_OLD"

    const/16 v37, 0x1d

    const/16 v38, -0x67

    const-class v39, Lcom/google/ar/core/exceptions/UnavailableApkTooOldException;

    move-object/from16 v36, v29

    invoke-direct/range {v36 .. v41}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v29, Lcom/google/ar/core/f;->D:Lcom/google/ar/core/f;

    new-instance v30, Lcom/google/ar/core/f;

    const/16 v47, 0x0

    const-string v46, "UNAVAILABLE_SDK_TOO_OLD"

    const/16 v43, 0x1e

    const/16 v44, -0x68

    const-class v45, Lcom/google/ar/core/exceptions/UnavailableSdkTooOldException;

    move-object/from16 v42, v30

    invoke-direct/range {v42 .. v47}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v30, Lcom/google/ar/core/f;->E:Lcom/google/ar/core/f;

    new-instance v31, Lcom/google/ar/core/f;

    const/16 v41, 0x0

    const-string v40, "UNAVAILABLE_USER_DECLINED_INSTALLATION"

    const/16 v37, 0x1f

    const/16 v38, -0x69

    const-class v39, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    move-object/from16 v36, v31

    invoke-direct/range {v36 .. v41}, Lcom/google/ar/core/f;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v31, Lcom/google/ar/core/f;->F:Lcom/google/ar/core/f;

    move-object v0, v6

    move-object v6, v7

    move-object v7, v14

    move-object/from16 v14, v21

    move-object/from16 v21, v28

    move-object/from16 v28, v35

    filled-new-array/range {v0 .. v31}, [Lcom/google/ar/core/f;

    move-result-object v0

    sput-object v0, Lcom/google/ar/core/f;->J:[Lcom/google/ar/core/f;

    return-void
.end method

.method public constructor <init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/google/ar/core/f;->G:I

    iput-object p3, p0, Lcom/google/ar/core/f;->H:Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/ar/core/f;->I:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/ar/core/f;
    .locals 1

    sget-object v0, Lcom/google/ar/core/f;->J:[Lcom/google/ar/core/f;

    invoke-virtual {v0}, [Lcom/google/ar/core/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/f;

    return-object v0
.end method
