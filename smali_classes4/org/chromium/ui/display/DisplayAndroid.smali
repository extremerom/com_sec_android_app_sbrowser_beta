.class public Lorg/chromium/ui/display/DisplayAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;,
        Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_OBSERVER_ARRAY:[Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;


# instance fields
.field private mAdaptiveRefreshRateInfo:Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;

.field private mBitsPerComponent:I

.field private mBitsPerPixel:I

.field private mBounds:Landroid/graphics/Rect;

.field private mCurrentDisplayMode:Landroid/view/Display$Mode;

.field private mDipScale:F

.field private final mDisplayId:I

.field private mDisplayModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private mHdrMaxLuminanceRatio:F

.field private mInsets:Landroid/graphics/Insets;

.field protected mIsDisplayServerWideColorGamut:Z

.field protected mIsDisplayWideColorGamut:Z

.field private mIsHdr:Z

.field private mIsInternal:Z

.field private mName:Ljava/lang/String;

.field private final mObservers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshRate:F

.field private mRotation:I

.field private mXdpi:F

.field private mYdpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;

    sput-object v0, Lorg/chromium/ui/display/DisplayAndroid;->EMPTY_OBSERVER_ARRAY:[Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mHdrMaxLuminanceRatio:F

    new-instance v0, Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;-><init>(ZFF[F)V

    iput-object v0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mAdaptiveRefreshRateInfo:Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;

    iput p1, p0, Lorg/chromium/ui/display/DisplayAndroid;->mDisplayId:I

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/display/DisplayAndroid;->mObservers:Ljava/util/WeakHashMap;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/display/DisplayAndroid;->mBounds:Landroid/graphics/Rect;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/display/DisplayAndroid;->mInsets:Landroid/graphics/Insets;

    :cond_0
    return-void
.end method

.method public static getManager()Lorg/chromium/ui/display/DisplayAndroidManager;
    .locals 1

    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroidManager;->getInstance()Lorg/chromium/ui/display/DisplayAndroidManager;

    move-result-object v0

    return-object v0
.end method

.method public static getNonMultiDisplay(Landroid/content/Context;)Lorg/chromium/ui/display/DisplayAndroid;
    .locals 1

    invoke-static {p0}, Lorg/chromium/ui/display/DisplayAndroidManager;->getDefaultDisplayForContext(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroid;->getManager()Lorg/chromium/ui/display/DisplayAndroidManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/ui/display/DisplayAndroidManager;->getDisplayAndroid(Landroid/view/Display;)Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p0

    return-object p0
.end method

.method private getObservers()[Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mObservers:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Lorg/chromium/ui/display/DisplayAndroid;->EMPTY_OBSERVER_ARRAY:[Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;

    return-object p0
.end method


# virtual methods
.method public addObserver(Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mObservers:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAdaptiveRefreshRateInfo()Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mAdaptiveRefreshRateInfo:Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;

    return-object p0
.end method

.method public getBitsPerComponent()I
    .locals 0

    iget p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mBitsPerComponent:I

    return p0
.end method

.method public getBitsPerPixel()I
    .locals 0

    iget p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mBitsPerPixel:I

    return p0
.end method

.method public getBoundsAsArray()[I
    .locals 3

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mBounds:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    filled-new-array {v0, v1, v2, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMode()Landroid/view/Display$Mode;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mCurrentDisplayMode:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public getDipScale()F
    .locals 0

    iget p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mDipScale:F

    return p0
.end method

.method public getDisplayHeight()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getDisplayId()I
    .locals 0

    iget p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mDisplayId:I

    return p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayWidth()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public getHdrMaxLuminanceRatio()F
    .locals 0

    iget p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mHdrMaxLuminanceRatio:F

    return p0
.end method

.method public getInsetsAsArray()[I
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mInsets:Landroid/graphics/Insets;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Insets;

    iget v0, p0, Landroid/graphics/Insets;->left:I

    iget v1, p0, Landroid/graphics/Insets;->top:I

    iget v2, p0, Landroid/graphics/Insets;->right:I

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    filled-new-array {v0, v1, v2, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getIsHdr()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mIsHdr:Z

    return p0
.end method

.method public getIsWideColorGamut()Z
    .locals 1

    iget-boolean v0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mIsDisplayWideColorGamut:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mIsDisplayServerWideColorGamut:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRefreshRate()F
    .locals 0

    iget p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mRefreshRate:F

    return p0
.end method

.method public getRotation()I
    .locals 0

    iget p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mRotation:I

    return p0
.end method

.method public getRotationDegrees()I
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/ui/display/DisplayAndroid;->getRotation()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :cond_3
    return v0
.end method

.method public getSupportedModes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mDisplayModes:Ljava/util/List;

    return-object p0
.end method

.method public getWindowContext()Landroid/content/Context;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isInternal()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mIsInternal:Z

    return p0
.end method

.method public removeObserver(Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/display/DisplayAndroid;->mObservers:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public update(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Insets;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Landroid/view/Display$Mode;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Boolean;Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Insets;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            "Landroid/view/Display$Mode;",
            "Ljava/util/List<",
            "Landroid/view/Display$Mode;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            "Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p13

    move-object/from16 v5, p14

    move-object/from16 v6, p18

    if-eqz v1, :cond_0

    iget-object v9, v0, Lorg/chromium/ui/display/DisplayAndroid;->mName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v10, v0, Lorg/chromium/ui/display/DisplayAndroid;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iget-object v11, v0, Lorg/chromium/ui/display/DisplayAndroid;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {v3, v11}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-eqz p4, :cond_3

    iget v12, v0, Lorg/chromium/ui/display/DisplayAndroid;->mDipScale:F

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    if-eqz p5, :cond_4

    iget v13, v0, Lorg/chromium/ui/display/DisplayAndroid;->mXdpi:F

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_4
    if-eqz p6, :cond_5

    iget v14, v0, Lorg/chromium/ui/display/DisplayAndroid;->mYdpi:F

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    move-result v15

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    :goto_5
    if-eqz p7, :cond_6

    iget v15, v0, Lorg/chromium/ui/display/DisplayAndroid;->mBitsPerPixel:I

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v15, v7, :cond_6

    const/4 v7, 0x1

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    if-eqz p8, :cond_7

    iget v15, v0, Lorg/chromium/ui/display/DisplayAndroid;->mBitsPerComponent:I

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v15, v8, :cond_7

    const/4 v8, 0x1

    goto :goto_7

    :cond_7
    const/4 v8, 0x0

    :goto_7
    if-eqz p9, :cond_8

    iget v15, v0, Lorg/chromium/ui/display/DisplayAndroid;->mRotation:I

    move/from16 v17, v14

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eq v15, v14, :cond_9

    const/4 v14, 0x1

    goto :goto_8

    :cond_8
    move/from16 v17, v14

    :cond_9
    const/4 v14, 0x0

    :goto_8
    if-eqz p10, :cond_a

    iget-boolean v15, v0, Lorg/chromium/ui/display/DisplayAndroid;->mIsDisplayWideColorGamut:Z

    move/from16 v18, v13

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eq v15, v13, :cond_b

    const/4 v13, 0x1

    goto :goto_9

    :cond_a
    move/from16 v18, v13

    :cond_b
    const/4 v13, 0x0

    :goto_9
    if-eqz p11, :cond_c

    iget-boolean v15, v0, Lorg/chromium/ui/display/DisplayAndroid;->mIsDisplayServerWideColorGamut:Z

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v15, v3, :cond_c

    const/4 v3, 0x1

    goto :goto_a

    :cond_c
    const/4 v3, 0x0

    :goto_a
    if-eqz p12, :cond_d

    iget v15, v0, Lorg/chromium/ui/display/DisplayAndroid;->mRefreshRate:F

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Float;->floatValue()F

    move-result v19

    cmpl-float v15, v15, v19

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    goto :goto_b

    :cond_d
    const/4 v15, 0x0

    :goto_b
    if-eqz v5, :cond_e

    iget-object v2, v0, Lorg/chromium/ui/display/DisplayAndroid;->mDisplayModes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v2, 0x1

    goto :goto_c

    :cond_e
    const/4 v2, 0x0

    :goto_c
    if-eqz v4, :cond_f

    iget-object v5, v0, Lorg/chromium/ui/display/DisplayAndroid;->mCurrentDisplayMode:Landroid/view/Display$Mode;

    invoke-virtual {v4, v5}, Landroid/view/Display$Mode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    goto :goto_d

    :cond_f
    const/4 v5, 0x0

    :goto_d
    if-eqz p15, :cond_10

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-boolean v1, v0, Lorg/chromium/ui/display/DisplayAndroid;->mIsHdr:Z

    if-eq v4, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_e

    :cond_10
    const/4 v1, 0x0

    :goto_e
    if-eqz p16, :cond_11

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move/from16 v19, v1

    iget v1, v0, Lorg/chromium/ui/display/DisplayAndroid;->mHdrMaxLuminanceRatio:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_f

    :cond_11
    move/from16 v19, v1

    :cond_12
    const/4 v1, 0x0

    :goto_f
    if-eqz p17, :cond_13

    iget-boolean v4, v0, Lorg/chromium/ui/display/DisplayAndroid;->mIsInternal:Z

    move/from16 v20, v1

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v4, v1, :cond_14

    const/4 v1, 0x1

    goto :goto_10

    :cond_13
    move/from16 v20, v1

    :cond_14
    const/4 v1, 0x0

    :goto_10
    if-eqz v6, :cond_16

    iget-object v4, v0, Lorg/chromium/ui/display/DisplayAndroid;->mAdaptiveRefreshRateInfo:Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;

    if-eqz v4, :cond_15

    invoke-virtual {v4, v6}, Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    :cond_15
    const/16 v16, 0x1

    goto :goto_11

    :cond_16
    const/16 v16, 0x0

    :goto_11
    if-nez v9, :cond_18

    if-nez v10, :cond_18

    if-nez v11, :cond_18

    if-nez v12, :cond_18

    if-nez v7, :cond_18

    if-nez v8, :cond_18

    if-nez v14, :cond_18

    if-nez v13, :cond_18

    if-nez v3, :cond_18

    if-nez v15, :cond_18

    if-nez v2, :cond_18

    if-nez v5, :cond_18

    if-nez v19, :cond_18

    if-nez v20, :cond_18

    if-nez v1, :cond_18

    if-eqz v16, :cond_17

    goto :goto_12

    :cond_17
    return-void

    :cond_18
    :goto_12
    if-eqz v9, :cond_19

    move-object/from16 v4, p1

    iput-object v4, v0, Lorg/chromium/ui/display/DisplayAndroid;->mName:Ljava/lang/String;

    :cond_19
    if-eqz v10, :cond_1a

    move-object/from16 v4, p2

    iput-object v4, v0, Lorg/chromium/ui/display/DisplayAndroid;->mBounds:Landroid/graphics/Rect;

    :cond_1a
    if-eqz v11, :cond_1b

    move-object/from16 v4, p3

    iput-object v4, v0, Lorg/chromium/ui/display/DisplayAndroid;->mInsets:Landroid/graphics/Insets;

    :cond_1b
    if-eqz v12, :cond_1c

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v0, Lorg/chromium/ui/display/DisplayAndroid;->mDipScale:F

    :cond_1c
    if-eqz v18, :cond_1d

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v0, Lorg/chromium/ui/display/DisplayAndroid;->mXdpi:F

    :cond_1d
    if-eqz v17, :cond_1e

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v0, Lorg/chromium/ui/display/DisplayAndroid;->mYdpi:F

    :cond_1e
    if-eqz v7, :cond_1f

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lorg/chromium/ui/display/DisplayAndroid;->mBitsPerPixel:I

    :cond_1f
    if-eqz v8, :cond_20

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lorg/chromium/ui/display/DisplayAndroid;->mBitsPerComponent:I

    :cond_20
    if-eqz v14, :cond_21

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lorg/chromium/ui/display/DisplayAndroid;->mRotation:I

    :cond_21
    if-eqz v13, :cond_22

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lorg/chromium/ui/display/DisplayAndroid;->mIsDisplayWideColorGamut:Z

    :cond_22
    if-eqz v3, :cond_23

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lorg/chromium/ui/display/DisplayAndroid;->mIsDisplayServerWideColorGamut:Z

    :cond_23
    if-eqz v19, :cond_24

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lorg/chromium/ui/display/DisplayAndroid;->mIsHdr:Z

    :cond_24
    if-eqz v20, :cond_25

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v0, Lorg/chromium/ui/display/DisplayAndroid;->mHdrMaxLuminanceRatio:F

    :cond_25
    if-eqz v15, :cond_26

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, v0, Lorg/chromium/ui/display/DisplayAndroid;->mRefreshRate:F

    :cond_26
    if-eqz v2, :cond_27

    move-object/from16 v3, p14

    iput-object v3, v0, Lorg/chromium/ui/display/DisplayAndroid;->mDisplayModes:Ljava/util/List;

    :cond_27
    if-eqz v5, :cond_28

    move-object/from16 v3, p13

    iput-object v3, v0, Lorg/chromium/ui/display/DisplayAndroid;->mCurrentDisplayMode:Landroid/view/Display$Mode;

    :cond_28
    if-eqz v1, :cond_29

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lorg/chromium/ui/display/DisplayAndroid;->mIsInternal:Z

    :cond_29
    if-eqz v16, :cond_2a

    iput-object v6, v0, Lorg/chromium/ui/display/DisplayAndroid;->mAdaptiveRefreshRateInfo:Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;

    :cond_2a
    invoke-static {}, Lorg/chromium/ui/display/DisplayAndroid;->getManager()Lorg/chromium/ui/display/DisplayAndroidManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/ui/display/DisplayAndroidManager;->updateDisplayOnNativeSide(Lorg/chromium/ui/display/DisplayAndroid;)V

    if-eqz v14, :cond_2b

    invoke-direct/range {p0 .. p0}, Lorg/chromium/ui/display/DisplayAndroid;->getObservers()[Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_2b

    aget-object v6, v1, v4

    iget v7, v0, Lorg/chromium/ui/display/DisplayAndroid;->mRotation:I

    invoke-interface {v6, v7}, Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;->onRotationChanged(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_2b
    if-eqz v12, :cond_2c

    invoke-direct/range {p0 .. p0}, Lorg/chromium/ui/display/DisplayAndroid;->getObservers()[Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_2c

    aget-object v6, v1, v4

    iget v7, v0, Lorg/chromium/ui/display/DisplayAndroid;->mDipScale:F

    invoke-interface {v6, v7}, Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;->onDIPScaleChanged(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2c
    if-eqz v15, :cond_2d

    invoke-direct/range {p0 .. p0}, Lorg/chromium/ui/display/DisplayAndroid;->getObservers()[Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_2d

    aget-object v6, v1, v4

    iget v7, v0, Lorg/chromium/ui/display/DisplayAndroid;->mRefreshRate:F

    invoke-interface {v6, v7}, Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;->onRefreshRateChanged(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_2d
    if-eqz v2, :cond_2e

    invoke-direct/range {p0 .. p0}, Lorg/chromium/ui/display/DisplayAndroid;->getObservers()[Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_2e

    aget-object v4, v1, v3

    iget-object v6, v0, Lorg/chromium/ui/display/DisplayAndroid;->mDisplayModes:Ljava/util/List;

    invoke-interface {v4, v6}, Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;->onDisplayModesChanged(Ljava/util/List;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2e
    if-eqz v5, :cond_2f

    invoke-direct/range {p0 .. p0}, Lorg/chromium/ui/display/DisplayAndroid;->getObservers()[Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_2f

    aget-object v4, v1, v3

    iget-object v5, v0, Lorg/chromium/ui/display/DisplayAndroid;->mCurrentDisplayMode:Landroid/view/Display$Mode;

    invoke-interface {v4, v5}, Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;->onCurrentModeChanged(Landroid/view/Display$Mode;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2f
    if-eqz v16, :cond_30

    invoke-direct/range {p0 .. p0}, Lorg/chromium/ui/display/DisplayAndroid;->getObservers()[Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;

    move-result-object v1

    array-length v2, v1

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v2, :cond_30

    aget-object v3, v1, v7

    iget-object v4, v0, Lorg/chromium/ui/display/DisplayAndroid;->mAdaptiveRefreshRateInfo:Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;

    invoke-interface {v3, v4}, Lorg/chromium/ui/display/DisplayAndroid$DisplayAndroidObserver;->onAdaptiveRefreshRateInfoChanged(Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_30
    return-void
.end method

.method public updateIsDisplayServerWideColorGamut(Ljava/lang/Boolean;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v11, p1

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

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v0 .. v18}, Lorg/chromium/ui/display/DisplayAndroid;->update(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Insets;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Landroid/view/Display$Mode;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Boolean;Lorg/chromium/ui/display/DisplayAndroid$AdaptiveRefreshRateInfo;)V

    return-void
.end method
