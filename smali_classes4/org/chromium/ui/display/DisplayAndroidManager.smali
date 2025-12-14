.class public Lorg/chromium/ui/display/DisplayAndroidManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;,
        Lorg/chromium/ui/display/DisplayAndroidManager$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sDisableHdrSdkRatioCallback:Z

.field private static sDisplayAndroidManager:Lorg/chromium/ui/display/DisplayAndroidManager;


# instance fields
.field private mBackend:Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;

.field private final mIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/chromium/ui/display/DisplayAndroid;",
            ">;"
        }
    .end annotation
.end field

.field private mMainSdkDisplayId:I

.field private mNativePointer:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mIdMap:Landroid/util/SparseArray;

    new-instance v0, Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;-><init>(Lorg/chromium/ui/display/DisplayAndroidManager;I)V

    iput-object v0, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mBackend:Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/ui/display/DisplayAndroidManager;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mIdMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method private addDisplay(Landroid/view/Display;)Lorg/chromium/ui/display/DisplayAndroid;
    .locals 3

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    new-instance v1, Lorg/chromium/ui/display/PhysicalDisplayAndroid;

    sget-boolean v2, Lorg/chromium/ui/display/DisplayAndroidManager;->sDisableHdrSdkRatioCallback:Z

    invoke-direct {v1, p1, v2}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;-><init>(Landroid/view/Display;Z)V

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1, p1}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->updateFromDisplay(Landroid/view/Display;)V

    return-object v1
.end method

.method public static bridge synthetic b(Lorg/chromium/ui/display/DisplayAndroidManager;)I
    .locals 0

    iget p0, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mMainSdkDisplayId:I

    return p0
.end method

.method public static bridge synthetic c(Lorg/chromium/ui/display/DisplayAndroidManager;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mNativePointer:J

    return-wide v0
.end method

.method public static bridge synthetic d()Landroid/hardware/display/DisplayManager;
    .locals 1

    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    return-object v0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDisplayForContext(Landroid/content/Context;)Landroid/view/Display;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    :try_start_0
    invoke-static {p0}, LT6/a;->k(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->getGlobalDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/chromium/ui/display/DisplayAndroidManager;->getDisplayForContextNoChecks(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayForContextNoChecks(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method private static getDisplayManager()Landroid/hardware/display/DisplayManager;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method private static getGlobalDefaultDisplay()Landroid/view/Display;
    .locals 2

    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/chromium/ui/display/DisplayAndroidManager;
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/chromium/ui/display/DisplayAndroidManager;->sDisplayAndroidManager:Lorg/chromium/ui/display/DisplayAndroidManager;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/ui/display/DisplayAndroidManager;

    invoke-direct {v0}, Lorg/chromium/ui/display/DisplayAndroidManager;-><init>()V

    sput-object v0, Lorg/chromium/ui/display/DisplayAndroidManager;->sDisplayAndroidManager:Lorg/chromium/ui/display/DisplayAndroidManager;

    invoke-direct {v0}, Lorg/chromium/ui/display/DisplayAndroidManager;->initialize()V

    :cond_0
    sget-object v0, Lorg/chromium/ui/display/DisplayAndroidManager;->sDisplayAndroidManager:Lorg/chromium/ui/display/DisplayAndroidManager;

    return-object v0
.end method

.method private initialize()V
    .locals 2

    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->getGlobalDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/display/DisplayAndroidManager;->getDisplayForContextNoChecks(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mMainSdkDisplayId:I

    invoke-direct {p0, v0}, Lorg/chromium/ui/display/DisplayAndroidManager;->addDisplay(Landroid/view/Display;)Lorg/chromium/ui/display/DisplayAndroid;

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mBackend:Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;

    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroidManager$DisplayListenerBackend;->startListening()V

    return-void
.end method

.method private static onNativeSideCreated(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->getInstance()Lorg/chromium/ui/display/DisplayAndroidManager;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/chromium/ui/display/DisplayAndroidManager;->setNativePointer(J)V

    return-void
.end method

.method private setNativePointer(J)V
    .locals 2

    iput-wide p1, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mNativePointer:J

    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManagerJni;->get()Lorg/chromium/ui/display/DisplayAndroidManager$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mNativePointer:J

    iget p2, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mMainSdkDisplayId:I

    invoke-interface {p1, v0, v1, p0, p2}, Lorg/chromium/ui/display/DisplayAndroidManager$Natives;->setPrimaryDisplayId(JLorg/chromium/ui/display/DisplayAndroidManager;I)V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/ui/display/DisplayAndroid;

    invoke-virtual {p0, p2}, Lorg/chromium/ui/display/DisplayAndroidManager;->updateDisplayOnNativeSide(Lorg/chromium/ui/display/DisplayAndroid;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDisplayAndroid(Landroid/view/Display;)Lorg/chromium/ui/display/DisplayAndroid;
    .locals 2

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/ui/display/DisplayAndroidManager;->mIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/display/DisplayAndroid;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/ui/display/DisplayAndroidManager;->addDisplay(Landroid/view/Display;)Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public updateDisplayOnNativeSide(Lorg/chromium/ui/display/DisplayAndroid;)V
    .locals 16

    move-object/from16 v3, p0

    iget-wide v0, v3, Lorg/chromium/ui/display/DisplayAndroidManager;->mNativePointer:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/ui/display/DisplayAndroid;->getInsetsAsArray()[I

    move-result-object v0

    :cond_1
    move-object v7, v0

    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManagerJni;->get()Lorg/chromium/ui/display/DisplayAndroidManager$Natives;

    move-result-object v0

    iget-wide v1, v3, Lorg/chromium/ui/display/DisplayAndroidManager;->mNativePointer:J

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayId()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/ui/display/DisplayAndroid;->getBoundsAsArray()[I

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/ui/display/DisplayAndroid;->getDipScale()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/ui/display/DisplayAndroid;->getRotationDegrees()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/ui/display/DisplayAndroid;->getBitsPerPixel()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/ui/display/DisplayAndroid;->getBitsPerComponent()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/ui/display/DisplayAndroid;->getIsWideColorGamut()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/ui/display/DisplayAndroid;->getIsHdr()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/ui/display/DisplayAndroid;->getHdrMaxLuminanceRatio()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/ui/display/DisplayAndroid;->isInternal()Z

    move-result v15

    move-object/from16 v3, p0

    invoke-interface/range {v0 .. v15}, Lorg/chromium/ui/display/DisplayAndroidManager$Natives;->updateDisplay(JLorg/chromium/ui/display/DisplayAndroidManager;ILjava/lang/String;[I[IFIIIZZFZ)V

    return-void
.end method
