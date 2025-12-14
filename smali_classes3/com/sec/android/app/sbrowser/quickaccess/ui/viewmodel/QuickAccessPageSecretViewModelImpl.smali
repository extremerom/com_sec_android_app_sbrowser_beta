.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;
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

.field private final mCtrlKeyPressed:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mEditButtonVisibility:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mEditMode:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mEmptyItemState:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mFilteredMostVisitedItems:Landroidx/lifecycle/X;
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

.field private final mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

.field private final mMostVisitedVisibility:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mNoItemsFullscreenTextViewVisibility:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end field

.field private final mNoItemsFullscreenTextViewVisibilityState:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
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

.field private final mPrivacyBoardVisibility:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

.field private final mQuickAccessHeaderVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;

.field private final mQuickAccessItems:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation
.end field

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

.field private final mToolbarShadowVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;)V
    .locals 10

    invoke-direct {p0}, Landroidx/lifecycle/s0;-><init>()V

    new-instance v0, Landroidx/lifecycle/X;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mFilteredMostVisitedItems:Landroidx/lifecycle/X;

    new-instance v0, Landroidx/lifecycle/X;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-direct {v0, v1}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mEditMode:Landroidx/lifecycle/X;

    new-instance v1, Landroidx/lifecycle/X;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mMostVisitedVisibility:Landroidx/lifecycle/X;

    new-instance v1, Landroidx/lifecycle/X;

    invoke-direct {v1}, Landroidx/lifecycle/S;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mEmptyItemState:Landroidx/lifecycle/X;

    new-instance v3, Landroidx/lifecycle/X;

    invoke-direct {v3, v2}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mEditButtonVisibility:Landroidx/lifecycle/X;

    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;

    invoke-direct {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessHeaderVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;

    new-instance v4, Landroidx/lifecycle/X;

    invoke-direct {v4, v2}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mNoItemsFullscreenTextViewVisibilityState:Landroidx/lifecycle/X;

    invoke-static {v4}, Landroidx/lifecycle/l0;->f(Landroidx/lifecycle/S;)Landroidx/lifecycle/W;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mNoItemsFullscreenTextViewVisibility:Landroidx/lifecycle/S;

    new-instance v4, Landroidx/lifecycle/X;

    invoke-direct {v4, v2}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mCtrlKeyPressed:Landroidx/lifecycle/X;

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;-><init>(I)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessTheme:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    new-instance v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mToolbarShadowVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;

    new-instance v5, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;

    invoke-direct {v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mBottombarShadowVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;

    new-instance v6, Landroidx/lifecycle/X;

    invoke-direct {v6, v2}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mIsScrollable:Landroidx/lifecycle/X;

    new-instance v7, Landroidx/lifecycle/X;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v7, v8}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mIsScrollTop:Landroidx/lifecycle/X;

    new-instance v8, Landroidx/lifecycle/X;

    invoke-direct {v8, v2}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mPrivacyBoardVisibility:Landroidx/lifecycle/X;

    new-instance v8, Landroidx/lifecycle/X;

    invoke-direct {v8}, Landroidx/lifecycle/S;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mPrivacyBoardFeaturesActiveStateList:Landroidx/lifecycle/X;

    new-instance v8, Landroidx/lifecycle/X;

    invoke-direct {v8, v2}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mItemDragging:Landroidx/lifecycle/X;

    new-instance v8, Landroidx/lifecycle/X;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mBlurBackground:Landroidx/lifecycle/X;

    new-instance v8, Landroidx/lifecycle/X;

    invoke-direct {v8, v2}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mIsUrlEditMode:Landroidx/lifecycle/X;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItems()Lcom/sec/android/app/sbrowser/quickaccess/model/MutableListLiveData;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->transformations()Lsb/k;

    move-result-object v8

    invoke-static {v2, v8}, Landroidx/lifecycle/l0;->l(Landroidx/lifecycle/X;Lsb/k;)Landroidx/lifecycle/W;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessItems:Landroidx/lifecycle/S;

    new-instance v2, LK9/f;

    const/16 v8, 0x10

    invoke-direct {v2, v8}, LK9/f;-><init>(I)V

    invoke-static {v1, v2}, Landroidx/lifecycle/l0;->l(Landroidx/lifecycle/X;Lsb/k;)Landroidx/lifecycle/W;

    move-result-object v1

    invoke-static {v1}, Landroidx/lifecycle/l0;->f(Landroidx/lifecycle/S;)Landroidx/lifecycle/W;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mReadyToShow:Landroidx/lifecycle/S;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;->addEditModeSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->addEditModeSource(Landroidx/lifecycle/S;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->getQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;->addQAItemsSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v4, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;->addSourceForScrollable(Landroidx/lifecycle/S;)V

    invoke-virtual {v4, v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;->addSourceForScrollTop(Landroidx/lifecycle/S;)V

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;->addEditModeSource(Landroidx/lifecycle/S;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;->addSourceForScrollable(Landroidx/lifecycle/S;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardResourceProvider;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->lambda$new$0(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->lambda$transformations$1(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/Boolean;)Ljava/lang/Boolean;
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

.method private synthetic lambda$transformations$1(Ljava/util/List;)Ljava/util/List;
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;-><init>(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mNoItemsFullscreenTextViewVisibilityState:Landroidx/lifecycle/X;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mEmptyItemState:Landroidx/lifecycle/X;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method private transformations()Lsb/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/k;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/m;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public acquireOwner(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->acquireOwner(Landroid/content/Context;)V

    return-void
.end method

.method public addCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addCheckedItem(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addQuickAccessItems(Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/controller/QuickAccessAddItemParameter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canEnterEditMode(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->canEnterEditMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public checkAllCheckableItems()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearTurnOnClickedFlag()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->clearTurnOnClickedFlag()V

    return-void
.end method

.method public deleteCheckedItems()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteMostVisitedItems(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteQuickAccessItems(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mBlurBackground:Landroidx/lifecycle/X;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mBottombarShadowVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;

    return-object p0
.end method

.method public getCheckableCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCheckedCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
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

    new-instance p0, Landroidx/lifecycle/X;

    invoke-direct {p0}, Landroidx/lifecycle/S;-><init>()V

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

    new-instance p0, Landroidx/lifecycle/X;

    invoke-direct {p0}, Landroidx/lifecycle/S;-><init>()V

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mEditMode:Landroidx/lifecycle/X;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getOwner()Landroidx/lifecycle/S;

    move-result-object p0

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mFilteredMostVisitedItems:Landroidx/lifecycle/X;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mMostVisitedVisibility:Landroidx/lifecycle/X;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mPrivacyBoardFeaturesActiveStateList:Landroidx/lifecycle/X;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mPrivacyBoardVisibility:Landroidx/lifecycle/X;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->getPrivacyBoardStatus()Landroidx/lifecycle/S;

    move-result-object p0

    return-object p0
.end method

.method public getPromotionPageLoadEvent()Landroidx/lifecycle/S;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    new-instance p0, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0, p0}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    return-object v0
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessItems:Landroidx/lifecycle/S;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    return-object p0
.end method

.method public getSyncedTabItems()Landroidx/lifecycle/S;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    new-instance p0, Landroidx/lifecycle/X;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getSyncedTabsVisibility()Landroidx/lifecycle/S;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    new-instance p0, Landroidx/lifecycle/X;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getTheme()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessTheme:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessTheme:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mToolbarShadowVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessToolbarShadowVisibility;

    return-object p0
.end method

.method public isChecked(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isChecked(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCtrlKeyPressed()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mCtrlKeyPressed:Landroidx/lifecycle/X;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mEditButtonVisibility:Landroidx/lifecycle/X;

    return-object p0
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mItemDragging:Landroidx/lifecycle/X;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mNoItemsFullscreenTextViewVisibility:Landroidx/lifecycle/S;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessHeaderVisibility:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessHeaderVisibilityLivedata;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mReadyToShow:Landroidx/lifecycle/S;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mIsUrlEditMode:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public onCleared()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->clear()V

    :cond_0
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
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(I)V

    return-void
.end method

.method public onClickEdit(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(I)V

    return-void
.end method

.method public onClickNewsFeedTabAdd(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onClickPrivacyBoard(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->onClickPrivacyBoard(Landroid/content/Context;)V

    return-void
.end method

.method public onClickRenameItem(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mMainUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEventLiveData;->setValue(I)V

    return-void
.end method

.method public onClickTurnOn()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->onClickTurnOn()V

    return-void
.end method

.method public onCloseAddDialog()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessUIEvent:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessUIEventLiveData;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public releaseOwner(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessEditModeOwner:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->releaseOwner(Landroid/content/Context;)V

    return-void
.end method

.method public removeCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeCheckedItem(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public renameQuickAccessItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setBlurBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mBlurBackground:Landroidx/lifecycle/X;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setCtrlKeyPressed(Z)V
    .locals 0

    return-void
.end method

.method public setEditButton(Z)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setItemDragging(Z)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setUrlEditMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mIsUrlEditMode:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public uncheckAllCheckableItems()V
    .locals 0

    return-void
.end method

.method public updatePrivacyDashboardMessage(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->updatePrivacyBoardCurrentState(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mPrivacyBoardStateManager:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->updatePrivacyBoard(Z)V

    :goto_0
    return-void
.end method

.method public updateQuickAccessItemsPosition(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateScrollTop(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mIsScrollTop:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public updateThemeIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mQuickAccessTheme:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessThemeLiveData;->updateValueIfNeeded()V

    return-void
.end method

.method public updateVerticalScrollable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;->mIsScrollable:Landroidx/lifecycle/X;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method
