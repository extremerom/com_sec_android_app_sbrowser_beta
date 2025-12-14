.class public abstract Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutEventListener;
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;


# instance fields
.field private mDimLayer:Landroid/view/View;

.field private final mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

.field private mLeftScrollButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

.field private final mNewTabBtnClickListener:Landroid/view/View$OnClickListener;

.field private final mNewTabBtnKeyListener:Landroid/view/View$OnKeyListener;

.field private mNewTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

.field private mNormalTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

.field private mNormalTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

.field private mRightScrollButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

.field private final mScrollBtnClickListener:Landroid/view/View$OnClickListener;

.field private final mScrollBtnKeyListener:Landroid/view/View$OnKeyListener;

.field private final mScrollBtnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mScrollHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mScrollHeaderKeyListener:Landroid/view/View$OnKeyListener;

.field private mSecretTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

.field private mSecretTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

.field private mTabBarContentLayout:Landroid/view/View;

.field private mTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

.field private mTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

.field private final mTabBarScrollViewListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

.field private mTabGroupScrollHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

.field private final mTabGroupScrollHeaderDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeaderDelegate;

.field private final mThemeManager:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$1;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabBarScrollViewListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/c;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/c;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNewTabBtnClickListener:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/d;

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/d;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNewTabBtnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/e;

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/e;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mScrollBtnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/c;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/c;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mScrollBtnClickListener:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/d;

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/d;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mScrollBtnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/c;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/c;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mScrollHeaderClickListener:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/d;

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/d;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mScrollHeaderKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout$2;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabGroupScrollHeaderDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeaderDelegate;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->lambda$onFinishInflate$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->lambda$initContentLayout$1(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;)Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    return-object p0
.end method

.method private initContentLayout()V
    .locals 1

    const v0, 0x7f0b0c62

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabBarContentLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private initDimLayer()V
    .locals 1

    const v0, 0x7f0b0c74

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mDimLayer:Landroid/view/View;

    return-void
.end method

.method private initNewTabButton()V
    .locals 2

    const v0, 0x7f0b0c8b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNewTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNewTabBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNewTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNewTabBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private initScrollButtons()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const v0, 0x7f0b0c8a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mLeftScrollButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mScrollBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mLeftScrollButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mScrollBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mLeftScrollButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mScrollBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0b0c8e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mRightScrollButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mScrollBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mRightScrollButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mScrollBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mRightScrollButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mScrollBtnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private initScrollViews()V
    .locals 2

    const v0, 0x7f0b0c9b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNormalTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    const v0, 0x7f0b0c8f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNormalTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    const v0, 0x7f0b0c9c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mSecretTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    const v0, 0x7f0b0c90

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mSecretTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNormalTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->setIsIncognito(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mSecretTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->setIsIncognito(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNormalTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabBarScrollViewListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->setListener(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mSecretTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabBarScrollViewListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->setListener(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;)V

    return-void
.end method

.method private initTabGroupScrollHeader()V
    .locals 2

    const v0, 0x7f0b0c83

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabGroupScrollHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabGroupScrollHeaderDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeaderDelegate;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->setDelegate(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeaderDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabGroupScrollHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->getHeader()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mScrollHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabGroupScrollHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;->getHeader()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mScrollHeaderKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private static synthetic lambda$initContentLayout$1(Landroid/view/View;IIIIIIII)V
    .locals 0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p8, p6

    invoke-static {p8}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->updateLayout()V

    :cond_1
    return-void
.end method


# virtual methods
.method public activateCurrentTabButton()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setActivated(Z)V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setActivated(Z)V

    return-void
.end method

.method public focusGroupCollapseButton(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupViewByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->focusCollapseButton()Z

    move-result p0

    return p0
.end method

.method public focusGroupHeader(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabGroupViewByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->focusGroupHeader()Z

    move-result p0

    return p0
.end method

.method public focusNewTabButton()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNewTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCurrentWidth()D
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutDelegate;->getCurrentWidth()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDimLayer()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mDimLayer:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getLayout()Landroid/view/View;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->getLayout()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutManager()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    return-object p0
.end method

.method public getLeftScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mLeftScrollButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    return-object p0
.end method

.method public getNewTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNewTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    return-object p0
.end method

.method public getRightScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mRightScrollButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    return-object p0
.end method

.method public getTabBarButtons()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getNewTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutManager;->isScrollButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getLeftScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getRightScrollButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getBackgroundView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getTabBarParentLayout()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    return-object p0
.end method

.method public getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mSecretTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNormalTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    :goto_0
    return-object p0
.end method

.method public getTabBarScrollView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    return-object p0
.end method

.method public getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    return-object p0
.end method

.method public getTabButtonByTabId(ZI)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    return-object p0
.end method

.method public getTabGroupScrollHeader()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabGroupScrollHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupScrollHeader;

    return-object p0
.end method

.method public getTabGroupViewByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->getTabGroupByName(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;

    move-result-object p0

    return-object p0
.end method

.method public getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    return-object p0
.end method

.method public isProgressBarVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isProgressBarVisible()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public lockTabButton(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateCloseUnlockButtonVisibility()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->initContentLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->initScrollViews()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->initNewTabButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->initScrollButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->initTabGroupScrollHeader()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->initDimLayer()V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/b;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public postUpdateLayout()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/a;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->setDelegate(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;)V

    return-void
.end method

.method public bridge synthetic setIsTabTearing(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->setIsTabTearing(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarLayoutInterface;->setListener(Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;)V

    return-void
.end method

.method public setNewTabButtonVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNewTabButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setScrollButtonVisibility(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mLeftScrollButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mRightScrollButton:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarControlButton;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateCurrentTabButtonProgress(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getCurrentTabButton()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateProgress(I)V

    :cond_0
    return-void
.end method

.method public abstract updateLayout()V
.end method

.method public updateTabBarParentLayout(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mSecretTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNormalTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabBarParentLayout:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    return-void
.end method

.method public updateTabBarScrollViews(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mSecretTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNormalTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mNormalTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->mSecretTabBarScrollView:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateTabButtonFavicon(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateFavicon()V

    return-void
.end method

.method public updateTabButtonFavicon(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateFavicon(Ljava/lang/String;)V

    return-void
.end method

.method public updateTabButtonTitle(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateTitle()V

    return-void
.end method

.method public updateTabGroupColor(ZLjava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->updateTabGroupColor(Ljava/lang/String;I)V

    return-void
.end method

.method public updateTabGroupName(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->getTabBarParentLayout(Z)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->updateTabGroupName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;->updateLayout()V

    return-void
.end method
