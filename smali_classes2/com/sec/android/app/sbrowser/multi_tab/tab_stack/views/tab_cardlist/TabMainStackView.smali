.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;
.super Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;
.source "SourceFile"


# instance fields
.field private mIsLandscapeBefore:Z

.field private mLastTalkbackTabView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mShouldUpdateAfterOrientationChange:Z

.field private final mTabStackBounds:Landroid/graphics/Rect;

.field private mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

.field private mTabViewNewTabAnimDuration:I

.field private mTabViewOutroAnimDuration:I

.field private mTolerance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isLandscape()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mIsLandscapeBefore:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0c0089

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabViewOutroAnimDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c0088

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabViewNewTabAnimDuration:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$2400(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$2600(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    return-object p0
.end method

.method public static synthetic access$2800(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$2900(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->shouldUseDarkTheme()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$3300(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$3400(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$3500(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$3600(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$3700(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$3800(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method private addCutOutMarginIfNeeded(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isHideStatusBarEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0715d5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v0

    add-int/2addr v0, p0

    const p0, 0x7f0b0877

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v1, 0x7f0b0878

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic c(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->lambda$startOutroAnimationForInvisibleTab$2(Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->lambda$startTabViewIntroAnimation$1(I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->lambda$updateTabStacks$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mLastTalkbackTabView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    return-object p0
.end method

.method private getCloseBtnView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabView(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0b02c2

    goto :goto_0

    :cond_1
    const p0, 0x7f0b02c1

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getMidmostTabView([I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;
    .locals 13

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    :goto_0
    mul-float/2addr v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33334    # 0.35000002f

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->getViewStartPoint(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->getViewStartPoint(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v0, v6

    move v7, v3

    :goto_2
    if-ge v7, v1, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->getViewStartPoint(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v0, v9

    const/4 v10, 0x0

    cmpl-float v11, v9, v10

    if-ltz v11, :cond_2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_2

    move-object v2, v8

    move v5, v9

    :cond_2
    cmpg-float v10, v9, v10

    if-gtz v10, :cond_3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    move-object v4, v8

    move v6, v9

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_6

    array-length p0, p1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_5

    float-to-int p0, v0

    aput p0, p1, v3

    float-to-int p0, v5

    const/4 v0, 0x1

    aput p0, p1, v0

    const/4 p0, 0x2

    float-to-int v0, v6

    aput v0, p1, p0

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The size of input array needs to be 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_7

    goto :goto_4

    :cond_7
    move-object v2, v4

    :goto_4
    return-object v2
.end method

.method private getViewStartPoint(Landroid/view/View;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getTabViewLocation(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getTabViewLocation(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabViewOutroAnimDuration:I

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mLastTalkbackTabView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    return-void
.end method

.method private isLandscape()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeWindow(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static isSharableTabUrl(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isUnifiedHomepageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isInternalUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isUnifiedHomepageUrl(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->getMidmostTabView([I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isLandscape()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$startOutroAnimationForInvisibleTab$2(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    const v0, 0x7f0b0877

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private synthetic lambda$startTabViewIntroAnimation$1(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->startTabViewIntroAnimation(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTabStacks$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabAnimating()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, p0

    :goto_0
    return p1
.end method

.method private resetMaxWidthHeight()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071544

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071797

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mMaxWidth:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mMaxHeight:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070eac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTolerance:I

    return-void
.end method

.method private startOutroAnimationForExistingTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "TabMainStackView"

    const-string v1, "[startOutroAnimationForExistingTab]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->getTabViewById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->runActionsBySkipAnim(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setMultiTabOutroAnimating(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;-><init>(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mOutroAnimDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;)V

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;->startOutroAnimationExpanding(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private startOutroAnimationForInvisibleTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9

    const-string v0, "TabMainStackView"

    const-string v1, "startOutroAnimationForInvisibleTab()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTopMargin()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0ce6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0ce5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->addCutOutMarginIfNeeded(Landroid/view/View;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    :cond_3
    :goto_1
    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v2, p2

    move-object v3, p0

    move-object v5, v0

    move-object v6, p1

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$4;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;Landroid/os/Looper;Landroid/view/View;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ILjava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    new-instance p3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/d;

    invoke-direct {p3, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/d;-><init>(Landroid/view/View;)V

    invoke-interface {p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setThumbnailInView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private startOutroAnimationForNewTab(Ljava/lang/Runnable;)V
    .locals 8

    const-string v0, "TabMainStackView"

    const-string v1, "startOutroAnimationForNewTab()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isHomepageSetToNewHome()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0715d5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0714c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071646

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isHideStatusBarEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v1

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0ce6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0ce5

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    :goto_5
    const v3, 0x7f0b0877

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;

    const v4, 0x7f0b0878

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->addCutOutMarginIfNeeded(Landroid/view/View;)V

    if-nez v3, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setMultiTabOutroAnimating(Z)V

    return-void

    :cond_8
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->shouldUseDarkTheme()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->setDarkThemeEnabled(Z)V

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/widget/OutroThumbnailView;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    const v6, 0x7f060297

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabAdded()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabRemoving()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    if-eqz v5, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v5, v1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabViewNewTabAnimDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v6, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$3;

    invoke-direct {v6, p0, v4, v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$3;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;Landroid/widget/ImageView;ILjava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    invoke-virtual {v3, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setMultiTabOutroAnimating(Z)V

    :goto_6
    return-void
.end method


# virtual methods
.method public animateTabsOnLoad()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->setModeChanged(Z)V

    return-void
.end method

.method public changeTabViewVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->changeTabViewVisibility(I)V

    return-void
.end method

.method public clearAllTextHighlight()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isSecretModeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->clearTextHighlight(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public closeAllFilteredList()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->closeAllUnlockedTabs()V

    return-void
.end method

.method public closeAllUnlockedTabs()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->startCloseAllUnlockedTabsAnimation()V

    return-void
.end method

.method public dismissTabById(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->dismissTabById(IZ)V

    return-void
.end method

.method public dismissTabById(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->dismissTabById(IZ)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public focusBottomTab()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->focusForefrontTab()Z

    const/4 p0, 0x1

    return p0
.end method

.method public focusCurrTab()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getPrevFocusedIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabView(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public focusForefrontTab()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->focusForefrontTab()Z

    move-result p0

    return p0
.end method

.method public focusNextTab(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->focusNextTab(Z)Z

    move-result p0

    return p0
.end method

.method public focusTab(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isValidTabView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    check-cast p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabStack()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->getTab()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->indexOf(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->focusTab(IZZ)Z

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[focusTab:ClassCastException] "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TabMainStackView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public focusTabCloseBtn()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getPrevFocusedIndex()I

    move-result v0

    const-string v1, "[focusTabCloseBtn] focused tab index: "

    const-string v2, "TabMainStackView"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->getCloseBtnView(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public focusTopTab()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->focusForefrontTab()Z

    move-result p0

    return p0
.end method

.method public getCurrentShowingItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getFilter()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getFirstVisibleTabView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->getFirstVisibleTabView()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    move-result-object p0

    return-object p0
.end method

.method public getFirstVisibleTabView()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getFirstVisibleTabView()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    move-result-object p0

    return-object p0
.end method

.method public getGroupCnt()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getGroupCnt()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getHeaderHeight()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070eb3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getModeType()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->NORMAL:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    return-object p0
.end method

.method public getOriginalTabList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedItemList()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSharableTabCount()I
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->url:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isSharableTabUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mOriginalUrl:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isSharableTabUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getTabGroupIndex(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabStack()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->getTabGroupIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTabList(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabStack()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabStack()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->getTabList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabStack()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->getOriginalTabList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getTabViewById(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->getTabViewById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    move-result-object p0

    return-object p0
.end method

.method public getTabViewById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabViewById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    move-result-object p0

    return-object p0
.end method

.method public hasLockedTab(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->hasLockedTab(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isModeChanging()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->isModeChanging()Z

    move-result p0

    return p0
.end method

.method public isMultiTabScrolling()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->isMultiTabScrolling()Z

    move-result p0

    return p0
.end method

.method public isMultiTabTouching()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->isMultiTabTouching()Z

    move-result p0

    return p0
.end method

.method public isOnTop()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSwiping()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->isSwiping()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabCloseBtn(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getPrevFocusedIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->getCloseBtnView(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabDataLoaded(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabViewById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;->isTabDataLoaded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabStackAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getTabStack()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValidTabView(Landroid/view/View;)Z
    .locals 0

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    return p0
.end method

.method public lockSelected()V
    .locals 0

    return-void
.end method

.method public notifyAllTabsRemoved()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->returnAllTabViewsToPool()V

    return-void
.end method

.method public notifyUpdateNativePage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->updateNativePage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 2

    const-string v0, "TabMainStackView"

    const-string v1, "onLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p4, 0x8

    if-eq p1, p4, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->resetMaxWidthHeight()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isTabStackAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    iget v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mMaxWidth:I

    iget v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mMaxHeight:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTolerance:I

    invoke-virtual {v2, v4, v5, v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->setMaxWidthAndHeight(III)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->setStackInsetRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mIsLandscapeBefore:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isLandscape()Z

    move-result p2

    if-eq p1, p2, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mShouldUpdateAfterOrientationChange:Z

    if-eqz p1, :cond_1

    const-string p1, "TabMainStackView"

    const-string p2, "[onMeasure] update after orientation change"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mShouldUpdateAfterOrientationChange:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->updateTabStacks()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isLandscape()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mIsLandscapeBefore:Z

    return-void
.end method

.method public refreshTabList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->updateTabs()V

    return-void
.end method

.method public renameGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->getOriginalTabList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mGroup:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public reopenClosedTab()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->startUndoCloseTabAnimation()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->showSnackbarForReopenClosedTab(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reserveUpdateAfterDialog()V
    .locals 2

    const-string v0, "TabMainStackView"

    const-string v1, "[reserveUpdateAfterDialog]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mShouldUpdateAfterOrientationChange:Z

    return-void
.end method

.method public scrollPageUpDown(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->scrollPageUpDown(Z)V

    :cond_0
    return-void
.end method

.method public setLastVisitedGroupPosition(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setLastVisitedGroupPosition(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setScrollPosition(I)V

    return-void
.end method

.method public setModeChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->setModeChange(Z)V

    return-void
.end method

.method public shareSelected()V
    .locals 0

    return-void
.end method

.method public startCloseAllTabsAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->startCloseAllTabsAnimation()V

    return-void
.end method

.method public startIntroAnimation(Landroid/view/View;I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabOutroAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;-><init>(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mIntroAnimDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;)V

    invoke-virtual {v1, p1, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->startIntroAnimation(Landroid/view/View;IZ)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "startIntroAnimation is returned = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabOutroAnimating()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TabMainStackView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setFirstIntroAnimation(Z)V

    return-void
.end method

.method public startOutroAnimation(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabAnimating()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabModeChanging()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "startOutroAnimation"

    const-string v1, "TabMainStackView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setMultiTabOutroAnimating(Z)V

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz p1, :cond_2

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->startOutroAnimationForNewTab(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    if-nez p2, :cond_4

    const-string p1, "tab is null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getLastTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->runActionsBySkipAnim(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setMultiTabOutroAnimating(Z)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    move v2, v0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setNavigationBarColorIfNecessary(Z)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->getTabViewById(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isTabDataLoaded(I)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    move-object p3, v0

    :goto_1
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->startOutroAnimationForExistingTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    move-object p3, v0

    :goto_4
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->startOutroAnimationForInvisibleTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_9
    :goto_5
    return-void
.end method

.method public startPrivacyModeExitAnimation(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->startPrivacyModeExitAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTabViewIntroAnimation(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, LG6/c;

    const/16 v3, 0x9

    invoke-direct {v2, p1, v3, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    int-to-long p0, v0

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public supportHorizontalFocusMove()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->isLandscape()Z

    move-result p0

    return p0
.end method

.method public unlockSelected()V
    .locals 0

    return-void
.end method

.method public updateCurrentTabThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->updateCurrentTabThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public updateSearchedList(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->updateSearchedList(Ljava/lang/String;ZLjava/util/List;)V

    return-void
.end method

.method public updateSearchedListUsingSearchApi(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->updateSearchedList(Ljava/lang/String;ZLjava/util/List;)V

    return-void
.end method

.method public updateTabStacks()V
    .locals 4

    const-string v0, "TabMainStackView"

    const-string v1, "[updateTabStacks]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->reload()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->setCallbacks(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewCallbacks;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/c;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->updateTabs()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->getFilter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->searchTabs()V

    :cond_0
    return-void
.end method

.method public updateUnloadedTabThumbnails(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabMainStackView;->mTabStackView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackView;->updateUnloadedTabThumbnails(Z)V

    return-void
.end method
