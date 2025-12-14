.class Lorg/chromium/ui/display/PhysicalDisplayAndroid;
.super Lorg/chromium/ui/display/DisplayAndroid;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final USE_CONFIGURATION:Z

.field private static sForcedDIPScale:Ljava/lang/Float;


# instance fields
.field private final mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private final mDisplay:Landroid/view/Display;

.field private mHdrSdrRatioCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->USE_CONFIGURATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/Display;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/display/DisplayAndroid;-><init>(I)V

    sget-boolean v0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->USE_CONFIGURATION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowAllThreadPolicies()Lorg/chromium/base/StrictModeContext;

    move-result-object v2

    :try_start_0
    invoke-static {v0, p1}, Lorg/chromium/ui/base/b;->k(Landroid/content/Context;Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mWindowContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_0
    new-instance v0, Lorg/chromium/ui/display/PhysicalDisplayAndroid$1;

    invoke-direct {v0, p0}, Lorg/chromium/ui/display/PhysicalDisplayAndroid$1;-><init>(Lorg/chromium/ui/display/PhysicalDisplayAndroid;)V

    iput-object v0, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {p1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-static {p1}, LT6/a;->k(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mDisplay:Landroid/view/Display;

    invoke-direct {p0}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->updateFromConfiguration()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0

    :cond_2
    iput-object v1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mWindowContext:Landroid/content/Context;

    iput-object v1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    iput-object p1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mDisplay:Landroid/view/Display;

    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mDisplay:Landroid/view/Display;

    invoke-static {p1}, Lorg/chromium/content/browser/input/b;->y(Landroid/view/Display;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    new-instance p1, Lorg/chromium/ui/display/a;

    invoke-direct {p1, p0}, Lorg/chromium/ui/display/a;-><init>(Lorg/chromium/ui/display/PhysicalDisplayAndroid;)V

    iput-object p1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mHdrSdrRatioCallback:Ljava/util/function/Consumer;

    iget-object p0, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mDisplay:Landroid/view/Display;

    new-instance p2, Lorg/chromium/ui/display/b;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-static {p0, p2, p1}, Lorg/chromium/content/browser/input/b;->x(Landroid/view/Display;Lorg/chromium/ui/display/b;Lorg/chromium/ui/display/a;)V

    goto :goto_2

    :cond_3
    iput-object v1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mHdrSdrRatioCallback:Ljava/util/function/Consumer;

    :goto_2
    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->lambda$new$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/ui/display/PhysicalDisplayAndroid;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->hdrSdrRatioChanged(Landroid/view/Display;)V

    return-void
.end method

.method private static bitsPerComponent(I)I
    .locals 1

    const/4 v0, 0x5

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x0

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static bitsPerPixel(I)I
    .locals 4

    const/16 v0, 0x18

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    new-instance v2, Landroid/graphics/PixelFormat;

    invoke-direct {v2}, Landroid/graphics/PixelFormat;-><init>()V

    invoke-static {p0, v2}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    invoke-static {p0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget p0, v2, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    return p0

    :cond_1
    if-eq p0, v1, :cond_5

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_4

    const/4 v1, 0x6

    if-eq p0, v1, :cond_3

    const/4 v1, 0x7

    if-eq p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0xc

    return p0

    :cond_3
    const/16 p0, 0xf

    return p0

    :cond_4
    const/16 p0, 0x1e

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method public static bridge synthetic c(Lorg/chromium/ui/display/PhysicalDisplayAndroid;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->updateFromConfiguration()V

    return-void
.end method

.method private static getHdrSdrRatio(Landroid/view/Display;)Ljava/lang/Float;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->b(Landroid/view/Display;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static hasForcedDIPScale()Z
    .locals 4
    .annotation build Lorg/chromium/build/annotations/EnsuresNonNull;
    .end annotation

    sget-object v0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->sForcedDIPScale:Ljava/lang/Float;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string v2, "force-device-scale-factor"

    invoke-virtual {v0, v2}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v2, v1

    :goto_0
    cmpg-float v3, v2, v1

    if-gtz v3, :cond_1

    const-string v2, "DisplayAndroid"

    const-string v3, "Ignoring invalid forced DIP scale: %s"

    invoke-static {v2, v3, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move v2, v1

    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->sForcedDIPScale:Ljava/lang/Float;

    :cond_2
    sget-object v0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->sForcedDIPScale:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private hdrSdrRatioChanged(Landroid/view/Display;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->isHdr(Landroid/view/Display;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iget-object v1, v0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->getHdrSdrRatio(Landroid/view/Display;)Ljava/lang/Float;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-super/range {v0 .. v18}, Lorg/chromium/ui/display/DisplayAndroid;->update(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Insets;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Landroid/view/Display$Mode;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Boolean;Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;)V

    return-void
.end method

.method private static isHdr(Landroid/view/Display;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/chromium/content/browser/input/b;->y(Landroid/view/Display;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateCommon(Landroid/graphics/Rect;Landroid/graphics/Insets;FFFLandroid/view/Display;)V
    .locals 23

    move-object/from16 v0, p6

    invoke-static {}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->hasForcedDIPScale()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->sForcedDIPScale:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    move/from16 v1, p3

    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {p6 .. p6}, Landroid/view/Display;->isWideColorGamut()Z

    move-result v3

    invoke-virtual/range {p6 .. p6}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v17

    invoke-virtual/range {p6 .. p6}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    array-length v6, v4

    if-lez v6, :cond_1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v18, v4

    goto :goto_1

    :cond_1
    move-object/from16 v18, v5

    :goto_1
    const/16 v4, 0x1f

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v2, v4, :cond_2

    invoke-static/range {p6 .. p6}, Lorg/chromium/ui/base/b;->m(Landroid/view/Display;)Landroid/hardware/display/DeviceProductInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lorg/chromium/ui/base/b;->c(Landroid/hardware/display/DeviceProductInfo;)I

    move-result v4

    if-ne v4, v7, :cond_2

    move v4, v7

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    const/16 v8, 0x24

    if-lt v2, v8, :cond_4

    invoke-virtual/range {p6 .. p6}, Landroid/view/Display;->hasArrSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v6}, Landroid/view/Display;->getSuggestedFrameRate(I)F

    move-result v5

    invoke-virtual {v0, v7}, Landroid/view/Display;->getSuggestedFrameRate(I)F

    move-result v6

    invoke-virtual/range {p6 .. p6}, Landroid/view/Display;->getSupportedRefreshRates()[F

    move-result-object v8

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    move-object v8, v5

    move v5, v6

    :goto_3
    new-instance v9, Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;

    invoke-direct {v9, v2, v5, v6, v8}, Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;-><init>(ZFF[F)V

    move-object/from16 v22, v9

    goto :goto_4

    :cond_4
    move-object/from16 v22, v5

    :goto_4
    invoke-virtual/range {p6 .. p6}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v7}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->bitsPerPixel(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->bitsPerComponent(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual/range {p6 .. p6}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual/range {p6 .. p6}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    invoke-static/range {p6 .. p6}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->isHdr(Landroid/view/Display;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static/range {p6 .. p6}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->getHdrSdrRatio(Landroid/view/Display;)Ljava/lang/Float;

    move-result-object v20

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-super/range {v4 .. v22}, Lorg/chromium/ui/display/DisplayAndroid;->update(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Insets;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Landroid/view/Display$Mode;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Boolean;Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;)V

    return-void
.end method

.method private updateFromConfiguration()V
    .locals 9
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    iget-object v0, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mWindowContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mWindowContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-static {v1}, LT6/a;->h(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {}, Lf1/y0;->a()I

    move-result v1

    invoke-static {}, Lf1/E;->D()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0}, Lf1/y0;->k(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0}, Lf1/y0;->j(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->h(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v4

    iget-object v0, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mWindowContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->isAutomotive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string v2, "automotive-web-ui-scale-up-enabled"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mWindowContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/chromium/ui/display/DisplayUtil;->scaleUpDisplayMetricsForAutomotive(Landroid/content/Context;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/ui/util/XrUtils;->isXrDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string v2, "xr-web-ui-scale-up-enabled"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mWindowContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/chromium/ui/display/DisplayUtil;->scaleUpDisplayMetricsForXr(Landroid/content/Context;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    :cond_1
    :goto_0
    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    iget v6, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v7, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iget-object v0, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mWindowContext:Landroid/content/Context;

    invoke-static {v0}, LT6/a;->k(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v8

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->updateCommon(Landroid/graphics/Rect;Landroid/graphics/Insets;FFFLandroid/view/Display;)V

    return-void
.end method


# virtual methods
.method public getWindowContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mWindowContext:Landroid/content/Context;

    return-object p0
.end method

.method public onDisplayRemoved()V
    .locals 2

    sget-boolean v0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->USE_CONFIGURATION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mWindowContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mWindowContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mHdrSdrRatioCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mDisplay:Landroid/view/Display;

    invoke-static {v1, v0}, Lorg/chromium/content/browser/input/b;->w(Landroid/view/Display;Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->mHdrSdrRatioCallback:Ljava/util/function/Consumer;

    :cond_1
    return-void
.end method

.method public updateFromDisplay(Landroid/view/Display;)V
    .locals 10

    sget-boolean v0, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->USE_CONFIGURATION:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->updateFromConfiguration()V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {}, Lorg/chromium/base/DeviceInfo;->isAutomotive()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string v3, "automotive-web-ui-scale-up-enabled"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/chromium/ui/display/DisplayUtil;->scaleUpDisplayMetricsForAutomotive(Landroid/content/Context;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/ui/util/XrUtils;->isXrDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    const-string v3, "xr-web-ui-scale-up-enabled"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/chromium/ui/display/DisplayUtil;->scaleUpDisplayMetricsForXr(Landroid/content/Context;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    :cond_2
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-direct {v4, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    iget v7, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v8, v1, Landroid/util/DisplayMetrics;->ydpi:F

    const/4 v5, 0x0

    move-object v3, p0

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lorg/chromium/ui/display/PhysicalDisplayAndroid;->updateCommon(Landroid/graphics/Rect;Landroid/graphics/Insets;FFFLandroid/view/Display;)V

    return-void
.end method
