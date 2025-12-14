.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm$Delegate;
    }
.end annotation


# static fields
.field private static volatile sPX:[F

.field private static volatile sXP:[F


# instance fields
.field private mBetweenAffiliationOffset:I

.field private final mContext:Landroid/content/Context;

.field mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm$Delegate;

.field mInitialScrollP:F

.field private final mIsMultiWindowMode:Z

.field mMaxScrollP:F

.field mMinScrollP:F

.field private final mMultiWindow:Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

.field private final mStackPeekMinScale:F

.field private final mStackRect:Landroid/graphics/Rect;

.field final mStackVisibleRect:Landroid/graphics/Rect;

.field private final mTabProgressMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final mTabRect:Landroid/graphics/Rect;

.field private final mTabStackScrollOffset:F

.field private final mTabStackTopPaddingPx:I

.field private final mTabStackWidthPaddingPct:F

.field private final mTabStackWidthPaddingPctWS:F

.field private final mTabViewTranslationZMaxPx:I

.field private final mTabViewTranslationZMinPx:I

.field private final mViewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabProgressMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mContext:Landroid/content/Context;

    const v0, 0x7f070eb1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabStackWidthPaddingPct:F

    const v0, 0x7f070eb2

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabStackWidthPaddingPctWS:F

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f070eae

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabStackScrollOffset:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070eb0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabStackTopPaddingPx:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ec2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabViewTranslationZMinPx:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ec1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabViewTranslationZMaxPx:I

    const v0, 0x7f070eaf

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackPeekMinScale:F

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getMultiWindowFromContext(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mMultiWindow:Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindow;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->isInMultiWindowMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mIsMultiWindowMode:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->initializeCurve()V

    return-void
.end method

.method private curveProgressToScale(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackPeekMinScale:F

    return p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackPeekMinScale:F

    invoke-static {v0, p0, p1, p0}, LB/e;->a(FFFF)F

    move-result p0

    return p0
.end method

.method private curveProgressToScreenX(F)I
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/16 v2, 0xfa

    if-ge v3, v2, :cond_1

    if-eq v1, v3, :cond_1

    int-to-float v0, v3

    sub-float/2addr p1, v0

    sub-int v0, v1, v3

    int-to-float v0, v0

    div-float/2addr p1, v0

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sXP:[F

    aget v0, v0, v1

    sget-object v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sXP:[F

    aget v1, v1, v3

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sXP:[F

    aget p1, p1, v3

    add-float/2addr p1, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    add-int/2addr p0, v0

    return p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0
.end method

.method private curveProgressToScreenY(F)I
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/16 v2, 0xfa

    if-ge v3, v2, :cond_1

    if-eq v1, v3, :cond_1

    int-to-float v0, v3

    sub-float/2addr p1, v0

    sub-int v0, v1, v3

    int-to-float v0, v0

    div-float/2addr p1, v0

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sXP:[F

    aget v0, v0, v1

    sget-object v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sXP:[F

    aget v1, v1, v3

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sXP:[F

    aget p1, p1, v3

    add-float/2addr p1, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method private getTabIndex(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm$Delegate;->getTabList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static declared-synchronized initializeCurve()V
    .locals 16

    const-class v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sXP:[F

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :cond_0
    const/16 v1, 0xfb

    :try_start_1
    new-array v2, v1, [F

    sput-object v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sXP:[F

    new-array v2, v1, [F

    sput-object v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v6, v4

    :goto_0
    const/16 v7, 0xfa

    const v8, 0x3b83126f    # 0.004f

    if-gt v5, v7, :cond_1

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->logFunc(F)F

    move-result v7

    aput v7, v2, v5

    add-float/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v1, [F

    aput v4, v1, v3

    const/4 v5, 0x1

    move v9, v4

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_2

    aget v10, v2, v6

    add-int/lit8 v11, v6, -0x1

    aget v11, v2, v11

    sub-float/2addr v10, v11

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    float-to-double v14, v8

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, v1, v6

    add-float/2addr v9, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    aput v4, v2, v3

    sget-object v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v2, v7

    move v2, v4

    :goto_2
    if-gt v5, v7, :cond_3

    aget v10, v1, v5

    div-float/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v2, v10

    sget-object v10, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    aput v2, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sXP:[F

    aput v4, v1, v3

    sget-object v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sXP:[F

    aput v6, v1, v7

    move v1, v3

    move v2, v4

    :goto_3
    if-ge v3, v7, :cond_7

    :goto_4
    if-ge v1, v7, :cond_5

    sget-object v5, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    aget v5, v5, v1

    cmpl-float v5, v5, v2

    if-lez v5, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    if-nez v1, :cond_6

    sget-object v5, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sXP:[F

    aput v4, v5, v3

    goto :goto_6

    :cond_6
    sget-object v5, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    sub-float v5, v2, v5

    sget-object v9, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    aget v9, v9, v1

    sget-object v10, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    aget v10, v10, v6

    sub-float/2addr v9, v10

    div-float/2addr v5, v9

    int-to-float v6, v6

    add-float/2addr v6, v5

    mul-float/2addr v6, v8

    sget-object v5, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sXP:[F

    aput v6, v5, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    add-float/2addr v2, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    monitor-exit v0

    return-void

    :goto_7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isFoldableInUnfolded()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletStyle(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInMultiWindowMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private isLandscape()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeWindow(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static logFunc(F)F
    .locals 4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->reverse(F)F

    move-result p0

    float-to-double v0, p0

    const-wide v2, 0x40a7700000000000L    # 3000.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    const v0, 0x453b8000    # 3000.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method private static reverse(F)F
    .locals 1

    neg-float p0, p0

    const/high16 v0, 0x3fe00000    # 1.75f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    return p0
.end method

.method private scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .locals 3

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    neg-int v1, p0

    neg-int v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    float-to-int p2, v1

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public computeMinMaxScroll(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabProgressMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iput v3, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mMaxScrollP:F

    iput v3, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mMinScrollP:F

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->screenXToCurveProgress(I)F

    move-result v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mBetweenAffiliationOffset:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->screenXToCurveProgress(I)F

    move-result v5

    sub-float v5, v4, v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v2

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->screenXToCurveProgress(I)F

    move-result v2

    sub-float v2, v4, v2

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int v7, v6, v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->screenXToCurveProgress(I)F

    move-result v6

    sub-float/2addr v4, v6

    const v6, 0x3ba3d70a    # 0.005f

    :goto_0
    sub-float/2addr v4, v6

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mBetweenAffiliationOffset:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v5

    sub-float v5, v4, v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v2

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v2

    sub-float v2, v4, v2

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v6, v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v6

    goto :goto_0

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->isLandscape()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    if-ne v6, v8, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->isFoldableInUnfolded()Z

    move-result v7

    if-nez v7, :cond_2

    const v7, 0x3f19999a    # 0.6f

    goto :goto_2

    :cond_2
    const/high16 v7, 0x3f000000    # 0.5f

    :goto_2
    iget-boolean v9, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mIsMultiWindowMode:Z

    if-eqz v9, :cond_3

    move v9, v8

    goto :goto_3

    :cond_3
    const/4 v9, 0x2

    :goto_3
    iget-object v10, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm$Delegate;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm$Delegate;->getScrollPosition()I

    move-result v10

    const/4 v11, 0x0

    if-ltz v10, :cond_4

    if-ge v10, v6, :cond_4

    move v12, v8

    goto :goto_4

    :cond_4
    move v12, v11

    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "[computeMinMaxScroll] scrollPosition: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", isValidScrollPosition: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "TabStackViewLayoutAlgorithm"

    invoke-static {v14, v13}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v14, v7

    move v15, v14

    move v13, v11

    :goto_5
    if-ge v11, v6, :cond_9

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabProgressMap:Ljava/util/HashMap;

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move/from16 v17, v13

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v8, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_6

    if-ne v11, v10, :cond_7

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mIsMultiWindowMode:Z

    if-eqz v1, :cond_5

    goto :goto_6

    :cond_5
    sub-int v1, v6, v9

    sub-int/2addr v1, v11

    move v13, v1

    goto :goto_7

    :cond_6
    iget-boolean v1, v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isFrontMostTab:Z

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mIsMultiWindowMode:Z

    if-eqz v1, :cond_5

    :goto_6
    move v15, v14

    :cond_7
    move/from16 v13, v17

    :goto_7
    add-int/lit8 v1, v6, -0x1

    if-ge v11, v1, :cond_8

    add-float/2addr v14, v5

    :cond_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    const/4 v3, 0x0

    const/4 v8, 0x1

    goto :goto_5

    :cond_9
    move/from16 v17, v13

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    sub-float v1, v14, v1

    iget v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabStackScrollOffset:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mMaxScrollP:F

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    iget v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mMaxScrollP:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    iget v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabStackScrollOffset:F

    sub-float v1, v2, v1

    :goto_8
    iput v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mMinScrollP:F

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mIsMultiWindowMode:Z

    if-eqz v1, :cond_b

    sub-float/2addr v15, v7

    :goto_9
    const/4 v1, 0x0

    goto :goto_a

    :cond_b
    iget v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v11, v17

    int-to-float v2, v11

    mul-float/2addr v2, v5

    sub-float v15, v1, v2

    goto :goto_9

    :goto_a
    invoke-static {v1, v15}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mInitialScrollP:F

    iget-boolean v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mIsMultiWindowMode:Z

    if-eqz v2, :cond_d

    iget v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    if-le v6, v1, :cond_d

    :cond_c
    iget v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mInitialScrollP:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v5, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mInitialScrollP:F

    iget v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_d

    sub-float/2addr v14, v5

    iput v14, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mMaxScrollP:F

    :cond_d
    return-void
.end method

.method public computeRects(IILandroid/graphics/Rect;)V
    .locals 2

    const/16 v0, 0x2bc

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    iget p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabStackWidthPaddingPct:F

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    if-lt p1, p2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->isLandscape()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabStackWidthPaddingPctWS:F

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p3, p1

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabStackTopPaddingPx:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    sub-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->isFoldableInUnfolded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    move p3, p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v1, p3, p2

    add-int/2addr p2, v0

    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x3f0ccccd    # 0.55f

    goto :goto_2

    :cond_3
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->isLandscape()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mBetweenAffiliationOffset:I

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mBetweenAffiliationOffset:I

    :goto_3
    return-void
.end method

.method public getStackScrollForTab(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->getTabIndex(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I

    move-result v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabProgressMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabProgressMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->getTabIndex(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getStackTransform(FFLcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;
    .locals 5

    sub-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpl-float v2, p1, p2

    if-lez v2, :cond_0

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->reset()V

    iget-object p1, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->rect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p3

    :cond_0
    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    if-eqz p4, :cond_1

    iget p4, p4, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->p:F

    invoke-static {p4, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p4

    if-gtz p4, :cond_1

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->reset()V

    iget-object p1, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->rect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p3

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->curveProgressToScale(F)F

    move-result p4

    sub-float/2addr p2, p4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabViewTranslationZMinPx:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabViewTranslationZMaxPx:I

    iput p4, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->scale:F

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p2, p4

    div-float/2addr p2, v2

    float-to-int p2, p2

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->curveProgressToScreenX(F)I

    move-result p4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, v2

    sub-int/2addr p4, p2

    iput p4, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationX:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->curveProgressToScreenY(F)I

    move-result p2

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p4

    sub-int/2addr p2, v1

    iput p2, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationY:I

    int-to-float p2, v3

    sub-int/2addr v4, v3

    int-to-float p4, v4

    mul-float/2addr v0, p4

    add-float/2addr v0, p2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationZ:F

    iget-object p2, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->rect:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p2, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->rect:Landroid/graphics/Rect;

    const/4 p4, 0x0

    iget v0, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->translationY:I

    invoke-virtual {p2, p4, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object p2, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->rect:Landroid/graphics/Rect;

    iget p4, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->scale:F

    invoke-direct {p0, p2, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    const/4 p0, 0x1

    iput-boolean p0, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->visible:Z

    iput p1, p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->p:F

    return-object p3
.end method

.method public getStackTransform(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;FLcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->getTabIndex(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I

    move-result v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabProgressMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mTabProgressMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->getStackTransform(FFLcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabViewTransform;->reset()V

    return-object p3
.end method

.method public screenXToCurveProgress(I)F
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0xfa

    if-ge v2, v1, :cond_1

    if-eq v0, v2, :cond_1

    int-to-float p0, v2

    sub-float/2addr p1, p0

    sub-int p0, v0, v2

    int-to-float p0, p0

    div-float/2addr p1, p0

    sget-object p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    aget p0, p0, v0

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    aget v0, v0, v2

    sub-float/2addr p0, v0

    mul-float/2addr p0, p1

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    aget p1, p1, v2

    add-float/2addr p1, p0

    :cond_2
    :goto_0
    return p1
.end method

.method public screenYToCurveProgress(I)F
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0xfa

    if-ge v2, v1, :cond_1

    if-eq v0, v2, :cond_1

    int-to-float p0, v2

    sub-float/2addr p1, p0

    sub-int p0, v0, v2

    int-to-float p0, p0

    div-float/2addr p1, p0

    sget-object p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    aget p0, p0, v0

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    aget v0, v0, v2

    sub-float/2addr p0, v0

    mul-float/2addr p0, p1

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->sPX:[F

    aget p1, p1, v2

    add-float/2addr p1, p0

    :cond_2
    :goto_0
    return p1
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewLayoutAlgorithm$Delegate;

    return-void
.end method
