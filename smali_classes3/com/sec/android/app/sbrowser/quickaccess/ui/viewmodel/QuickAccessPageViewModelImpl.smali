.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;
.super Landroidx/lifecycle/s0;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;


# instance fields
.field private final mBlurBackground:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mBottombarShadowVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;

.field private final mCheckedMostVisitedItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedCheckedItemsLiveData;

.field private final mCheckedQuickAccessItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessCheckedItemsLiveData;

.field private final mCtrlKeyPressed:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end field

.field private final mCtrlKeyPressedState:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mEditButtonVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditButtonVisibilityLiveData;

.field private final mEditMode:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mEmptyItemState:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;

.field private final mFilteredMostVisitedItems:Landroidx/lifecycle/W;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/W;"
        }
    .end annotation
.end field

.field private final mIsDexMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/DexModeLiveData;

.field private mIsEditButtonEnabled:Ljava/lang/Boolean;

.field private mIsEnabled:Z

.field private final mIsLightThemed:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mIsScrollTop:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mIsScrollable:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mIsSolidColorLightThemed:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mIsUrlEditMode:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mItemDragging:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mLastRefreshEventTime:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

.field private final mMostVisitedSitesRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

.field private final mMostVisitedVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;

.field private final mNewsFeedVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;

.field private final mNoItemsFullscreenTextViewVisibility:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mPrivacyBoardActiveStateListObserver:Landroidx/lifecycle/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Y;"
        }
    .end annotation
.end field

.field private final mPrivacyBoardFeaturesActiveStateList:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

.field private final mPrivacyBoardVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;

.field protected final mPromotionClick:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field protected final mPromotionStatus:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

.field private final mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

.field private final mQuickAccessHeaderVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;

.field private final mQuickAccessItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;

.field private final mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

.field private final mQuickAccessTheme:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

.field private final mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

.field private final mReadyToShow:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end field

.field private final mSyncedTabRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

.field private final mSyncedTabsVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;

.field private final mToolbarShadowVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;

.field private final mUpdateFilteredMostVisitedItemsUseCase:Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;)V
    .locals 22
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroidx/lifecycle/s0;-><init>()V

    new-instance v1, Landroidx/lifecycle/X;

    sget-object v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-direct {v1, v2}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mEditMode:Landroidx/lifecycle/X;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;-><init>()V

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMostVisitedVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;-><init>()V

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mSyncedTabsVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;-><init>()V

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mNewsFeedVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;

    new-instance v5, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;

    invoke-direct {v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;-><init>()V

    iput-object v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mEmptyItemState:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;

    new-instance v6, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditButtonVisibilityLiveData;

    invoke-direct {v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditButtonVisibilityLiveData;-><init>()V

    iput-object v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mEditButtonVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditButtonVisibilityLiveData;

    new-instance v7, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;

    invoke-direct {v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;-><init>()V

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessHeaderVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsEditButtonEnabled:Ljava/lang/Boolean;

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsEnabled:Z

    new-instance v9, Landroidx/lifecycle/X;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v9, v10}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mNoItemsFullscreenTextViewVisibility:Landroidx/lifecycle/X;

    new-instance v9, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessCheckedItemsLiveData;

    invoke-direct {v9}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessCheckedItemsLiveData;-><init>()V

    iput-object v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedQuickAccessItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessCheckedItemsLiveData;

    new-instance v11, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedCheckedItemsLiveData;

    invoke-direct {v11}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedCheckedItemsLiveData;-><init>()V

    iput-object v11, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedMostVisitedItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedCheckedItemsLiveData;

    new-instance v12, Landroidx/lifecycle/X;

    invoke-direct {v12, v10}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCtrlKeyPressedState:Landroidx/lifecycle/X;

    invoke-static {v12}, Landroidx/lifecycle/l0;->f(Landroidx/lifecycle/S;)Landroidx/lifecycle/W;

    move-result-object v12

    iput-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCtrlKeyPressed:Landroidx/lifecycle/S;

    new-instance v12, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;-><init>(I)V

    iput-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessTheme:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

    new-instance v12, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    invoke-direct {v12}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;-><init>()V

    iput-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    new-instance v12, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    invoke-direct {v12}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;-><init>()V

    iput-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    new-instance v12, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;

    invoke-direct {v12}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;-><init>()V

    iput-object v12, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mToolbarShadowVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;

    new-instance v13, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;

    invoke-direct {v13}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;-><init>()V

    iput-object v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mBottombarShadowVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;

    new-instance v14, Landroidx/lifecycle/X;

    invoke-direct {v14, v10}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v14, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsScrollable:Landroidx/lifecycle/X;

    new-instance v15, Landroidx/lifecycle/X;

    invoke-direct {v15, v8}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsScrollTop:Landroidx/lifecycle/X;

    move-object/from16 v16, v13

    new-instance v13, Landroidx/lifecycle/X;

    invoke-direct {v13}, Landroidx/lifecycle/S;-><init>()V

    iput-object v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardFeaturesActiveStateList:Landroidx/lifecycle/X;

    new-instance v13, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;

    move-object/from16 v17, v15

    const/4 v15, 0x0

    invoke-direct {v13, v0, v15}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;I)V

    iput-object v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardActiveStateListObserver:Landroidx/lifecycle/Y;

    new-instance v15, Landroidx/lifecycle/X;

    invoke-direct {v15, v10}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mItemDragging:Landroidx/lifecycle/X;

    new-instance v15, Landroidx/lifecycle/X;

    move-object/from16 v18, v13

    const/4 v13, 0x0

    invoke-direct {v15, v13}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mBlurBackground:Landroidx/lifecycle/X;

    new-instance v13, Landroidx/lifecycle/X;

    invoke-direct {v13, v10}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsUrlEditMode:Landroidx/lifecycle/X;

    new-instance v13, Landroidx/lifecycle/X;

    invoke-direct {v13, v10}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsSolidColorLightThemed:Landroidx/lifecycle/X;

    new-instance v10, Landroidx/lifecycle/X;

    invoke-direct {v10, v8}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsLightThemed:Landroidx/lifecycle/X;

    new-instance v8, Landroidx/lifecycle/X;

    const-wide/16 v19, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v8, v10}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mLastRefreshEventTime:Landroidx/lifecycle/X;

    new-instance v8, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/DexModeLiveData;

    invoke-direct {v8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/DexModeLiveData;-><init>()V

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsDexMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/DexModeLiveData;

    new-instance v10, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

    invoke-direct {v10}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;-><init>()V

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPromotionStatus:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    move-result-object v13

    iput-object v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMostVisitedSitesRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    sget-object v15, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$Companion;

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$Companion;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    move-result-object v15

    iput-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mSyncedTabRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    move-result-object v15

    iput-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    new-instance v15, Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

    invoke-direct {v15, v10, v13}, Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;)V

    iput-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mUpdateFilteredMostVisitedItemsUseCase:Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

    new-instance v15, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;

    invoke-direct {v15}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;-><init>()V

    iput-object v15, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;

    move-object/from16 v19, v8

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->addQuickAccessItemListSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v15, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;->addEditModeSource(Landroidx/lifecycle/S;)V

    new-instance v8, Landroidx/lifecycle/W;

    invoke-direct {v8}, Landroidx/lifecycle/W;-><init>()V

    iput-object v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mFilteredMostVisitedItems:Landroidx/lifecycle/W;

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v15

    move-object/from16 v20, v14

    new-instance v14, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;

    move-object/from16 v21, v12

    const/4 v12, 0x1

    invoke-direct {v14, v0, v12}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;I)V

    invoke-virtual {v8, v15, v14}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v12

    new-instance v14, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;

    const/4 v15, 0x2

    invoke-direct {v14, v0, v15}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;I)V

    invoke-virtual {v8, v12, v14}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessCheckedItemsLiveData;->addQuickAccessItemSource(Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;)V

    invoke-virtual {v11, v8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedCheckedItemsLiveData;->addMostVisitedItemSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v2, v8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;->addItemListSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->isEnabled()Landroidx/lifecycle/S;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;->addEnableStateSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;->addEditModeSource(Landroidx/lifecycle/S;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getSyncedTabItems()Landroidx/lifecycle/S;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->addItemListSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;->addEditModeSource(Landroidx/lifecycle/S;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getNewsFeedCategories()Landroidx/lifecycle/S;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->addNewsCategoriesSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v4, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;->addEditModeSource(Landroidx/lifecycle/S;)V

    new-instance v3, LK9/f;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, LK9/f;-><init>(I)V

    invoke-static {v5, v3}, Landroidx/lifecycle/l0;->l(Landroidx/lifecycle/X;Lsb/k;)Landroidx/lifecycle/W;

    move-result-object v3

    invoke-static {v3}, Landroidx/lifecycle/l0;->f(Landroidx/lifecycle/S;)Landroidx/lifecycle/W;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mReadyToShow:Landroidx/lifecycle/S;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->addQuickAccessStateSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v5, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EmptyItemStateLiveData;->addMostVisitedStateSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v6, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditButtonVisibilityLiveData;->addEditModeSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v7, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->addEditModeSource(Landroidx/lifecycle/S;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->addQAItemsSource(Landroidx/lifecycle/S;)V

    move-object/from16 v2, v21

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;->addEditModeSource(Landroidx/lifecycle/S;)V

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;->addSourceForScrollable(Landroidx/lifecycle/S;)V

    move-object/from16 v4, v17

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;->addSourceForScrollTop(Landroidx/lifecycle/S;)V

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;->addEditModeSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;->addSourceForScrollable(Landroidx/lifecycle/S;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;-><init>()V

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;->addEditModeSource(Landroidx/lifecycle/S;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->getFeaturesActiveStateList()Landroidx/lifecycle/W;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Landroidx/lifecycle/S;->observeForever(Landroidx/lifecycle/Y;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getMostVisitedVisibility()Landroidx/lifecycle/S;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;I)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/S;->observeForever(Landroidx/lifecycle/Y;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/o;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;I)V

    move-object/from16 v2, v19

    invoke-virtual {v2, v1}, Landroidx/lifecycle/S;->observeForever(Landroidx/lifecycle/Y;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    new-instance v2, Landroidx/lifecycle/X;

    invoke-direct {v2, v1}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPromotionClick:Landroidx/lifecycle/X;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->lambda$new$2(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->lambda$new$3(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->lambda$new$1(Ljava/util/List;)V

    return-void
.end method

.method private deleteMostVisitedItemsInternal(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lj5/b;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMostVisitedSitesRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->addToBlockList(Ljava/util/List;)V

    return-void
.end method

.method private deleteQuickAccessItemsInternal(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lj5/b;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->filterReservedItem(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->isDefaultListChanged(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setDefaultItemsEdited(Z)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->deleteItems(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->updateCheckedMostVisitedList(Z)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->updatePrivacyBoardFeaturesActiveStateList(Ljava/util/List;)V

    return-void
.end method

.method private filterReservedItem(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getType()Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->RESERVED:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->lambda$new$0(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/util/List;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mUpdateFilteredMostVisitedItemsUseCase:Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mFilteredMostVisitedItems:Landroidx/lifecycle/W;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mFilteredMostVisitedItems:Landroidx/lifecycle/W;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;->invoke(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase$ItemsListener;)V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/util/List;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mUpdateFilteredMostVisitedItemsUseCase:Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mFilteredMostVisitedItems:Landroidx/lifecycle/W;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mFilteredMostVisitedItems:Landroidx/lifecycle/W;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/g;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase;->invoke(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/domain/usecase/UpdateFilteredMostVisitedItemsUseCase$ItemsListener;)V

    return-void
.end method

.method private static synthetic lambda$new$2(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$3(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->refreshCachedItems()V

    return-void
.end method

.method private updateCheckedMostVisitedList(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedMostVisitedItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedCheckedItemsLiveData;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private updatePrivacyBoardFeaturesActiveStateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardFeaturesActiveStateList:Landroidx/lifecycle/X;

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardFeaturesActiveStateList:Landroidx/lifecycle/X;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public acquireOwner(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->acquireOwner(Landroid/content/Context;)V

    return-void
.end method

.method public addCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckedQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedQuickAccessItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessCheckedItemsLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public addCheckedItem(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckedMostVisitedItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedMostVisitedItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedCheckedItemsLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public addQuickAccessItems(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->isItemFull()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(I)V

    return-void

    :cond_1
    const-string v0, "QuickAccessPageViewModelImpl"

    const-string v1, "addIconItem"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->getTitle()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;->getIconUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->addItem(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/quickaccess/OnFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public canEnterEditMode(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->canEnterEditMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public checkAllCheckableItems()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedQuickAccessItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessCheckedItemsLiveData;

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckableQuickAccessItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getMostVisitedVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedMostVisitedItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedCheckedItemsLiveData;

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getMostVisitedItems()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clearTurnOnClickedFlag()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->clearTurnOnClickedFlag()V

    return-void
.end method

.method public deleteCheckedItems()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckedCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckedQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->deleteQuickAccessItemsInternal(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckedMostVisitedItems()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->deleteMostVisitedItemsInternal(Ljava/util/Collection;)V

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(ILjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void
.end method

.method public deleteMostVisitedItems(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lj5/b;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->deleteMostVisitedItemsInternal(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public deleteQuickAccessItems(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lj5/b;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->deleteQuickAccessItemsInternal(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public fetchNewsFeedCategories()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->fetchNewsCategories()LNc/j0;

    return-void
.end method

.method public fetchSyncedTabItems()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mSyncedTabRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->fetchSyncedTabItems()V

    return-void
.end method

.method public getBlurBackground()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mBlurBackground:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getBottombarShadowVisibility()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mBottombarShadowVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;

    return-object p0
.end method

.method public getCheckableCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getMostVisitedVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getMostVisitedItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getMostVisitedVisibility()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getMostVisitedItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckableQuickAccessItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public getCheckableQuickAccessItems()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCheckedCount()I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckedQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckedQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getMostVisitedVisibility()Landroidx/lifecycle/S;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckedMostVisitedItems()Landroidx/lifecycle/S;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getMostVisitedVisibility()Landroidx/lifecycle/S;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckedMostVisitedItems()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getCheckedMostVisitedItems()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedMostVisitedItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedCheckedItemsLiveData;

    return-object p0
.end method

.method public getCheckedQuickAccessItems()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedQuickAccessItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessCheckedItemsLiveData;

    return-object p0
.end method

.method public getEditMode()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mEditMode:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getEditModeOwner()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getOwner()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public getIsLightThemed()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsLightThemed:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getIsSolidColorLightThemed()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsSolidColorLightThemed:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getLastRefreshEventTime()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mLastRefreshEventTime:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getMainUIEvent()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    return-object p0
.end method

.method public getMostVisitedItems()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mFilteredMostVisitedItems:Landroidx/lifecycle/W;

    return-object p0
.end method

.method public getMostVisitedVisibility()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMostVisitedVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedVisibilityLiveData;

    return-object p0
.end method

.method public getNewsFeedCategories()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->getNewsFeedCategories()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public getNewsFeedVisibility()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mNewsFeedVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsFeedVisibilityLiveData;

    return-object p0
.end method

.method public getPrivacyBoardFeaturesActiveStateList()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardFeaturesActiveStateList:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getPrivacyBoardVisibility()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardVisibilityLiveData;

    return-object p0
.end method

.method public getPrivacyDashboardMessage()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->getPrivacyBoardStatus()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public getPromotionCallback()Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mSyncedTabRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->getPromotionCallback()Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;

    move-result-object p0

    return-object p0
.end method

.method public getPromotionPageLoadEvent()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPromotionClick:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getPromotionStatus()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPromotionStatus:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/S;

    return-object p0
.end method

.method public getQuickAccessItems()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessIconItemMediatorLiveData;

    return-object p0
.end method

.method public getQuickAccessUIEvent()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    return-object p0
.end method

.method public getSyncedTabItems()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mSyncedTabRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->getSyncedTabItemLiveData()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public getSyncedTabsVisibility()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mSyncedTabsVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncedTabsVisibilityLiveData;

    return-object p0
.end method

.method public getTheme()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessTheme:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getThemeLiveData()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessTheme:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

    return-object p0
.end method

.method public getToolbarShadowVisibility()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mToolbarShadowVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;

    return-object p0
.end method

.method public isChecked(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedQuickAccessItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessCheckedItemsLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isChecked(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedMostVisitedItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedCheckedItemsLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCtrlKeyPressed()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCtrlKeyPressed:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public isEditButtonVisible()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mEditButtonVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditButtonVisibilityLiveData;

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsEnabled:Z

    return p0
.end method

.method public isHandOffPromotionAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mSyncedTabRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->isHandOffPromotionAvailable()Z

    move-result p0

    return p0
.end method

.method public isItemDragging()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mItemDragging:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public isNoItemsFullscreenTextViewVisible()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mNoItemsFullscreenTextViewVisibility:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public isQuickAccessHeaderVisible()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessHeaderVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;

    return-object p0
.end method

.method public isReadyToShow()Landroidx/lifecycle/S;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mReadyToShow:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public isUrlEditMode()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsUrlEditMode:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public onCleared()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PrivacyDashboardRepository;->getFeaturesActiveStateList()Landroidx/lifecycle/W;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardActiveStateListObserver:Landroidx/lifecycle/Y;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->clear()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onClickAccountProfile(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.samsung.android.samsungaccount.action.OPEN_SASETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClickAddItem(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->isItemFull()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public onClickEdit(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsEditButtonEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->canEnterEditMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->setEditButton(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(I)V

    return-void
.end method

.method public onClickNewsFeedTabAdd(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(I)V

    return-void
.end method

.method public onClickPrivacyBoard(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->onClickPrivacyBoard(Landroid/content/Context;)V

    return-void
.end method

.method public onClickRenameItem(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckedQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckedQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;

    invoke-direct {v1, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/RenameParameter;-><init>(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;->setValue(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClickTurnOn()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->onClickTurnOn()V

    return-void
.end method

.method public onCloseAddDialog()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public onPromotionClick(Z)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPromotionClick:Landroidx/lifecycle/X;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPromotionStatus:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public releaseOwner(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->releaseOwner(Landroid/content/Context;)V

    return-void
.end method

.method public removeCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckedQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedQuickAccessItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessCheckedItemsLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public removeCheckedItem(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->getCheckedMostVisitedItems()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedMostVisitedItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedCheckedItemsLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public renameQuickAccessItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBlurBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mBlurBackground:Landroidx/lifecycle/X;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setCtrlKeyPressed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCtrlKeyPressedState:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setEditButton(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsEditButtonEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mEditMode:Landroidx/lifecycle/X;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsEnabled:Z

    return-void
.end method

.method public setHandOffPromotionState(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mSyncedTabRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->setHandOffPromotionState(Z)V

    return-void
.end method

.method public setIsLightThemed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsLightThemed:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setIsSolidColorLightThemed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsSolidColorLightThemed:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setItemDragging(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mItemDragging:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setLastRefreshEventTime(Ljava/lang/Long;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mLastRefreshEventTime:Landroidx/lifecycle/X;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setUrlEditMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsUrlEditMode:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public uncheckAllCheckableItems()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedQuickAccessItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessCheckedItemsLiveData;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mCheckedMostVisitedItems:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MostVisitedCheckedItemsLiveData;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public updateDexMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsDexMode:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/DexModeLiveData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/DexModeLiveData;->updateValue()V

    return-void
.end method

.method public updateNewsFeedViewSize()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->postValue(I)V

    return-void
.end method

.method public updatePrivacyDashboardMessage(Z)V
    .locals 2

    const-string v0, "updatePrivacyDashboardMessage isActiveFeaturesChanged: "

    const-string v1, "QuickAccessPageViewModelImpl"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->updatePrivacyBoardCurrentState(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->updatePrivacyBoard(Z)V

    :goto_0
    return-void
.end method

.method public updateQuickAccessItemsPosition(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->filterReservedItem(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->isDefaultListChanged(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setDefaultItemsEdited(Z)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateItemsPosition(Ljava/util/List;)V

    return-void
.end method

.method public updateScrollTop(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsScrollTop:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public updateThemeIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mQuickAccessTheme:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;->updateValueIfNeeded()V

    return-void
.end method

.method public updateVerticalScrollable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;->mIsScrollable:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method
