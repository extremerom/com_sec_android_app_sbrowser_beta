.class public Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimationView;
.implements Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;


# instance fields
.field private mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mCollapseButton:Landroid/widget/ImageView;

.field private final mCollapseButtonKeyListener:Landroid/view/View$OnKeyListener;

.field private mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

.field private mGroupColorId:I

.field private mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

.field private mGroupName:Ljava/lang/String;

.field private mIsAnimating:Z

.field private mIsClosing:Z

.field private mIsCreating:Z

.field private mIsExpanded:Z

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private final mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;

.field private mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

.field private mScrollHeaderListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/OnTabGroupViewUpdateListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mSkipSecondaryButtonListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private final mTouchDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;

.field private final mTouchListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupColorId:I

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$1;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mTouchDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$2;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mTouchListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/main_view/b;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/common/main_view/b;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mSkipSecondaryButtonListener:Landroid/view/View$OnTouchListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$3;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$3;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$4;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView$4;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButtonKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/o;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/o;-><init>(Landroid/view/ViewGroup;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mClickListener:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->handleGenericMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    return-object p0
.end method

.method private existCurrentTabInGroup()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupName:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->existCurrentTabInGroup(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;)Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    return-object p0
.end method

.method private getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object p0

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

.method private initCollapseButton()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButtonKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mSkipSecondaryButtonListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

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

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->onClick()V

    return-void
.end method

.method private removeTabGroupIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onRemoved(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    :cond_0
    return-void
.end method

.method private setCollapseButtonVisibility(Z)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void
.end method

.method private setEnableCollapseButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method private setOnClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setOnTouchListener()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mTouchDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mTouchListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarButtonTouchHandler;-><init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchDelegate;Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarChildTouchListener;)V

    return-void
.end method

.method private updateCollapseButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabGroupCollapseButtonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabGroupCollapseIconColor()I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private updateHeaderBackground(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabGroupHeaderRipple()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundWithoutChangingHotspot(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabGroupColor(I)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;->updateTitleColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;->updateDrawable(I)V

    :cond_0
    return-void
.end method

.method private updateTabGroupColor(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateTabGroupColor] groupColorId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabGroupView"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupColorId:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabGroupBackgroundDrawable(ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundWithoutChangingHotspot(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateHeaderBackground(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mScrollHeaderListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/OnTabGroupViewUpdateListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/OnTabGroupViewUpdateListener;->onColorChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public addTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;I)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->expandGroupView()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getFirstTabIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    sub-int v1, p2, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonCount()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;->getActualIndex(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[addTabButton] Group : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", tabId : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", first tab index : "

    const-string v5, ", indexInGroup : "

    invoke-static {v3, p2, v4, v0, v5}, Lt/b;->A(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", actualIndex : "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TabGroupView"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {p2, p1, v2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;->addTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateGroupCount()V

    return-void
.end method

.method public expandGroupView()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[expandGroupView] ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabGroupView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsExpanded:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->setCollapseButtonVisibility(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;->onExpanded(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateDrawable()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onClick(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    const-string p0, "201"

    const-string v0, "4150"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public focusCollapseButton()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public focusGroupHeader()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public getActualTabCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getShowingChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getRemovingChildCount()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getAnimationViewWidth()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->getTabGroupViewWidth()I

    move-result p0

    return p0
.end method

.method public getButtonParent()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    return-object p0
.end method

.method public getEndMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->getEndMargin()I

    move-result p0

    return p0
.end method

.method public getFirstTabButtonMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getFirstTabButtonMargin()I

    move-result p0

    return p0
.end method

.method public getFirstTabId()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result p0

    return p0
.end method

.method public getFirstTabIndex()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupName:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getIndexByGroup(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getFooterView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getGroupColorId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupColorId:I

    return p0
.end method

.method public getGroupColorValue()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getGroupColorId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;->getTabGroupColor(I)I

    move-result p0

    return p0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getGroupWidth(D)D
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabGroupHeaderWidth()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getActualTabCount()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr p1, v2

    add-double/2addr p1, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabGroupFooterWidth()D

    move-result-wide v0

    add-double/2addr v0, p1

    return-wide v0
.end method

.method public getHeaderView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    return-object p0
.end method

.method public getHoveredBitmap()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-array v1, v3, [I

    const v3, 0x10102fe

    aput v3, v1, v2

    goto :goto_0

    :cond_0
    new-array v1, v3, [I

    const v3, 0x10100a9

    aput v3, v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
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

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getLastTabId()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result p0

    return p0
.end method

.method public getLastTabIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getFirstTabIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonCount()I

    move-result p0

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getLeftEdge()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

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
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/translation/g;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/translation/g;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsExpanded:Z

    if-eqz v2, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonCount()I

    move-result p0

    int-to-long v2, p0

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRightEdge()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    return p0
.end method

.method public getShowingChildCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getStartMargin()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->getStartMargin()I

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

.method public getTabButtonByIndex(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getFirstTabIndex()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabButtonByTabId(I)Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabButtonCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getTabCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getRemovingChildCount()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getTabGroupFooterWidth()D
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getFooterView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getFooterView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-double v0, p0

    return-wide v0
.end method

.method public getTabGroupHeaderWidth()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->updateTabGroupTitleMaxWidth()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getHeaderView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getHeaderView()Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-double v0, p0

    return-wide v0
.end method

.method public getTabGroupTitleMaxWidth()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->getTabGroupTitleMaxWidth()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getTabId()I
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getTabId()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TabGroupView("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupName:Ljava/lang/String;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUrl()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getVisibleWidthByScroll(I)I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getLeftEdge()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getRightEdge()I

    move-result p0

    :goto_0
    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public initialize(Ljava/lang/String;ILcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[initialize] group : ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", theme "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabGroupView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsExpanded:Z

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsCreating:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateGroupName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateGroupCount()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateLayout()V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateDrawable(I)V

    return-void
.end method

.method public isClosing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsClosing:Z

    return p0
.end method

.method public isCollapsed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsExpanded:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isCreating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsCreating:Z

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsExpanded:Z

    return p0
.end method

.method public isFirstTab()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v2, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->isFirstTabButton(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public isFirstTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;->isFirstTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Z

    move-result p0

    return p0
.end method

.method public isGroupView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isHiddenByScroll(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isExpanded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0714d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getLeftEdge()I

    move-result v0

    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getRightEdge()I

    move-result p0

    add-int/2addr p0, v2

    if-le p0, p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getLeftEdge()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getRightEdge()I

    move-result p0

    if-le p0, p1, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public isLastTab()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v2, v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarParentLayout;->isLastTabButton(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public isLastTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;->isLastTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)Z

    move-result p0

    return p0
.end method

.method public isSelected()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->existCurrentTabInGroup()Z

    move-result p0

    return p0
.end method

.method public onAnimationCancel(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->setIsAnimating(Z)V

    return-void
.end method

.method public onAnimationEnd(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->setIsAnimating(Z)V

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;->RESIZE:Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateMargin()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->setIsAnimating(Z)V

    return-void
.end method

.method public onAnimationUpdate(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->updateMargin(F)V

    return-void
.end method

.method public onAnimationUpdate(Lcom/sec/android/app/sbrowser/tab_bar/ui/animation/TabBarAnimation$Type;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->updateLayoutParam(I)V

    return-void
.end method

.method public onClick()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->shrinkGroupView()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->expandGroupView()V

    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0c7e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    const v0, 0x7f0b0c76

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    const v0, 0x7f0b0c77

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mCollapseButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->initCollapseButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->setOnTouchListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->setOnClickListener()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/n;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    return-void
.end method

.method public printTabs()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupName:Ljava/lang/String;

    const-string v3, " "

    invoke-static {v1, v2, v3}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtonCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->printTabs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ", theme "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mDelegate:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupName:Ljava/lang/String;

    invoke-interface {v1, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;->getGroupColorId(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeAllTabs()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->removeTabGroupIfNeeded()V

    return-void
.end method

.method public removeOtherTabs(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->getTabId()I

    move-result v2

    if-eq v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isLocked()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->removeTabWithAnim(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeTab(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;->removeTabButton(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateGroupCount()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->removeTabGroupIfNeeded()V

    return-void
.end method

.method public removeTabWithAnim(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onRemoveWithAnimation(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    return-void
.end method

.method public removeUnlockedTabs()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->isLocked()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->removeTabWithAnim(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public setDragging(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->setEnableCollapseButton(Z)V

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/ViewGroup;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIsAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsAnimating:Z

    return-void
.end method

.method public setIsClosing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsClosing:Z

    return-void
.end method

.method public setIsCreatingEnded()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsCreating:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsCreating:Z

    return-void
.end method

.method public setListenerForScrollHeader(Lcom/sec/android/app/sbrowser/tab_bar/ui/OnTabGroupViewUpdateListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab_bar/ui/OnTabGroupViewUpdateListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mScrollHeaderListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/OnTabGroupViewUpdateListener;

    return-void
.end method

.method public shrinkGroupView()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[shrinkGroupView] ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabGroupView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mIsExpanded:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->setCollapseButtonVisibility(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;->onExpanded(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateDrawable()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewListener;->onClick(Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildView;)V

    const-string p0, "201"

    const-string v0, "4151"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawable()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupColorId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateDrawable(I)V

    return-void
.end method

.method public updateDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateTabGroupColor(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateCollapseButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->updateGroupCount()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateDrawable()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateGroupCount()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mButtonParent:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupParentView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;->updateGroupCount(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mScrollHeaderListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/OnTabGroupViewUpdateListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/OnTabGroupViewUpdateListener;->onCountChanged()V

    :cond_0
    return-void
.end method

.method public updateGroupName(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateGroupName] Group ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") - to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabGroupView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mGroupHeader:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupHeaderView;->updateTitle(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mScrollHeaderListener:Lcom/sec/android/app/sbrowser/tab_bar/ui/OnTabGroupViewUpdateListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/OnTabGroupViewUpdateListener;->onTitleChanged()V

    :cond_0
    return-void
.end method

.method public updateLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->updateLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateLayout()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateMargin()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->mLayoutManager:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupViewLayoutManager;->updateMargin()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabGroupView;->getTabButtons()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->updateMargin()V

    goto :goto_0

    :cond_0
    return-void
.end method
