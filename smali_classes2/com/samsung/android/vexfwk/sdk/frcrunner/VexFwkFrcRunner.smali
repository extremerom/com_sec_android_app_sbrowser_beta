.class public final Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;
.super Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0008*\u0001\u0016\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JA\u0010\r\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eJ%\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u001b\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;",
        "Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;",
        "<init>",
        "()V",
        "",
        "format",
        "width",
        "height",
        "Landroid/view/Surface;",
        "outputSurface",
        "rotationDegree",
        "",
        "inputFrameRate",
        "configure",
        "(IIILandroid/view/Surface;IF)Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;",
        "Lcom/samsung/android/vexfwk/param/VexFwkFrcStatus;",
        "status",
        "upsampleFactor",
        "outputFrameRate",
        "Ldb/r;",
        "run",
        "(Lcom/samsung/android/vexfwk/param/VexFwkFrcStatus;IF)V",
        "com/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$sessionCallback$1",
        "sessionCallback",
        "Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$sessionCallback$1;",
        "getInputSurface",
        "()Landroid/view/Surface;",
        "inputSurface",
        "Companion",
        "VexFrameworkSDK_forInternalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STREAM_ID_INPUT_SURFACE:I = 0x0

.field private static final STREAM_ID_OUTPUT_SURFACE:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final availableUpsampleFactors$delegate:Ldb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final isAvailable$delegate:Ldb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final sessionCallback:Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$sessionCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->Companion:Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$Companion;

    const-string v0, "VexFwkFrcRunner"

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->TAG:Ljava/lang/String;

    new-instance v0, LB9/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LB9/b;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->isAvailable$delegate:Ldb/f;

    new-instance v0, LB9/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LB9/b;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->availableUpsampleFactors$delegate:Ldb/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;-><init>()V

    new-instance v0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$sessionCallback$1;

    invoke-direct {v0}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$sessionCallback$1;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->sessionCallback:Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$sessionCallback$1;

    return-void
.end method

.method public static final synthetic access$getAvailableUpsampleFactors$delegate$cp()Ldb/f;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->availableUpsampleFactors$delegate:Ldb/f;

    return-object v0
.end method

.method public static final synthetic access$isAvailable$delegate$cp()Ldb/f;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->isAvailable$delegate:Ldb/f;

    return-object v0
.end method

.method private static final availableUpsampleFactors_delegate$lambda$10()[I
    .locals 5

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->Companion:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase$Companion;

    sget-object v1, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->FRAME_RATE_CONVERSION:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    sget-object v2, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$PROPERTY_FRC_AVAILABLE_UPSAMPLE_FACTORS;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$PROPERTY_FRC_AVAILABLE_UPSAMPLE_FACTORS;

    new-instance v3, LA9/b;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, LA9/b;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase$Companion;->getProperties(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Le1/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method private static final availableUpsampleFactors_delegate$lambda$10$lambda$9()[I
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public static synthetic b()[I
    .locals 1

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->availableUpsampleFactors_delegate$lambda$10$lambda$9()[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(IILandroid/view/Surface;IIFLcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;)Ldb/r;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->configure$lambda$3(IILandroid/view/Surface;IIFLcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private static final configure$lambda$3(IILandroid/view/Surface;IIFLcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;)Ldb/r;
    .locals 11

    move-object/from16 v0, p6

    const-string v1, "$this$configureWith"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->FRAME_RATE_CONVERSION:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    new-instance v10, LB9/a;

    const/4 v9, 0x1

    move-object v2, v10

    move v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, LB9/a;-><init>(IILandroid/view/Surface;IIFI)V

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->createSession(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;Lsb/k;)V

    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method

.method private static final configure$lambda$3$lambda$2(IILandroid/view/Surface;IIFLcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;
    .locals 19

    move-object/from16 v10, p6

    const-string v0, "$this$createSession"

    invoke-static {v10, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lcom/samsung/android/vexfwk/session/VexFwkStreamType;->SURFACE:Lcom/samsung/android/vexfwk/session/VexFwkStreamType;

    sget-object v12, Lcom/samsung/android/vexfwk/session/VexFwkStreamUsage;->IMAGE:Lcom/samsung/android/vexfwk/session/VexFwkStreamUsage;

    const/16 v6, 0x23

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object/from16 v0, p6

    move-object v2, v11

    move-object v3, v12

    move/from16 v4, p0

    move/from16 v5, p1

    invoke-static/range {v0 .. v9}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;->addInputStream$default(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;ILcom/samsung/android/vexfwk/session/VexFwkStreamType;Lcom/samsung/android/vexfwk/session/VexFwkStreamUsage;IIILandroid/view/Surface;ILjava/lang/Object;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;

    const/4 v1, 0x1

    move-object/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;->addOutputStream(ILcom/samsung/android/vexfwk/session/VexFwkStreamType;Lcom/samsung/android/vexfwk/session/VexFwkStreamUsage;IIILandroid/view/Surface;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;

    new-instance v0, LB9/c;

    move-object v13, v0

    move/from16 v14, p3

    move/from16 v15, p0

    move/from16 v16, p1

    move/from16 v17, p4

    move/from16 v18, p5

    invoke-direct/range {v13 .. v18}, LB9/c;-><init>(IIIIF)V

    invoke-virtual {v10, v0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;->setConfigMetadata(Lsb/k;)V

    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method

.method private static final configure$lambda$3$lambda$2$lambda$1(IIIIFLcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;
    .locals 1

    const-string v0, "$this$setConfigMetadata"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$IMAGE_FORMAT;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$IMAGE_FORMAT;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p5, v0, p0}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->set(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$IMAGE_SIZE;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$IMAGE_SIZE;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p5, p0, v0}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->set(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$ROTATION_DEGREE;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$ROTATION_DEGREE;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p5, p0, p1}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->set(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$FRAME_RATE;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$FRAME_RATE;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p5, p0, p1}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->set(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic d()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->isAvailable_delegate$lambda$8()Z

    move-result v0

    return v0
.end method

.method public static synthetic e()[I
    .locals 1

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->availableUpsampleFactors_delegate$lambda$10()[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Lcom/samsung/android/vexfwk/param/VexFwkFrcStatus;IFLcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->run$lambda$5(Lcom/samsung/android/vexfwk/param/VexFwkFrcStatus;IFLcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static final getAvailableUpsampleFactors()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->Companion:Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$Companion;->getAvailableUpsampleFactors()[I

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(IILandroid/view/Surface;IIFLcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->configure$lambda$3$lambda$2(IILandroid/view/Surface;IIFLcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static final isAvailable()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->Companion:Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$Companion;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private static final isAvailable_delegate$lambda$8()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->Companion:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase$Companion;

    sget-object v1, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->FRAME_RATE_CONVERSION:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    invoke-virtual {v0, v1}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase$Companion;->isAvailable(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;)Z

    move-result v0

    return v0
.end method

.method public static synthetic j(IIIIFLcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->configure$lambda$3$lambda$2$lambda$1(IIIIFLcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private static final run$lambda$5(Lcom/samsung/android/vexfwk/param/VexFwkFrcStatus;IFLcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;
    .locals 1

    const-string v0, "$this$setSettingMetadata"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$FRC_STATUS;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$FRC_STATUS;

    invoke-virtual {p3, v0, p0}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->set(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$UPSAMPLE_FACTOR;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$UPSAMPLE_FACTOR;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->set(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Ljava/lang/Object;)V

    sget-object p0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$FRAME_RATE;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$FRAME_RATE;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->set(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method


# virtual methods
.method public final configure(IIILandroid/view/Surface;IF)Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;
    .locals 9
    .param p4    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, LB9/a;

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p1

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, LB9/a;-><init>(IILandroid/view/Surface;IIFI)V

    invoke-virtual {p0, p0, v8}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->configureWith(Ljava/lang/Object;Lsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;

    return-object p0
.end method

.method public final getInputSurface()Landroid/view/Surface;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->FRAME_RATE_CONVERSION:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    invoke-virtual {p0, v0}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->getSession(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->getStreams()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;

    invoke-virtual {v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;->getId()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final run(Lcom/samsung/android/vexfwk/param/VexFwkFrcStatus;IF)V
    .locals 2
    .param p1    # Lcom/samsung/android/vexfwk/param/VexFwkFrcStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->Companion:Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$Companion;->getAvailableUpsampleFactors()[I

    move-result-object v1

    invoke-static {p2, v1}, Lfb/l;->f(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async$Builder;

    invoke-direct {v0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequestKt;->addInputBuffer(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;I)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequestKt;->addOutputBuffer(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;I)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;

    move-result-object v0

    new-instance v1, LB9/d;

    invoke-direct {v1, p1, p2, p3}, LB9/d;-><init>(Lcom/samsung/android/vexfwk/param/VexFwkFrcStatus;IF)V

    invoke-static {v0, v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequestKt;->setSettingMetadata(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;Lsb/k;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async$Builder;

    iget-object p2, p0, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner;->sessionCallback:Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$sessionCallback$1;

    invoke-virtual {p1, p2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async$Builder;->setCallback(Lcom/samsung/android/vexfwk/sdk/common/runtime/IVexFwkSessionCallback;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async$Builder;->build()Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async;

    move-result-object p1

    :try_start_0
    sget-object p2, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->FRAME_RATE_CONVERSION:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    invoke-virtual {p0, p2}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->getSession(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->processRequest(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {p1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/frcrunner/VexFwkFrcRunner$Companion;->getAvailableUpsampleFactors()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported upsample factor: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Available factors are "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
