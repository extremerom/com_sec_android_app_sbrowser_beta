.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;


# instance fields
.field private mAnimator:Landroidx/recyclerview/widget/D0;

.field private final mBackgroundChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mBottomEmptySpaceAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter;

.field private mCheckableControlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

.field private final mCheckedItemScrollHandler:Landroid/os/Handler;

.field private final mColorManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mConcatAdapter:Landroidx/recyclerview/widget/n;

.field private mCustomBackground:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

.field private mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

.field private mDummyUrlBarAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;

.field private mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

.field private final mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mHomepageHeaderRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

.field private mIconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

.field private final mIndexDeductionForPreview:I

.field private mIsCheckableBottomBarVisible:Z

.field private final mIsForPreview:Z

.field private final mIsLightThemed:Z

.field private final mIsSolidColorLightThemed:Z

.field private mIsToolbarHiddenWhileScrolling:Z

.field private mLastTranslatedToolbarY:I

.field private mMostVisitedIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

.field private mNewsFeedAdapterPosition:I

.field private mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

.field private mNoItemTextAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;

.field private mNoItemsTextView:Landroid/widget/TextView;

.field private mNoItemsTextViewContainer:Landroid/view/View;

.field private final mPrivacyBoardPosition:I

.field private mPrivacyBoardRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;

.field private mPromotionAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;

.field private mQuickAccessHeaderRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHeaderRecyclerAdapter;

.field private mQuickAccessHoverViewController:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverViewController;

.field private mQuickAccessIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

.field private mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

.field private mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

.field private mSyncedTabAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabsNestedAdapter;

.field private mUiModeNight:I

.field private final mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;ZZZ)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCheckedItemScrollHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsToolbarHiddenWhileScrolling:Z

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mUiModeNight:I

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedAdapterPosition:I

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/D;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/D;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mBackgroundChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsSolidColorLightThemed:Z

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsLightThemed:Z

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mColorManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/NewQuickAccessHeightManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    const/4 p1, 0x6

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPrivacyBoardPosition:I

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    const/4 p1, 0x4

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPrivacyBoardPosition:I

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isSecretModeEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->homePageIsNewGuiNewsFeed()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isNewsFeedInQuickAccessDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->fetchNewsFeedCategories()V

    invoke-interface {p3, p6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setIsLightThemed(Z)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p4, :cond_3

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->fetchSyncedTabItems()V

    :cond_3
    iput p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIndexDeductionForPreview:I

    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onAttachedToWindow$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic B(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onAttachedToWindow$1(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic C(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateTheme(I)V

    return-void
.end method

.method public static synthetic D(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateQAHeaderVisibility(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic E(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onFinishInflate$16(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p0

    return p0
.end method

.method public static synthetic F(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateBlurBackgroundBitmap()V

    return-void
.end method

.method public static synthetic G(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$setBottomEmptySpaceVisibility$19()I

    move-result p0

    return p0
.end method

.method public static synthetic H(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onAttachedToWindow$7(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static synthetic I(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$handleKeyEvent$20(Landroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onFinishInflate$17(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic K(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onAttachedToWindow$8(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic L(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->exitEditModeInNecessary(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic M(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onFinishInflate$14(Z)V

    return-void
.end method

.method public static synthetic N(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateNoItemsTextView(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic O(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)Landroidx/recyclerview/widget/u0;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->createIconAdapter(I)Landroidx/recyclerview/widget/u0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateNoItemTextViewSize(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic Q(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onReadyStateChanged$9()V

    return-void
.end method

.method public static bridge synthetic R(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCustomBackground:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

    return-object p0
.end method

.method public static bridge synthetic S(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    return-object p0
.end method

.method public static bridge synthetic T(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    return-object p0
.end method

.method public static bridge synthetic U(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsCheckableBottomBarVisible:Z

    return p0
.end method

.method public static bridge synthetic V(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsToolbarHiddenWhileScrolling:Z

    return p0
.end method

.method public static bridge synthetic W(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mLastTranslatedToolbarY:I

    return p0
.end method

.method public static bridge synthetic X(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    return-object p0
.end method

.method public static bridge synthetic Y(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    return-object p0
.end method

.method public static bridge synthetic Z(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    return-object p0
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updatePrivacyBoardFeaturesActiveStateList(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static bridge synthetic a0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsToolbarHiddenWhileScrolling:Z

    return-void
.end method

.method public static bridge synthetic b0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->shouldFetchMoreNewsItems()Z

    move-result p0

    return p0
.end method

.method private changeLayout()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCheckableControlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->updateControlBarMargin()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessHoverViewController:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverViewController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverViewController;->onChangeLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateTopBottomEmptyHeight()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateNoItemsTextViewContainerMargin()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->notifyLayoutChange()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateUrlBarAdapter()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->scrollableControlBarHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mLastTranslatedToolbarY:I

    int-to-double v1, v1

    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    cmpg-double v1, v1, v3

    const/4 v2, 0x0

    if-gez v1, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->translationMainToolbarY(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDummyUrlBarAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isNoItemsFullscreenTextViewVisible()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateNoItemTextViewSize(Ljava/lang/Boolean;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setAccessibilityOrder()V

    return-void
.end method

.method private createHoverViewController()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverViewController;
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isHoverScrollEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    const v1, 0x7f0b0958

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/view/ViewStub;

    const v1, 0x7f0b0955

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/ViewStub;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->createQuickAccessChildViewDelegate()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverScrollableView;Landroid/view/ViewStub;Landroid/view/ViewStub;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/EmptyHoverViewController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/EmptyHoverViewController;-><init>()V

    return-object p0
.end method

.method private createIconAdapter(I)Landroidx/recyclerview/widget/u0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/recyclerview/widget/u0;"
        }
    .end annotation

    const v0, 0x7f0e04d8

    if-eq p1, v0, :cond_1

    const v0, 0x7f0e059b

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V

    return-object p1
.end method

.method private createQuickAccessChildViewDelegate()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$3;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onFinishInflate$12(Ljava/lang/Boolean;)V

    return-void
.end method

.method private deleteCheckedItems()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCheckableControlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->getCheckedCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCheckableControlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->callOnDeleteButtonClick()Z

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onAttachedToWindow$5(Ljava/lang/Boolean;)V

    return-void
.end method

.method private exitEditModeInNecessary(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->exitEditMode(ZZ)V

    :cond_1
    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updatePrivacyBoardMessage(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$new$10(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onAttachedToWindow$3(Ljava/lang/Boolean;)V

    return-void
.end method

.method private hasFocusedChild()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCheckableControlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->hasFocusedInChildView()Z

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

.method public static synthetic i(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)Ldb/r;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onFinishInflate$18(Ljava/lang/Boolean;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private initializeMostVisitedAdapter()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mMostVisitedIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    const v1, 0x7f0e04d8

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewQuickAccessNestedRecyclerAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewQuickAccessNestedRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mMostVisitedIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mMostVisitedIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mMostVisitedIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_1
    return-void
.end method

.method private initializeNewsFeedAdapter()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b0bed

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;

    new-instance v7, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    move-object v1, v7

    move-object v3, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;-><init>(Landroid/content/Context;Landroidx/lifecycle/J;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;Z)V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateStickyTabTopPadding(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;)V

    return-void
.end method

.method private isActionDown(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isCtrlKey(I)Z
    .locals 0

    const/16 p0, 0x71

    if-eq p1, p0, :cond_1

    const/16 p0, 0x72

    if-ne p1, p0, :cond_0

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

.method private isMostVisitedEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getMostVisitedVisibility()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNavigationBarColorUpdateRequired()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isQuickAccessSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsCheckableBottomBarVisible:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateNewsFeedCategories(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->onEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$renameItem$21(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleKeyEvent$20(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$10(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCustomBackground:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/H;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/H;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setSyncedTabsVisibility(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$1(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->notifyLayoutChange()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$2(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setPrivacyBoardVisibility(Z)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->clearTurnOnClickedFlag()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->updatePrivacyDashboardMessage(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$3(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setMostVisitedVisibility(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$4(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setNewsFeedVisibility(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$5(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateFontColorOnSolidColorThemeChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$6(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateNewFeedTabTextColor()V

    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$7(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->loadUrl(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$8(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateEditButtonState()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$11(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateNoItemTextViewSize(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$12(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateNoItemTextViewSize(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$13()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->exitEditMode(ZZ)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$14(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsCheckableBottomBarVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessHoverViewController:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverViewController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverViewController;->onCheckableBottomBarVisibilityChanged(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateTopBottomEmptyHeight()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isQuickAccessSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mColorManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getTheme()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->updateNavigationBarColor(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFinishInflate$15()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$16(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(Z)V

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->translationMainToolbarY(IZ)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/H;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/H;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    const-wide/16 v2, 0xa

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v0
.end method

.method private synthetic lambda$onFinishInflate$17(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isScrollTopReached()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isHeaderCompletelyVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->translationMainToolbarY(IZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onFinishInflate$18(Ljava/lang/Boolean;)Ldb/r;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->onPromotionClick(Z)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private synthetic lambda$onReadyStateChanged$9()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onReadyToShow()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomAnimator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mAnimator:Landroidx/recyclerview/widget/D0;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/v;

    invoke-direct {v0}, Landroidx/recyclerview/widget/v;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mAnimator:Landroidx/recyclerview/widget/D0;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mAnimator:Landroidx/recyclerview/widget/D0;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    return-void
.end method

.method private synthetic lambda$renameItem$21(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->renameQuickAccessItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void
.end method

.method private synthetic lambda$setBottomEmptySpaceVisibility$19()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

    move-result v1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsCheckableBottomBarVisible:Z

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->bottomEmptySpaceHeight(ZZ)I

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onFinishInflate$13()V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateEditButtonVisibility(Ljava/lang/Boolean;)V

    return-void
.end method

.method private notifyLayoutChange()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n;->getItemCount()I

    move-result v0

    const-string v1, "layout"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private notifyWithPayload(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n;->getItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateBottombarShadowVisibility(Z)V

    return-void
.end method

.method private onEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->skipOnEventReceived(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getId()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->updateViewSize()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getMainUIEvent()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessMainUIEventHandler;->invoke(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onPromotionStatusChanged(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPromotionAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;->getVisibility()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;->setVisibility(Z)V

    return-void
.end method

.method private onQuickAccessUIEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->peekContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEvent;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEvent;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->onEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEvent;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEvent;->getParameter()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEvent;->getParameter()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;->getItem()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;->getAnchorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->renameItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onReadyStateChanged(Ljava/lang/Boolean;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/H;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/H;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onAttachedToWindow$6(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onAttachedToWindow$4(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->onReadyStateChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method private renameItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/AbsQuickAccessDialogFragment;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lm/n;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    new-instance v3, LHa/a;

    const/16 v4, 0x14

    invoke-direct {v3, v4, p0, p1}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;->show(Lm/n;Landroid/view/View;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;)V

    return-void
.end method

.method private resetScrollPosition()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isScrollTopReached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void
.end method

.method private setAccessibilityOrder()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0947

    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b0d77

    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityTraversalBefore(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0b01d8

    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityTraversalBefore(I)V

    :goto_0
    return-void
.end method

.method private setBottomEmptySpaceVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mBottomEmptySpaceAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter;

    if-nez p1, :cond_1

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter$Delegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mBottomEmptySpaceAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mBottomEmptySpaceAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/n;->e(Landroidx/recyclerview/widget/u0;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mBottomEmptySpaceAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter;

    :cond_1
    :goto_0
    return-void
.end method

.method private setCtrlKeyPressed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setCtrlKeyPressed(Z)V

    return-void
.end method

.method private setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setEditMode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickAccessMainLayoutV2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isSecretModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mColorManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getTheme()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->updateNavigationBarColor(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isExitScheduled(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateEditModeForExiting()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isFromHomepageSettings(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getMainUIEvent()Landroidx/lifecycle/S;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {v2, v3, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIntentUtils;->launchQuickAccessSettings(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/livedata/Event;Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletOrDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->shouldShowEditableView()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->canEnterEditMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessDialog;->showUnableToEditInMultiInstanceDialog(Landroid/content/Context;)V

    return-void

    :cond_3
    invoke-virtual {p0, v1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->translationMainToolbarY(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessHoverViewController:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverViewController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverViewController;->onEditModeChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const/4 v2, 0x1

    if-eq v0, p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isSecretModeEnabled()Z

    move-result v0

    sget-object v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p1, v3, :cond_4

    move v3, v2

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSALogHelper;->sendEventLog(ZZ)V

    :cond_5
    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p1, v0, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRenameDialog:Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroidx/fragment/app/u;->dismissAllowingStateLoss()V

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->releaseOwner(Landroid/content/Context;)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->acquireOwner(Landroid/content/Context;)V

    :goto_1
    if-eq p1, v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->setImmersiveMode()V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isFromExternal(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Z

    move-result v0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessHeaderRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHeaderRecyclerAdapter;

    if-eqz v3, :cond_9

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPrivacyBoardRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;

    if-eqz v3, :cond_a

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mMostVisitedIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    if-eqz v3, :cond_b

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mSyncedTabAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabsNestedAdapter;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabsNestedAdapter;->updateEditModeState()V

    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    if-eqz v3, :cond_d

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_d
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPromotionAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;

    if-eqz v3, :cond_e

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_e
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateUrlBarAdapter()V

    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCheckableControlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->shouldShowEditableView()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onToolbarVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onBottombarVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onEditModeEntered()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setAccessibilityOrder()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isNavigationBarColorUpdateRequired()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mColorManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getTheme()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->updateNavigationBarColor(IZ)V

    goto :goto_2

    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mAnimator:Landroidx/recyclerview/widget/D0;

    if-eqz v3, :cond_11

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    invoke-interface {v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onToolbarVisibilityChanged(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    invoke-interface {v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onBottombarVisibilityChanged(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    invoke-interface {v2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onEditModeExited(Z)V

    :cond_12
    :goto_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCustomBackground:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

    if-nez v0, :cond_13

    const v0, 0x7f0b038d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCustomBackground:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCustomBackground:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;->updateVisibilityBasedOnEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->updateAssistantMenuIfNecessary()V

    :cond_15
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->shouldShowEditableView()Z

    move-result p0

    if-nez p0, :cond_16

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;->setCustomActionMode(Z)V

    :cond_16
    return-void
.end method

.method private setNewsFeedVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->initializeNewsFeedAdapter()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedAdapterPosition:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    invoke-virtual {v0, p1, p0}, Landroidx/recyclerview/widget/n;->a(ILandroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->updateStickyTabLayoutVisibility(ZLandroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/n;->e(Landroidx/recyclerview/widget/u0;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    :cond_1
    :goto_0
    return-void
.end method

.method private setPrivacyBoardVisibility(Z)V
    .locals 4

    const-string v0, "setPrivacyBoardVisibility visible: "

    const-string v1, "QuickAccessMainLayoutV2"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPrivacyBoardRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPrivacyBoardRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPrivacyBoardPosition:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIndexDeductionForPreview:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mSyncedTabAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabsNestedAdapter;

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPrivacyBoardRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;

    invoke-virtual {v0, p1, p0}, Landroidx/recyclerview/widget/n;->a(ILandroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPrivacyBoardRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/n;->e(Landroidx/recyclerview/widget/u0;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setQuickAccessBackgroundForNewGUI()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCustomBackground:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isSecretModeEnabled()Z

    move-result v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;->setQuickAccessBackgroundForNewGUI(ZZZLcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    return-void
.end method

.method private setSyncedTabsVisibility(Z)V
    .locals 3

    const-string v0, "setSyncedTabsVisibility: "

    const-string v1, "QuickAccessMainLayoutV2"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mSyncedTabAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabsNestedAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabsNestedAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    invoke-direct {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabsNestedAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mSyncedTabAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabsNestedAdapter;

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIndexDeductionForPreview:I

    rsub-int/lit8 v0, v0, 0x6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mSyncedTabAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabsNestedAdapter;

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/n;->a(ILandroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mSyncedTabAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabsNestedAdapter;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/n;->e(Landroidx/recyclerview/widget/u0;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mSyncedTabAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabsNestedAdapter;

    :cond_2
    :goto_0
    return-void
.end method

.method private shouldFetchMoreNewsItems()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p0

    add-int/2addr v0, v2

    sub-int/2addr p0, v0

    const/16 v0, 0x5dc

    if-ge p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static synthetic t(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->onQuickAccessUIEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method private translateNewsFeedStickyTabY(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->visibleToolBarHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsToolbarHiddenWhileScrolling:Z

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->statusBarHeight()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x50

    goto :goto_1

    :cond_2
    move p0, v1

    :goto_1
    add-int/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2
    int-to-float p0, v1

    invoke-virtual {v2, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->translateStickyTabY(FZ)V

    :cond_3
    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onAttachedToWindow$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method private updateBlurBackgroundBitmap()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCustomBackground:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;->updateBlurBackgroundBitmap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Z)V

    return-void
.end method

.method private updateBottombarShadowVisibility(Z)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFocusLayoutType()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onBottombarShadowVisibilityChanged(ZZ)V

    return-void
.end method

.method private updateEditButtonState()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->canEnterEditMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditButton(Z)V

    :cond_0
    return-void
.end method

.method private updateEditButtonVisibility(Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessHeaderRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHeaderRecyclerAdapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "edit_button_visibility"

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHomepageHeaderRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    if-eqz p0, :cond_2

    const-string p1, "button_visibility"

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private updateEditModeForExiting()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->getEditModeForExiting(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    return-void
.end method

.method private updateFontColorOnSolidColorThemeChanged()V
    .locals 1

    const-string v0, "solid_color_theme_changed"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->notifyWithPayload(Ljava/lang/String;)V

    return-void
.end method

.method private updateMainToolbarLayout(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onToolbarVisibilityChanged(Z)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onBottombarVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    xor-int/lit8 p1, v0, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onBottombarVisibilityChanged(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateNewFeedTabTextColor()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->updateNewFeedTabTextColor()V

    :cond_0
    return-void
.end method

.method private updateNewsFeedCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private updateNoItemTextViewSize(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNoItemTextAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDummyUrlBarAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNoItemTextAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;->updateHeight(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070d1f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDummyUrlBarAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->setBottomMargin(I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setBottomEmptySpaceVisibility(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDummyUrlBarAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->getBottomYCoOrdinate()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070d54

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-ge p1, v1, :cond_2

    move p1, v1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDummyUrlBarAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->setBottomMargin(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNoItemTextAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;->updateHeight(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setBottomEmptySpaceVisibility(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateNoItemsTextView(Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNoItemsTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private updateNoItemsTextViewContainerMargin()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNoItemsTextViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->visibleToolBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->bottomBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNoItemsTextViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updatePrivacyBoardFeaturesActiveStateList(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->updatePrivacyDashboardMessage(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePrivacyBoardMessage(Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updatePrivacyBoardMessage : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyBoardStatus;->getFeatureType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickAccessMainLayoutV2"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPrivacyBoardRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PrivacyBoardRecyclerAdapter;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    const-string v0, "privacy_text_changed"

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private updateQAHeaderVisibility(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessHeaderRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHeaderRecyclerAdapter;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    const-string v0, "header_visibility"

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private updateScrollEnabled(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLinearLayoutManager;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLinearLayoutManager;->setScrollEnabled(Z)V

    return-void
.end method

.method private updateStatusBarTheme(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    return-void
.end method

.method private updateStickyTabTopPadding(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabLayoutContainer;)V
    .locals 3

    const v0, 0x7f0b0cb0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->statusBarHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private updateTheme(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mColorManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->updateBackgroundColor(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mColorManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;

    const v1, 0x7f0b07ed

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->updateNoItemsTextColor(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mColorManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNoItemsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->updateNoItemsTextColor(Landroid/widget/TextView;I)V

    :goto_0
    const-string v0, "theme"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->notifyWithPayload(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCheckableControlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->updateControlBarTheme(I)V

    return-void
.end method

.method private updateToolbarShadowVisibility(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onToolbarShadowVisibilityChanged(ZZ)V

    :cond_0
    return-void
.end method

.method private updateTopBottomEmptyHeight()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    const/4 v1, 0x0

    const-string v2, "layout"

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/n;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method

.method private updateUrlBarAdapter()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDummyUrlBarAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public static synthetic v(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onFinishInflate$15()V

    return-void
.end method

.method public static synthetic w(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateScrollEnabled(Z)V

    return-void
.end method

.method public static synthetic x(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->lambda$onFinishInflate$11(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic y(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateToolbarShadowVisibility(Z)V

    return-void
.end method

.method public static synthetic z(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->onPromotionStatusChanged(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;)V

    return-void
.end method


# virtual methods
.method public closeDialogIfNecessary()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->onCloseAddDialog()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->releaseOwner(Landroid/content/Context;)V

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enableQuickAccessHoverPopup(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateBlurBackgroundBitmap()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->enableHoverPopup(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mMostVisitedIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;->enableHoverPopup(Z)V

    :cond_1
    return-void
.end method

.method public enterEditMode(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->POPUP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    if-ne p1, v1, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->POPUP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->UHP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    if-ne p1, v1, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_UHP:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->HOMEPAGE_SETTINGS_FROM_NATIVE_PAGE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    if-ne p1, v1, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_NATIVE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->HOMEPAGE_SETTINGS_FROM_WEBPAGE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;

    if-ne p1, v1, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;->external(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage$From;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->resetScrollPosition()V

    :cond_4
    return-void
.end method

.method public exitEditMode(ZZ)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateEditModeForExiting()V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void
.end method

.method public getCustomBackgroundLayoutInfo()Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCustomBackground:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;->getLayoutInfoFromView(Landroid/view/View;)Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/sec/android/app/sbrowser/common/utils/LayoutInfo;-><init>(IIII)V

    return-object p0
.end method

.method public getDelegate()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    return-object p0
.end method

.method public getLastTranslatedToolbarY()F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mLastTranslatedToolbarY:I

    int-to-float p0, p0

    return p0
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isCtrlKey(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isActionDown(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setCtrlKeyPressed(Z)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isActionDown(Landroid/view/KeyEvent;)Z

    move-result v4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->hasFocusedChild()Z

    move-result v5

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;

    const/4 v7, 0x2

    invoke-direct {v6, v7, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v4, v5, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler;->invoke(IZZZLsb/a;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$4;->$SwitchMap$com$sec$android$app$sbrowser$quickaccess$ui$base$QuickAccessKeyEventHandler$HandlerResult:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCheckableControlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->setCheckedAll(Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->deleteCheckedItems()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->exitEditMode(ZZ)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->exitEditMode(ZZ)V

    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->getValue()Z

    move-result p0

    return p0
.end method

.method public isCheckableBottomBarVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsCheckableBottomBarVisible:Z

    return p0
.end method

.method public isEditMode()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHeaderCompletelyVisible()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIndexDeductionForPreview:I

    const/4 v1, 0x1

    rsub-int/lit8 p0, p0, 0x1

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInitialScreen()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isScrollTopReached()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedToHideToolbarShadow()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getToolbarShadowVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

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

.method public isScrollBottomReached()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isScrollTopReached()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSolidColorLightThemed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsSolidColorLightThemed:Z

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCheckableControlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->updateControlBarMargin()V

    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isReadyToShow()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditModeOwner()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isEditButtonVisible()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isQuickAccessHeaderVisible()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getPrivacyDashboardMessage()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getSyncedTabsVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getBlurBackground()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getPrivacyBoardVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getPrivacyBoardFeaturesActiveStateList()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getMostVisitedVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getNewsFeedVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getNewsFeedCategories()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isNoItemsFullscreenTextViewVisible()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isNoItemsFullscreenTextViewVisible()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0x15

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isCtrlKeyPressed()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0x16

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getThemeLiveData()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0x17

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getMainUIEvent()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0x18

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getToolbarShadowVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0x19

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getBottombarShadowVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getQuickAccessUIEvent()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->updateDexMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsSolidColorLightThemed()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsLightThemed()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getPromotionStatus()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getPromotionPageLoadEvent()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isSecretModeEnabled()Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isMostVisitedEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSALogHelper;->sendDisplayEventLog(ZZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getOwner()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/C;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->enableQuickAccessHoverPopup(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140b92

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setQuickAccessBackgroundForNewGUI()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isNavigationBarColorUpdateRequired()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mColorManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getTheme()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->updateNavigationBarColor(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mMostVisitedIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isMostVisitedEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mMostVisitedIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/n;->e(Landroidx/recyclerview/widget/u0;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->initializeMostVisitedAdapter()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/n;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mMostVisitedIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/n;->a(ILandroidx/recyclerview/widget/u0;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->changeLayout()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateMainToolbarLayout(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mUiModeNight:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mUiModeNight:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->updateThemeIfNeeded()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setQuickAccessBackgroundForNewGUI()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AbsQuickAccessMainLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->onToolbarOffsetChanged(Landroid/app/Activity;F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->setTranslationToolBarY(FZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->setTranslationBottomBarY(FZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNewsFeedMainAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->updateStickyTabLayoutVisibility(ZLandroid/widget/ImageView;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setUrlEditMode(Z)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b07ed

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNoItemsTextView:Landroid/widget/TextView;

    const v0, 0x7f0b07ec

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNoItemsTextViewContainer:Landroid/view/View;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isNoItemsFullscreenTextViewVisible()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDummyUrlBarAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;->getViewHolder()Landroidx/recyclerview/widget/h1;

    move-result-object v1

    iget-object v1, v1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/F;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/F;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNoItemTextAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;->getViewHolder()Landroidx/recyclerview/widget/h1;

    move-result-object v1

    iget-object v1, v1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/F;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/F;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->toActivity(Landroid/content/Context;)Lm/n;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    if-eqz v2, :cond_3

    const v2, 0x7f0b0947

    invoke-virtual {v0, v2}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "QuickAccessMainLayoutV2"

    if-nez v2, :cond_2

    const v2, 0x7f0b023d

    invoke-virtual {v0, v2}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "control top bar was inflated"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_2
    const-string v0, "control top bar has already been inflated."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v8, v1

    :goto_1
    const v0, 0x7f0b023b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/ViewStub;

    const v0, 0x7f0b047f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;-><init>(Landroidx/lifecycle/J;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Landroid/view/View;Landroid/view/ViewStub;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCheckableControlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->setOnEmptyCheckableListListener(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$OnEmptyCheckableListListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCheckableControlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->setOnBottomBarVisibilityChangedListener(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$OnBottomBarVisibilityChangedListener;)V

    const v0, 0x7f0b095c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetPenSelectionEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnGoToTopClickListener(Landroidx/recyclerview/widget/Y0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-static {v0, v3, p0, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory;->create(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;->setListener(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/O0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/D;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/D;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$2;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-direct {v1, v3, v4, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLinearLayoutManager;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    :goto_2
    new-instance v0, Landroidx/recyclerview/widget/n;

    new-array v1, v2, [Landroidx/recyclerview/widget/u0;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/n;-><init>([Landroidx/recyclerview/widget/u0;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/G;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/G;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;I)V

    invoke-direct {v1, v3, v4, v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter$Delegate;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/u0;)V

    :cond_5
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/i;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/i;-><init>(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lsb/k;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPromotionAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0b038d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCustomBackground:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mBackgroundChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/H;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/H;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCustomBackground;->onFinishInflate(Landroid/view/View$OnLayoutChangeListener;Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setQuickAccessBackgroundForNewGUI()V

    :goto_3
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHomepageHeaderRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/HomepageHeaderRecyclerAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIndexDeductionForPreview:I

    rsub-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/n;->a(ILandroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPromotionAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/u0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/G;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/G;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;I)V

    invoke-direct {v1, v2, v3, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter$Delegate;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/u0;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDummyUrlBarAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessDummyUrlBarAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIndexDeductionForPreview:I

    rsub-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/n;->a(ILandroidx/recyclerview/widget/u0;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mNoItemTextAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNoItemTextContainerAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/u0;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mPromotionAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/PromotionAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/u0;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHeaderRecyclerAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIconViewListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHeaderRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessHeaderRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHeaderRecyclerAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/u0;)V

    :goto_4
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/E;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V

    const v4, 0x7f0e059b

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIndexDeductionForPreview:I

    rsub-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/n;->a(ILandroidx/recyclerview/widget/u0;)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/n;->b(Landroidx/recyclerview/widget/u0;)V

    :goto_5
    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setBottomEmptySpaceVisibility(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->createHoverViewController()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessHoverViewController:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverViewController;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsForPreview:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsSolidColorLightThemed:Z

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setIsSolidColorLightThemed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsLightThemed:Z

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setIsLightThemed(Z)V

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setAccessibilityOrder()V

    return-void
.end method

.method public onLaunchNewTabFromAssistIntent()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onToolbarVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onBottombarVisibilityChanged(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->translationMainToolbarY(IZ)V

    :cond_0
    return-void
.end method

.method public onLaunchNewTabFromExternalApp()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->resetScrollPosition()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->bottomBarHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->visibleToolBarHeight()I

    move-result p1

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    if-ge p2, p1, :cond_1

    iget p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mLastTranslatedToolbarY:I

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->translationMainToolbarY(IZ)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isNoItemsFullscreenTextViewVisible()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateNoItemTextViewSize(Ljava/lang/Boolean;)V

    :cond_2
    return-void
.end method

.method public onToolbarHeightChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateTopBottomEmptyHeight()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->translationMainToolbarY(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mEditMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->shouldShowEditableView()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onToolbarVisibilityChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCheckableControlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->updateControlBarMargin()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mCheckableControlBar:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->onToolBarHeightChanged()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateUrlBarAdapter()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 3

    const-string v0, "onWindowVisibilityChanged : "

    const-string v1, "QuickAccessMainLayoutV2"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onToolbarVisibilityChanged(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->onBottombarVisibilityChanged(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->changeLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isNavigationBarColorUpdateRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mColorManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getTheme()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessColorManager;->updateNavigationBarColor(IZ)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v1, 0x3e8

    invoke-static {p1, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessSALogHelper;->sendEventLog(ZZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isExiting()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isHandOffPromotionAvailable()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setHandOffPromotionState(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->resetScrollPosition()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->setQuickAccessBackgroundForNewGUI()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setLastRefreshEventTime(Ljava/lang/Long;)V

    return-void
.end method

.method public requestFocusDown(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public resetToolbarTranslation()V
    .locals 2

    const-string v0, "QuickAccessMainLayoutV2"

    const-string v1, "resetToolbarTranslation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->translationMainToolbarY(IZ)V

    :cond_0
    return-void
.end method

.method public scrollToHeader()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mRecyclerView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIndexDeductionForPreview:I

    rsub-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    return-void
.end method

.method public setMostVisitedVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->initializeMostVisitedAdapter()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/n;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mMostVisitedIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/n;->a(ILandroidx/recyclerview/widget/u0;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mMostVisitedIconRecyclerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerAdapter;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mConcatAdapter:Landroidx/recyclerview/widget/n;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/n;->e(Landroidx/recyclerview/widget/u0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setToolbarHiddenWhileScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mIsToolbarHiddenWhileScrolling:Z

    return-void
.end method

.method public setUrlEditMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setUrlEditMode(Z)V

    return-void
.end method

.method public translationMainToolbarY(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->visibleToolBarHeight()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->bottomBarHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    :goto_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mLastTranslatedToolbarY:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mLastTranslatedToolbarY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->onToolbarOffsetChanged(Landroid/app/Activity;F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isSecretModeEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mLastTranslatedToolbarY:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mHeightManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->visibleToolBarHeight()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsSolidColorLightThemed()Landroidx/lifecycle/S;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->updateStatusBarTheme(Ljava/lang/Boolean;)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mLastTranslatedToolbarY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-interface {v1, v2, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->setTranslationToolBarY(FZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mLastTranslatedToolbarY:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-interface {v1, v2, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->setTranslationBottomBarY(FZ)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mLastTranslatedToolbarY:I

    int-to-float v2, v2

    invoke-interface {v1, v2, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->setTranslationToolBarY(FZ)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mLastTranslatedToolbarY:I

    int-to-float v2, v2

    invoke-interface {v1, v2, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;->setTranslationBottomBarY(FZ)V

    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->mQuickAccessHoverViewController:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverViewController;

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverViewController;->onMainToolbarTranslated(F)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->translateNewsFeedStickyTabY(IZ)V

    :cond_7
    return-void
.end method
