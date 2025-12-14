.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private mArticleTitle:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

.field private mIsClosing:Z

.field private mIsMinimize:Z

.field private mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

.field private final mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

.field private final mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

.field private mOrientationChangedFlag:Z

.field private mResultView:Landroid/view/View;

.field private mResultViewBlurLayout:Landroid/widget/RelativeLayout;

.field private mResultViewBlurView:Landroid/view/View;

.field private final mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

.field private final mTranslatedArticleTitle:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurView:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurLayout:Landroid/widget/RelativeLayout;

    sget-object p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    sget-object p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->EMPTY:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mTranslatedArticleTitle:Ljava/util/Map;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->lambda$showResultViewBlurLayout$6(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;ZZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->lambda$maximizeToolbar$1(ZZLjava/lang/Boolean;)V

    return-void
.end method

.method private createChangeBoundsWithListener()LY2/i;
    .locals 2

    new-instance v0, LY2/i;

    invoke-direct {v0}, LY2/i;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$4;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)V

    invoke-virtual {v0, v1}, LY2/f0;->addListener(LY2/d0;)LY2/f0;

    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;ZZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->lambda$minimizeToolbar$0(ZZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->lambda$onConfigurationChanged$4()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->lambda$showResultViewBlurLayout$5(Z)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->lambda$updateTranslatedTitle$3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getParamsForRootView()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x2

    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 p0, 0xc

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p0, 0xe

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_0
    return-object v0
.end method

.method private getResultViewBottomMargin()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getBottomBarHeightBasedOnConfiguration()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getToolbarHeight()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private getResultViewTopMargin()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getToolbarHeight()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->lambda$adjustToolbar$2(ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    return-object p0
.end method

.method private initResultViewBlurView()V
    .locals 8

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurView:Landroid/view/View;

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurUiLowRegular(Landroid/content/Context;Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurView:Landroid/view/View;

    const/16 v6, 0x8

    const v7, 0x7f06005d

    const/4 v4, 0x1

    const/16 v5, 0xfa

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurEffect(Landroid/content/Context;Landroid/view/View;ZIII)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mIsClosing:Z

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mIsMinimize:Z

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    return-object p0
.end method

.method private synthetic lambda$adjustToolbar$2(ZLjava/lang/Boolean;)V
    .locals 3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mIsMinimize:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mIsMinimize:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->adjustToolbar()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->adjustToolbar()V

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mOrientationChangedFlag:Z

    const-wide/16 v0, 0x64

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->createChangeBoundsWithListener()LY2/i;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, LY2/f0;->setDuration(J)LY2/f0;

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mOrientationChangedFlag:Z

    goto :goto_2

    :cond_2
    new-instance p1, LY2/i;

    invoke-direct {p1}, LY2/i;-><init>()V

    invoke-virtual {p1, v0, v1}, LY2/f0;->setDuration(J)LY2/f0;

    :goto_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->excludeChildFromTransition(LY2/f0;)V

    invoke-static {p0, p1}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$maximizeToolbar$1(ZZLjava/lang/Boolean;)V
    .locals 6

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->getToolbarWindow()Landroid/view/ViewGroup;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->fadeOutAndHide(Landroid/view/ViewGroup;JZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->getToolbarWindow()Landroid/view/ViewGroup;

    move-result-object v1

    const-wide/16 v2, 0x64

    const/4 v4, 0x1

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->fadeInAndShow(Landroid/view/ViewGroup;JZZ)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getTargetLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateTranslatedTitle(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    new-instance p1, LY2/i;

    invoke-direct {p1}, LY2/i;-><init>()V

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, LY2/f0;->setDuration(J)LY2/f0;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->excludeChildFromTransition(LY2/f0;)V

    invoke-static {p0, p1}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$minimizeToolbar$0(ZZLjava/lang/Boolean;)V
    .locals 6

    const-wide/16 v0, 0x64

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->getToolbarWindow()Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->fadeOutAndHide(Landroid/view/ViewGroup;JZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->getToolbarWindow()Landroid/view/ViewGroup;

    move-result-object v1

    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->fadeInAndShow(Landroid/view/ViewGroup;JZZ)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getTargetLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateTranslatedTitle(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    new-instance p1, LY2/i;

    invoke-direct {p1}, LY2/i;-><init>()V

    invoke-virtual {p1, v0, v1}, LY2/f0;->setDuration(J)LY2/f0;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->excludeChildFromTransition(LY2/f0;)V

    invoke-static {p0, p1}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$4()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/m;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/m;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;I)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showResultViewBlurLayout$5(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$showResultViewBlurLayout$6(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/o;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/o;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;ZI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateTranslatedTitle$3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mArticleTitle:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->setArticleTitle(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mTranslatedArticleTitle:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->setArticleTitle(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateTranslatedTitle(Ljava/lang/String;)V

    return-void
.end method

.method private static onFinishCloseToolbarAnimation(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->onFinishCloseToolbarAnimation(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;)V

    return-void
.end method

.method private setArticleTitle(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->setArticleTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->setArticleTitle(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->adjustToolbar(Z)V

    return-void
.end method

.method private setBottomMarginForResultView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->getResultViewBottomMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTopMarginForResultView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->getResultViewTopMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showLightEffect()V
    .locals 12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0x11170

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->getToolbarWindow()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->getToolbarWindow()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;

    const/4 p0, 0x1

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;-><init>(I)V

    sget-object v6, Lm9/b;->Mono:Lm9/b;

    sget-object v7, Lk9/p;->LUMINANCE:Lk9/p;

    sget-object v8, Lk9/n;->LUMINANCE_LONG:Lk9/n;

    const-wide/16 v9, 0x190

    sget-object v11, Lk9/o;->NONE:Lk9/o;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v1 .. v11}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils;->showLightEffectAnimation(Landroid/view/View;Landroid/graphics/drawable/Drawable;ILcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ZLm9/b;Lk9/p;Lk9/n;JLk9/o;)Lk9/r;

    :cond_0
    return-void
.end method

.method private updateArticleTitleInternal(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mArticleTitle:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mTranslatedArticleTitle:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mArticleTitle:Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getTargetLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateTranslatedTitle(Ljava/lang/String;)V

    return-void
.end method

.method private updateTranslatedTitle(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mArticleTitle:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->setArticleTitle(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateTranslatedTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isTranslationEnabled()Z

    move-result v0

    const-string v1, "si__ReadAloudToolbar"

    if-eqz v0, :cond_2

    const-string v0, "updateTranslatedTitle(): translate -> "

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mTranslatedArticleTitle:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mArticleTitle:Ljava/lang/String;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/c;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->requestTranslate(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->setArticleTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateTranslatedTitle(): original -> "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getSourceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mArticleTitle:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->setArticleTitle(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addToolbar(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isFromSBrowser()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->getParamsForRootView()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isFromCustomTab()Z

    move-result p2

    if-eqz p2, :cond_3

    instance-of p2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance p2, LR0/d;

    const/4 v0, -0x1

    invoke-direct {p2, v0}, LR0/d;-><init>(I)V

    const/16 v0, 0x51

    iput v0, p2, LR0/d;->c:I

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public adjustToolbar(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustToolbar(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadAloudToolbar"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isFromSBrowser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultViewInSideMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onMinimized()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onMaximized()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateNavigationBarColor()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getVisibleBottomMargin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->adjustToolbarPosition(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/G;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/G;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;->adjustToolbarWindow(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public adjustToolbarForOrientationChange()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mOrientationChangedFlag:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->adjustToolbar(Z)V

    :cond_0
    return-void
.end method

.method public adjustToolbarPosition(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;->setAdditionalMargin(I)V

    return-void
.end method

.method public bringResultViewToFront()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurLayout:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method public clearSummaryHighlight()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->clearSummaryHighlight()V

    return-void
.end method

.method public clearSummaryTextView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->clearSummaryTextView()V

    return-void
.end method

.method public closeToolbar(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1
    .param p1    # Landroid/animation/AnimatorListenerAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mIsClosing:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->isMaximized()Z

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;->hideToolbarWindow(ZLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mArticleTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mTranslatedArticleTitle:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->hideSpinner()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->cleanUp()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public destroy(Landroid/view/ViewGroup;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$5;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;Landroid/view/View;)V

    invoke-virtual {p0, v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->closeToolbar(Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateNavigationBarColor()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->destroy()V

    return-void
.end method

.method public fadeInAndShow(Landroid/view/ViewGroup;JZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p4, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {p4, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$1;

    invoke-direct {p2, p0, p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public fadeOutAndHide(Landroid/view/ViewGroup;JZ)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$2;

    invoke-direct {p3, p0, p4, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$2;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;ZLandroid/view/ViewGroup;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const v3, 0x1020002

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_1

    return v1

    :cond_1
    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of v3, p0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    move-object v2, p0

    :cond_2
    if-eqz v2, :cond_3

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {v2, p0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x0

    aget v5, p0, v3

    aget v6, p0, v0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v7, v3, v4

    aget p0, p0, v0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p0

    sub-int v8, v0, p0

    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    :cond_3
    return v1
.end method

.method public getDelegate()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    return-object p0
.end method

.method public highlightSummary(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->highlightSummary(II)V

    return-void
.end method

.method public initialize()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mIsMinimize:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onMinimized()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onMaximized()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->initialize()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->initialize()V

    return-void
.end method

.method public initialize(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;ZZILandroid/view/ViewGroup;Landroid/view/View;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;",
            "ZZI",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->setDelegate(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->setListener(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->initialize()V

    invoke-virtual {p0, p3, p4, p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateTheme(ZZI)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->initResultViewBlurView()V

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultView:Landroid/view/View;

    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurLayout:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurView:Landroid/view/View;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurLayout:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultView:Landroid/view/View;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p3, p4, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurLayout:Landroid/widget/RelativeLayout;

    :cond_0
    invoke-virtual {p0, p6, p7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->addToolbar(Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$6;

    invoke-direct {p1, p0, p8, p9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$6;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;Ljava/util/List;I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->showToolbar(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public isClosing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mIsClosing:Z

    return p0
.end method

.method public isMaximized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mIsMinimize:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isMinimized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mIsMinimize:Z

    return p0
.end method

.method public isNeedToSetLandscape()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isFromSBrowser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isFromCustomTab()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public isNeedToSetMaximumHeight()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result p0

    return p0
.end method

.method public isNeedToSetTabletPortrait()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isFromSBrowser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isFromCustomTab()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public isWithHugeContents()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result p0

    return p0
.end method

.method public maximizeToolbar(ZZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->isMaximized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "maximizeToolbar(): "

    const-string v1, "si__ReadAloudToolbar"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mIsMinimize:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isFromSBrowser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onMaximized()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateNavigationBarColor()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getVisibleBottomMargin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->adjustToolbarPosition(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/n;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;ZZI)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$3;

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar$3;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public minimizeToolbar(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->stopTransitionLightAnimationForInnerContent()V

    :cond_1
    const-string v0, "minimizeToolbar(): "

    const-string v1, "si__ReadAloudToolbar"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mIsMinimize:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isFromSBrowser()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onMinimized()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateNavigationBarColor()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getVisibleBottomMargin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->adjustToolbarPosition(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/n;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/n;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;ZZI)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;->minimizeToolbarWindow(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->hideSpinner()V

    return-void
.end method

.method public onBottomOffsetsChanged(IF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateToolbarMargin()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;->onBottomOffsetsChanged(IF)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .locals 2

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/m;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/m;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;I)V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->onFinishInflate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->onFinishInflate(Landroid/view/View;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultViewInSideMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateToolbarHeight(I)V

    return-void
.end method

.method public onTopOffsetsChanged(IIF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateToolbarMargin()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;->onTopOffsetsChanged(IIF)V

    return-void
.end method

.method public removeToolbar(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mResultViewBlurLayout:Landroid/widget/RelativeLayout;

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setClosing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mIsClosing:Z

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->setDelegate(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->setDelegate(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->setListener(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->setListener(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->setProgress(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->setProgress(I)V

    return-void
.end method

.method public setResultViewMinWidth(Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->setResultViewMinWidth(Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;)V

    return-void
.end method

.method public showResultViewBlurLayout(Z)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/o;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;ZI)V

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x64

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0xc8

    :goto_0
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showToolbar(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3
    .param p1    # Landroid/animation/AnimatorListenerAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->showLightEffect()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mIsClosing:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mWindowHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarWindowHandler;->showToolbarWindow(ZLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public updateArticleIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getArticleTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateArticleTitleInternal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateArticleIndex(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onArticleListInfoChanged(Ljava/lang/String;)V

    return-void
.end method

.method public updateArticleState(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateArticleList(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getCurrentArticleIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getArticleTitle(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateArticleTitleInternal(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateArticleTitleInternal(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateArticleSummaryState(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateArticleSummaryList(Ljava/util/List;)V

    return-void
.end method

.method public updateControlButtonContainer()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateControlButtonContainer()V

    return-void
.end method

.method public updateControlButtonsVisibility()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateControlButtonsVisibility()V

    return-void
.end method

.method public updateErrorMessage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public updateFavicon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->updateFavicon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public updateNavigationBarColor()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->stopNavigationBarColorUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->isClosing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getMaximizedNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    move-result-object v0

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    return-void
.end method

.method public updateShowListState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isListEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->showArticleList()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->hideArticleList()V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->adjustToolbar(Z)V

    return-void
.end method

.method public updateSummaryState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateSummaryState(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->adjustToolbar(Z)V

    :cond_0
    return-void
.end method

.method public updateTheme(ZZI)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->updateTheme(ZZI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->updateTheme(ZZI)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateTheme(ZZI)V

    :cond_0
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onRequestFavicon()V

    :goto_1
    return-void
.end method

.method public updateTitleContainerContentMargin()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateTitleContainerContentMargin()V

    return-void
.end method

.method public updateToolbar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->updateToolbar()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateToolbar()V

    return-void
.end method

.method public updateToolbarHeight(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->isMinimized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMinimizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMinimizedToolbar;->updateToolbarHeight(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateToolbarHeight(I)V

    :goto_0
    return-void
.end method

.method public updateToolbarMargin()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->setTopMarginForResultView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->setBottomMarginForResultView()V

    return-void
.end method

.method public updateTranslateButtonState()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateTranslateButtonState()V

    return-void
.end method

.method public updateTranslationLanguage()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getReadAloudLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateTranslatedTitle(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateTranslationLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public updateTranslationOnGoingState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateTranslationOnGoingState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->adjustToolbar(Z)V

    :cond_0
    return-void
.end method

.method public updateTranslationState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getTargetLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->updateTranslatedTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->mMaximizedToolbar:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudMaximizedToolbar;->updateTranslationState(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbar;->adjustToolbar(Z)V

    return-void
.end method
