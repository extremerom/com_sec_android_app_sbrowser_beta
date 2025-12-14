.class public final enum Lcom/samsung/android/visual/ai/sdkcommon/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum AUTH_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum AUTH_SA_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum CLIENT_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum INPUT_DATA_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum MISSING_MANDATORY_FIELD:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum MODEL_NOT_FOUND:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum NETWORK_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum NOT_SPECIFIED:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum REQUEST_CANCELED:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum RESOURCE_BUSY:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum SAFETY_FILTER_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum SERVER_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum SERVER_QUOTA_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum SERVICE_EXCEPTION:Lcom/samsung/android/visual/ai/sdkcommon/v;

.field public static final enum TIME_OUT:Lcom/samsung/android/visual/ai/sdkcommon/v;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const/4 v1, -0x2

    const-string v2, "MODEL_NOT_FOUND"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/visual/ai/sdkcommon/v;->MODEL_NOT_FOUND:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v1, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const-string v2, "NOT_SPECIFIED"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/visual/ai/sdkcommon/v;->NOT_SPECIFIED:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v2, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const-string v3, "RESOURCE_BUSY"

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/samsung/android/visual/ai/sdkcommon/v;->RESOURCE_BUSY:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v3, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const/16 v4, 0x11

    const-string v5, "REQUEST_CANCELED"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/visual/ai/sdkcommon/v;->REQUEST_CANCELED:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v4, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const/16 v5, 0x65

    const-string v6, "TIME_OUT"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/android/visual/ai/sdkcommon/v;->TIME_OUT:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v5, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const/16 v6, 0x66

    const-string v7, "NETWORK_ERROR"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/android/visual/ai/sdkcommon/v;->NETWORK_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v6, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const/16 v7, 0x67

    const-string v8, "INPUT_DATA_ERROR"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/samsung/android/visual/ai/sdkcommon/v;->INPUT_DATA_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v7, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const/16 v8, 0x12c

    const-string v9, "MISSING_MANDATORY_FIELD"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/android/visual/ai/sdkcommon/v;->MISSING_MANDATORY_FIELD:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v8, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const/16 v9, 0x1f4

    const-string v10, "SERVICE_EXCEPTION"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/samsung/android/visual/ai/sdkcommon/v;->SERVICE_EXCEPTION:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v9, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const/16 v10, 0x3e8

    const-string v11, "CLIENT_ERROR"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/android/visual/ai/sdkcommon/v;->CLIENT_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v10, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const/16 v11, 0x7d0

    const-string v12, "AUTH_ERROR"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/samsung/android/visual/ai/sdkcommon/v;->AUTH_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v11, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const/16 v12, 0x898

    const-string v13, "AUTH_SA_ERROR"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/samsung/android/visual/ai/sdkcommon/v;->AUTH_SA_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v12, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const/16 v13, 0xfa0

    const-string v14, "SERVER_QUOTA_ERROR"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/samsung/android/visual/ai/sdkcommon/v;->SERVER_QUOTA_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v13, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const/16 v14, 0x1388

    const-string v15, "SAFETY_FILTER_ERROR"

    move-object/from16 v16, v12

    const/16 v12, 0xd

    invoke-direct {v13, v15, v12, v14}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/samsung/android/visual/ai/sdkcommon/v;->SAFETY_FILTER_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

    new-instance v14, Lcom/samsung/android/visual/ai/sdkcommon/v;

    const/16 v12, 0x2328

    const-string v15, "SERVER_ERROR"

    move-object/from16 v17, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v12}, Lcom/samsung/android/visual/ai/sdkcommon/v;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/samsung/android/visual/ai/sdkcommon/v;->SERVER_ERROR:Lcom/samsung/android/visual/ai/sdkcommon/v;

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    filled-new-array/range {v0 .. v14}, [Lcom/samsung/android/visual/ai/sdkcommon/v;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/visual/ai/sdkcommon/v;->$VALUES:[Lcom/samsung/android/visual/ai/sdkcommon/v;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/visual/ai/sdkcommon/v;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/visual/ai/sdkcommon/v;
    .locals 1

    const-class v0, Lcom/samsung/android/visual/ai/sdkcommon/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/visual/ai/sdkcommon/v;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/visual/ai/sdkcommon/v;
    .locals 1

    sget-object v0, Lcom/samsung/android/visual/ai/sdkcommon/v;->$VALUES:[Lcom/samsung/android/visual/ai/sdkcommon/v;

    invoke-virtual {v0}, [Lcom/samsung/android/visual/ai/sdkcommon/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/visual/ai/sdkcommon/v;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/visual/ai/sdkcommon/v;->code:I

    return p0
.end method
