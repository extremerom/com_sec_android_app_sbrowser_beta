.class public Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;
.super Landroidx/fragment/app/u;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/search_window/SearchWindowPopup;


# instance fields
.field private final mAddLock:Ljava/lang/Object;

.field private mAnchorView:Landroid/view/View;

.field private mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

.field private mDialog:Landroid/app/Dialog;

.field private mIsShowing:Z

.field private mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mQuickAccessSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;

.field private mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

.field private mShownByClient:Z

.field private mUrlSuggestionSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAddLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAddLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method private addAnchorViewLayoutChangeListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method private getFragmentTag()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "SearchWindowDialog"

    return-object p0
.end method

.method private getMaxHorizontalMargin(I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070fe2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->onQuickAccessVisibilityChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method private initializeView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070fe4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl$1;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mQuickAccessSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mUrlSuggestionSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl$2;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/ui/e;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/e;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isBottomBarShowing()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isAutoLayout()Z

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

.method private isFocusLayout()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/search_window/utils/SearchWindowLayoutUtils;->Companion:Lcom/sec/android/app/sbrowser/search_window/utils/SearchWindowLayoutUtils$Companion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isFromWidget()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/utils/SearchWindowLayoutUtils$Companion;->needToShowReverse(Z)Z

    move-result p0

    return p0
.end method

.method private isKeyboardActiveOnGED()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isShownByClient()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mShownByClient:Z

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->lambda$onAdapterNotifyItemChanged$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->lambda$onViewCreated$3(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->lambda$initializeView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$initializeView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->onDismissRequested()V

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onAdapterNotifyItemChanged$4(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mQuickAccessSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Ljava/lang/Integer;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->onMainAdapterTypeChanged(I)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroidx/lifecycle/J;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getSearchWindowMainAdapterType()Landroidx/lifecycle/S;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/d;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;I)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getQuickAccessVisibility()Landroidx/lifecycle/S;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/d;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/d;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;I)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getTheme()Landroidx/lifecycle/S;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/d;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/d;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;I)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->updatePopupPosition()V

    return-object p2
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->lambda$onViewCreated$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;Landroidx/lifecycle/J;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->lambda$onViewCreated$2(Landroidx/lifecycle/J;)V

    return-void
.end method

.method private navigateFocus(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    const/16 v0, 0x11

    if-eq p1, v0, :cond_3

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusDown(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->onThemeChanged(Ljava/lang/Integer;)V

    return-void
.end method

.method private onAdapterNotifyItemChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mQuickAccessSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mQuickAccessSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private onMainAdapterTypeChanged(I)V
    .locals 2

    const-string v0, "onMainAdapterTypeChanged "

    const-string v1, "SearchWindowDialog"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mUrlSuggestionSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mQuickAccessSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/search_window/ui/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->updateContentWidth()V

    return-void
.end method

.method private onQuickAccessVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 0

    const-string p1, "quick_access"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->onAdapterNotifyItemChanged(Ljava/lang/String;)V

    return-void
.end method

.method private onThemeChanged(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->updatePopupBackground()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->updateContentWidth()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->updatePopupView()V

    return-void
.end method

.method private removeAnchorViewLayoutChangeListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mMainLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_0
    return-void
.end method

.method private setAdapter(Landroidx/recyclerview/widget/u0;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    :cond_0
    return-void
.end method

.method private setWindowAttributes()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mDialog:Landroid/app/Dialog;

    const-string v1, "Need to check Dialog lifecycle"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "SearchWindowDialog"

    const-string v0, "Window isn\'t available"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_1

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3e8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070fe4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setElevation(F)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->isFocusLayout()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f15030a

    goto :goto_0

    :cond_2
    const p0, 0x7f15030b

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method private updateContentWidth()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return-void
.end method

.method private updatePopupBackground()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f080719

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getTheme()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const v0, 0x7f0609b1

    goto :goto_0

    :cond_2
    const v0, 0x7f0609b3

    goto :goto_0

    :cond_3
    const v0, 0x7f060d53

    goto :goto_0

    :cond_4
    const v0, 0x7f060c0c

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method private updatePopupView()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->updatePopupPosition()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->updatePopupBackground()V

    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    if-nez v0, :cond_0

    const-string p0, "SearchWindowDialog"

    const-string v0, "Binding isn\'t initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/high16 v2, 0x60000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    const-string v0, "SearchWindowDialog"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->consumeSearchEngineChangedEvent()V

    :cond_1
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mIsShowing:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, LZ3/x;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-direct {p1, v0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {p1, v0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->isShownByClient()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SearchWindowDialog"

    const-string v0, "Parent activity is re-start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->dismiss()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f150309

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140df5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "SearchWindowDialog"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/u;->onDestroyView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->removeAnchorViewLayoutChangeListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mIsShowing:Z

    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "SearchWindowDialog"

    const-string p1, "Binding isn\'t initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->isFocusLayout()Z

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mQuickAccessSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;

    if-ne p1, p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;->requestFocusToBottomLayer()Z

    move-result v0

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mUrlSuggestionSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/urlsuggestion/UrlSuggestionSearchWindowAdapter;

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusUp(Landroid/view/View;)Z

    move-result v0

    goto/16 :goto_1

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x14

    if-ne p1, v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusDown(Landroid/view/View;)Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x42

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->navigateFocus(I)Z

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    const/16 p1, 0x11

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->navigateFocus(I)Z

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_4

    const/16 p2, 0x82

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->navigateFocus(I)Z

    move-result v0

    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->clearFocus()V

    :goto_0
    move v0, v2

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_4

    const/16 p2, 0x21

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->navigateFocus(I)Z

    move-result v0

    if-nez p1, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->clearFocus()V

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    :cond_5
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->isShownByClient()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SearchWindowDialog"

    const-string v1, "Fragment returns from back-stack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->dismiss()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->updatePopupView()V

    return-void
.end method

.method public onStart()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroidx/fragment/app/u;->onStart()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InvalidDisplayException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchWindowDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->dismiss()V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->initializeView()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->setWindowAttributes()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/S;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/search_window/ui/d;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/d;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;I)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "SearchWindowDialog"

    const-string p1, "Window isn\'t available"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/search_window/ui/b;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/b;-><init>(Landroidx/fragment/app/u;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->addAnchorViewLayoutChangeListener()V

    return-void
.end method

.method public show(Lm/n;)V
    .locals 4
    .param p1    # Lm/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "show: "

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAddLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "SearchWindowDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->isShowing()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->isActivityInvalidState(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->getFragmentTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/f0;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mShownByClient:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mIsShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/f0;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->getFragmentTag()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0, p1, v0}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v2, v0, v0}, Landroidx/fragment/app/a;->f(ZZ)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string p0, "SearchWindowDialog"

    const-string p1, "Fragment is already added"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :goto_1
    const-string p0, "SearchWindowDialog"

    const-string p1, "previous popup is not destroyed properly yet"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public updatePopupPosition()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    :cond_2
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_3
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v5, v3, [I

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAnchorView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->isFocusLayout()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v6

    goto :goto_0

    :cond_4
    iget-object v6, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAnchorView:Landroid/view/View;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight(Landroid/view/View;)I

    move-result v6

    :goto_0
    const/4 v7, 0x0

    aget v8, v5, v7

    aget v9, v4, v7

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    aget v5, v5, v9

    aget v4, v4, v9

    sub-int/2addr v5, v4

    sub-int/2addr v5, v6

    filled-new-array {v8, v5}, [I

    move-result-object v4

    aget v5, v4, v7

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070fe3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    if-ge v8, v10, :cond_5

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int v8, v10, v8

    div-int/2addr v8, v3

    sub-int/2addr v5, v8

    move v8, v10

    :cond_5
    const v10, 0x10800033

    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->innerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v11, v11, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070fdf

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070fe1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f070fe0

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    goto :goto_1

    :cond_7
    move v13, v7

    :goto_1
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->isFocusLayout()Z

    move-result v15

    const/4 v3, -0x2

    const v7, 0x7f071633

    if-eqz v15, :cond_8

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    aget v4, v4, v9

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    sub-int/2addr v4, v6

    iput v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v3, v10, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v3, 0xc

    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_4

    :cond_8
    aget v6, v4, v9

    iget-object v15, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAnchorView:Landroid/view/View;

    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight(Landroid/view/View;)I

    move-result v15

    add-int/2addr v15, v6

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAnchorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v15

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v15

    add-int/2addr v15, v6

    iput v15, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->isKeyboardActiveOnGED()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_2

    :cond_9
    iget v3, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    aget v4, v4, v9

    sub-int/2addr v3, v4

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->isBottomBarShowing()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07023a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_3

    :cond_a
    :goto_2
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    if-eqz v4, :cond_b

    const/4 v6, 0x0

    invoke-static {v6, v4}, Lf1/w0;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lf1/w0;

    move-result-object v4

    iget-object v4, v4, Lf1/w0;->a:Lf1/u0;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lf1/u0;->f(I)LX0/b;

    move-result-object v4

    iget v4, v4, LX0/b;->d:I

    add-int/2addr v13, v4

    :cond_b
    :goto_3
    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v4, -0x1

    iput v4, v10, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v4, 0xc

    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    move v4, v3

    :goto_4
    iget-object v3, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object v3

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mQuickAccessSearchWindowAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;

    if-ne v3, v6, :cond_c

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mSearchWindowViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getQuickAccessVisibility()Landroidx/lifecycle/S;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x0

    invoke-virtual {v11, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    return-void

    :cond_c
    const/4 v3, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletOrDesktopMode(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result v3

    sub-int/2addr v5, v3

    :cond_d
    add-int v3, v5, v8

    iget v4, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v4, :cond_e

    sub-int v5, v4, v8

    :cond_e
    invoke-direct {v0, v5}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->getMaxHorizontalMargin(I)I

    move-result v3

    iput v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v8

    sub-int/2addr v3, v5

    invoke-direct {v0, v3}, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->getMaxHorizontalMargin(I)I

    move-result v3

    iput v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->contents:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->innerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/search_window/ui/SearchWindowDialogImpl;->mBinding:Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/SearchWindowBaseDialogBinding;->innerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
