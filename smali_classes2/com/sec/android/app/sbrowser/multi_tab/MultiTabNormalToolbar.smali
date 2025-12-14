.class public Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mGroupTouchDelegate:Lf1/D;

.field private mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;

.field protected mMoreMenuButton:Landroid/widget/ImageButton;

.field private mSearchButton:Landroid/view/View;

.field private mToolbarTitle:Landroid/widget/TextView;

.field private mTouchDelegateBack:Landroid/view/TouchDelegate;

.field private mTouchDelegateSearch:Landroid/view/TouchDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->lambda$initMoreMenuLayout$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->setTouchDelegate()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->lambda$getLayoutListener$2()V

    return-void
.end method

.method private getLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/q;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/q;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;)V

    return-object v0
.end method

.method private getSize(I)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getTouchDelegateVerticalMargin()I
    .locals 2

    const v0, 0x7f07153e

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->getSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const v1, 0x7f071544

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->getSize(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v0

    return p0
.end method

.method private initMoreMenuLayout()V
    .locals 3

    const v0, 0x7f0b0ce4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060d1d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/r;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/r;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isBackButton(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

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

.method private isSearchButton(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

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

.method private synthetic lambda$getLayoutListener$2()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$initMoreMenuLayout$3(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;->onMultiTabMoreMenuClicked(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;->onBackBtnClicked()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;->onSearchBtnClicked()V

    :cond_0
    return-void
.end method

.method private setTouchDelegate()V
    .locals 1

    new-instance v0, Lf1/D;

    invoke-direct {v0, p0}, Lf1/D;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mGroupTouchDelegate:Lf1/D;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->setTouchDelegateBack()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->setTouchDelegateSearch()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->setTouchDelegateToMore()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mGroupTouchDelegate:Lf1/D;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method private setTouchDelegateBack()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mGroupTouchDelegate:Lf1/D;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v0, 0x7f071502

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->getSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->getTouchDelegateVerticalMargin()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mGroupTouchDelegate:Lf1/D;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v1}, Lf1/B;->a(IIII)Lf1/B;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lf1/D;->a(Landroid/view/View;Lf1/B;)Lf1/A;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mTouchDelegateBack:Landroid/view/TouchDelegate;

    :cond_2
    :goto_0
    return-void
.end method

.method private setTouchDelegateForTarget()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->getLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setTouchDelegateSearch()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mGroupTouchDelegate:Lf1/D;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->getTouchDelegateVerticalMargin()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mGroupTouchDelegate:Lf1/D;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v3, v0, v3, v0}, Lf1/B;->a(IIII)Lf1/B;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lf1/D;->a(Landroid/view/View;Lf1/B;)Lf1/A;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mTouchDelegateSearch:Landroid/view/TouchDelegate;

    :cond_2
    :goto_0
    return-void
.end method

.method private setTouchDelegateToMore()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mGroupTouchDelegate:Lf1/D;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f071527

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->getSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->getTouchDelegateVerticalMargin()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mGroupTouchDelegate:Lf1/D;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-static {v3, v1, v0, v1}, Lf1/B;->a(IIII)Lf1/B;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lf1/D;->a(Landroid/view/View;Lf1/B;)Lf1/A;

    :cond_1
    :goto_0
    return-void
.end method

.method private unsetTouchDelegateBack()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mGroupTouchDelegate:Lf1/D;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mTouchDelegateBack:Landroid/view/TouchDelegate;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lf1/A;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lf1/D;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private unsetTouchDelegateForTarget()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method private unsetTouchDelegateSearch()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mGroupTouchDelegate:Lf1/D;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mTouchDelegateSearch:Landroid/view/TouchDelegate;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lf1/A;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lf1/D;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public focusBackButton()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public focusToolbar()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const-string v1, "MultiTabNormalToolbar"

    if-nez v0, :cond_0

    const-string v0, "[focusToolbar] mBackButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "[focusToolbar] mMoreMenuButton"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public getMoreMenuButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mToolbarTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14103b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isMoreMenuButton(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

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

.method public isNormalToolbar(Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->isBackButton(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->isSearchButton(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->isMoreMenuButton(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public onCreateView(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->initMoreMenuLayout()V

    const p1, 0x7f0b0cc0

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    const p1, 0x7f0b0cf2

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mToolbarTitle:Landroid/widget/TextView;

    const p1, 0x7f0b0cf1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/r;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/r;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/r;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->setTouchDelegateForTarget()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "MultiTabNormalToolbar"

    const-string v1, "[onDestroyView]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mToolbarTitle:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->unsetTouchDelegateForTarget()V

    return-void
.end method

.method public onKeyLeft(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->isMoreMenuButton(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->isSearchButton(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->isBackButton(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyRight(Landroid/view/View;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->isBackButton(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->isSearchButton(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->isMoreMenuButton(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyTab(Landroid/view/View;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->isBackButton(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->isSearchButton(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setNormalToolbarTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mToolbarTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mToolbarTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public showBackButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mBackButton:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->setTouchDelegateBack()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->unsetTouchDelegateBack()V

    :goto_0
    return-void
.end method

.method public showButtons(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->showSearchButton(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->showBackButton(Z)V

    return-void
.end method

.method public showSearchButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mSearchButton:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->setTouchDelegateSearch()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->unsetTouchDelegateSearch()V

    :goto_0
    return-void
.end method

.method public updateMoreButtonBackground(Lcom/sec/android/app/sbrowser/common/constants/multi_tab/MultiTabConstants$ViewState;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$1;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$multi_tab$MultiTabConstants$ViewState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f08074f

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const p1, 0x7f060ce8

    goto :goto_0

    :pswitch_1
    const p1, 0x7f060ce9

    goto :goto_0

    :pswitch_2
    const p1, 0x7f060ce3

    goto :goto_0

    :pswitch_3
    const p1, 0x7f060ce4

    goto :goto_0

    :pswitch_4
    const p1, 0x7f060ce5

    const v0, 0x7f080750

    goto :goto_0

    :pswitch_5
    const p1, 0x7f060ce6

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->mMoreMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
