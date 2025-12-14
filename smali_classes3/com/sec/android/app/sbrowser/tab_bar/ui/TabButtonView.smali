.class public Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;


# instance fields
.field private mCloseButton:Landroid/widget/ImageView;

.field private final mCloseButtonClickListener:Landroid/view/View$OnClickListener;

.field private mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

.field private mDivider:Landroid/widget/ImageView;

.field private final mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mIsAnimating:Z

.field private mIsClosing:Z

.field private mIsCreating:Z

.field private mIsFaviconFetched:Z

.field private mIsInGroup:Z

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private final mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;

.field private mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

.field private mProgressBarAnimator:Landroid/animation/ValueAnimator;

.field private mRequestedFaviconUrl:Ljava/lang/String;

.field private final mSkipSecondaryButtonListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private final mTabButtonClickListener:Landroid/view/View$OnClickListener;

.field private mTabButtonFavicon:Landroid/widget/ImageView;

.field private mTabButtonFaviconLayout:Landroid/view/View;

.field private mTabButtonFaviconText:Landroid/widget/TextView;

.field private mTabButtonForeground:Landroid/view/View;

.field private mTabButtonLayout:Landroid/view/View;

.field private mTabButtonProgress:Landroidx/appcompat/widget/SeslProgressBar;

.field private mTabButtonShadow:Landroid/view/View;

.field private mTabButtonTitle:Landroid/widget/TextView;

.field private mTabButtonTitleLayout:Landroid/view/View;

.field private mTabId:I

.field private final mTouchDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;

.field private final mTouchListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;

.field private mUnlockButton:Landroid/widget/ImageView;

.field private final mUnlockButtonClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$1;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$2;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$3;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$3;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/main_view/b;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/common/main_view/b;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mSkipSecondaryButtonListener:Landroid/view/View$OnTouchListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$4;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$4;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/o;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/o;-><init>(Landroid/view/ViewGroup;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$5;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$5;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTouchDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$6;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView$6;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTouchListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->handleGenericMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->lambda$onAnimationEnd$4()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->lambda$dispatchHoverEvent$2()V

    return-void
.end method

.method public static synthetic d(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->lambda$startProgressBarAnimation$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->lambda$onAnimationCancel$3()V

    return-void
.end method

.method private getParentGroupView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getParentView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    return-object p0
.end method

.method private getParentView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    return-object p0
.end method

.method private getPositionX()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getParentView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getParentGroupView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getParentView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getParentGroupView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    add-int v0, p0, v1

    :cond_0
    return v0
.end method

.method private getScreenID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->isIncognitoTab(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "202"

    goto :goto_0

    :cond_1
    const-string p0, "201"

    :goto_0
    return-object p0
.end method

.method private getTabButtonBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabButtonBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabButtonInGroupBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabButtonBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method private handleGenericMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    return-object p0
.end method

.method private initCloseUnlockButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButton:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140313

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButton:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButton:Landroid/widget/ImageView;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isAvailableFavicon(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNextOnCurrentTab()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getParentLayout()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getParentLayout()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getIndex()I

    move-result p0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getCurrentTabIndex()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-ne v0, p0, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonLayout:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$dispatchHoverEvent$2()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setCloseUnlockButtonVisibility(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onClick(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method

.method private synthetic lambda$onAnimationCancel$3()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onRemoved(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$4()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onRemoved(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method

.method private synthetic lambda$startProgressBarAnimation$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonProgress:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->sendAccessibilityEventIfNeeded(Landroid/view/View;)V

    return-void
.end method

.method private resetProgressAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventIfNeeded(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method private setCloseUnlockButtonVisibility(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsCreating:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isLocked()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->updateMarginBetweenTitleAndClose(Z)V

    return-void
.end method

.method private setForegroundVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonForeground:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setOnTouchListener()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mSkipSecondaryButtonListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mSkipSecondaryButtonListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTouchDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTouchListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;)V

    return-void
.end method

.method private setProgressbarAnimation(I)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->resetProgressAnimation()V

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonProgress:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->startProgressBarAnimation(I)V

    return-void
.end method

.method private setProgressbarVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonProgress:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonProgress:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonProgress:Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setTitleTextColor(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabButtonTitleTextColor(ZZ)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setTitleTypeFace(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const p1, 0x7f1502eb

    goto :goto_0

    :cond_0
    const p1, 0x7f1502ec

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method private startProgressBarAnimation(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonProgress:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslProgressBar;->getProgress()I

    move-result v0

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/j;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mProgressBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateBackgroundResource()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonLayout:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabButtonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundWithoutChangingHotspot(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateCloseButtonDrawable()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabButtonClosedButtonBackground(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabButtonCloseButtonColor(ZZ)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setCloseUnlockButtonVisibility(Z)V

    return-void
.end method

.method private updateDividerColor()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDivider:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getDividerColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private updateDividerVisibility()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isPreviousOnCurrentTabInGroup()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isFirstTab()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isNextOnCurrentTab()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setDividerVisibility(Z)V

    return-void
.end method

.method private updateForegroundResource()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getTabColor(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabButtonForegroundDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonForeground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonForeground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setForegroundVisibility(Z)V

    return-void
.end method

.method private updateProgressBarDrawable()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonProgress:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateShadow()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonShadow:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabBarTheme()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarTheme;->isShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonShadow:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateTextFavicon(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsFaviconFetched:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateTextFavicon] for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabButtonView"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isSavedPageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getOriginalUrl(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object p1, v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonFavicon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonFaviconText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonFaviconText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainNameFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/util/TabButtonFaviconFetcher;->loadFavicon(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Ljava/lang/String;)V

    return-void
.end method

.method private updateTitleTextColor()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setTitleTextColor(ZZ)V

    return-void
.end method

.method private updateTitleTypeFace()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setTitleTypeFace(Z)V

    return-void
.end method


# virtual methods
.method public captureTabAsyncForPreview(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->captureTabAsyncForPreview(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/m;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setCloseUnlockButtonVisibility(Z)V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getActualTabCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getShowingChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getRemovingChildCount()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getAnimationViewWidth()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->getTabButtonWidth()I

    move-result p0

    return p0
.end method

.method public getBackgroundView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonLayout:Landroid/view/View;

    return-object p0
.end method

.method public getEndMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->getEndMargin()I

    move-result p0

    return p0
.end method

.method public getFaviconLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonFaviconLayout:Landroid/view/View;

    return-object p0
.end method

.method public getFirstTabButtonMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getFirstTabButtonMargin()I

    move-result p0

    return p0
.end method

.method public getFullscreenBitmapFromCache(I)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getFullscreenBitmapFromCache(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getGroupColorId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getGroupName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getGroupColorId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getGroupColorValue()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getGroupColorValue()I

    move-result p0

    return p0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getGroupName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHoveredBitmap()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setTitleTextColor(ZZ)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setTitleTypeFace(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setCloseUnlockButtonVisibility(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setDividerVisibility(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setProgressbarVisibility(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setForegroundVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonLayout:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabButtonHoverDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundWithoutChangingHotspot(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonLayout:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabButtonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundWithoutChangingHotspot(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateForegroundResource()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateCloseUnlockButtonVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateDividerVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateTitleTypeFace()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateTitleTextColor()V

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getIndex(I)I

    move-result p0

    return p0
.end method

.method public getLeftEdge()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getPositionX()I

    move-result p0

    return p0
.end method

.method public getParentLayout()Landroid/view/ViewGroup;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getRemovingChildCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isClosing()Z

    move-result p0

    return p0
.end method

.method public getRequestedFaviconUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mRequestedFaviconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getRightEdge()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getPositionX()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic getShowingChildCount()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getShowingChildCount()I

    move-result p0

    return p0
.end method

.method public getStartMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->getStartMargin()I

    move-result p0

    return p0
.end method

.method public getSwitchOffset()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getTabCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isClosing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getTabHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getTabHeight()I

    move-result p0

    return p0
.end method

.method public getTabId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    return p0
.end method

.method public getTabWidth()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getTabWidth()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TabButtonView["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    const-string v1, "]"

    invoke-static {v0, p0, v1}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitleLayout()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonTitleLayout:Landroid/view/View;

    return-object p0
.end method

.method public getTitleText()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getUrl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public initialize(ILcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsCreating:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateLayout()V

    return-void
.end method

.method public isCloseUnlockButtonVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isClosing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsClosing:Z

    return p0
.end method

.method public isCreating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsCreating:Z

    return p0
.end method

.method public isCurrentTab()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->isCurrentTab(I)Z

    move-result p0

    return p0
.end method

.method public isDummyTab()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->isValidTab(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFirstTab()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isClosing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v2, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;->isFirstTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Z

    move-result p0

    return p0

    :cond_2
    instance-of v2, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->isFirstTabButton(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public isInCollapsedGroup()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getParentGroupView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isCollapsed()Z

    move-result p0

    return p0
.end method

.method public isInExpandedGroup()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getParentGroupView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isExpanded()Z

    move-result p0

    return p0
.end method

.method public isInGroup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsInGroup:Z

    return p0
.end method

.method public isIncognitoChild()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->isIncognitoTab(I)Z

    move-result p0

    return p0
.end method

.method public isLastTab()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isClosing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v2, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;->isLastTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Z

    move-result p0

    return p0

    :cond_2
    instance-of v2, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->isLastTabButton(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public isLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->isLockedTab(I)Z

    move-result p0

    return p0
.end method

.method public isPreviousOnCurrentTabInGroup()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getParentView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result p0

    return p0
.end method

.method public isProgressBarVisible()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonProgress:Landroidx/appcompat/widget/SeslProgressBar;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isSelected()Z
    .locals 0

    invoke-super {p0}, Landroid/view/View;->isActivated()Z

    move-result p0

    return p0
.end method

.method public onAnimationCancel(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setIsAnimating(Z)V

    sget-object v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;->DELETE:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setActivated(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/m;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/m;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setIsAnimating(Z)V

    sget-object v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;->RESIZE:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setIsCreatingEnded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateMargin()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;->DELETE:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setActivated(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/m;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/m;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;->RESIZE:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setIsAnimating(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateMargin()V

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;F)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;->DELETE:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateTabButtonMarginWithRatio(F)V

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateLayoutParam(I)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0c98

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0b0c97

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonForeground:Landroid/view/View;

    const v0, 0x7f0b0c9f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonTitleLayout:Landroid/view/View;

    const v0, 0x7f0b0c95

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonFaviconLayout:Landroid/view/View;

    const v0, 0x7f0b0c94

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonFavicon:Landroid/widget/ImageView;

    const v0, 0x7f0b0c96

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonFaviconText:Landroid/widget/TextView;

    const v0, 0x7f0b0c9e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonLayout:Landroid/view/View;

    const v1, 0x7f0b0c93

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDivider:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonLayout:Landroid/view/View;

    const v1, 0x7f0b0c9a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonProgress:Landroidx/appcompat/widget/SeslProgressBar;

    const v0, 0x7f0b0c92

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    const v0, 0x7f0b0c99

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButton:Landroid/widget/ImageView;

    const v0, 0x7f0b0c9d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonShadow:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->initCloseUnlockButton()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setCloseUnlockButtonVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateDividerVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setOnTouchListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonLayout:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/n;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    sub-int v0, p4, p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->getTabButtonWidth()I

    move-result v1

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public printTabs()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCreating()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isDummyTab()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "*"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeTabWithAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onRemoveWithAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method

.method public setActivated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setActivated(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateMargin()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateDrawable()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setCloseUnlockButtonVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateDividerVisibility()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setProgressbarVisibility(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isInGroup()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getParentGroupView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateMargin()V

    :cond_1
    return-void
.end method

.method public setDividerVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDivider:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setDragging(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setEnableCloseUnlockButton(Z)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setEnableCloseUnlockButton(Z)V

    :goto_0
    return-void
.end method

.method public setEnableCloseUnlockButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mUnlockButton:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setEnableCloseUnlockButton(Z)V

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public setIsAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsAnimating:Z

    return-void
.end method

.method public setIsClosing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsClosing:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setEnabled(Z)V

    return-void
.end method

.method public setIsCreatingEnded()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsCreating:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsCreating:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateDrawable()V

    return-void
.end method

.method public setIsInGroup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsInGroup:Z

    return-void
.end method

.method public setRequestedFaviconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mRequestedFaviconUrl:Ljava/lang/String;

    return-void
.end method

.method public updateCloseUnlockButtonVisibility()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCurrentTab()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setCloseUnlockButtonVisibility(Z)V

    return-void
.end method

.method public updateDrawable()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateBackgroundResource()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateForegroundResource()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateProgressBarDrawable()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateCloseButtonDrawable()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateTitle()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateTitleTextColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateTitleTypeFace()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateFavicon()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateDividerColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateDividerVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateShadow()V

    return-void
.end method

.method public updateFavicon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateFavicon(Ljava/lang/String;)V

    return-void
.end method

.method public updateFavicon(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateFavicon] for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabButtonView"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isAvailableFavicon(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsFaviconFetched:Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonFaviconText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonFavicon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonFavicon:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsFaviconFetched:Z

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateTextFavicon(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateForegroundResource()V

    return-void
.end method

.method public updateFavicon(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mIsFaviconFetched:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->shouldFetchFaviconFromHistory(I)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isSavedPageUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iget v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getOriginalUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object p1, v2

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isAvailableFavicon(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "https://r.internet.apps.samsung.com/refer?url="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateTextFavicon(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateFavicon(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateLayout()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->updateLayout()V

    return-void
.end method

.method public updateLayoutParam(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->updateLayoutParam(I)V

    return-void
.end method

.method public updateMargin()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->updateMargin()V

    return-void
.end method

.method public updateProgress(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setProgressbarAnimation(I)V

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setProgressbarVisibility(Z)V

    return-void
.end method

.method public updateTabButtonMarginWithRatio(F)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonLayoutManager;->updateTabButtonMargin(F)V

    return-void
.end method

.method public updateTitle()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getTitleOrUrl(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isShowTabButtonIdEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->printTabs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mTabButtonLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14101a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->mCloseButton:Landroid/widget/ImageView;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method
