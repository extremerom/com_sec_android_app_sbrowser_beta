.class public Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$Observer;
.implements Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;
.implements Lcom/sec/android/app/sbrowser/download/move/MoveUseCase$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;,
        Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;,
        Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemType;,
        Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceHelper$Observer;",
        "Lcom/sec/android/app/sbrowser/download/DownloadImageProgress;",
        "Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;",
        "Lcom/sec/android/app/sbrowser/download/move/MoveUseCase$Listener;"
    }
.end annotation


# static fields
.field private static sDeletedFileTracker:Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;


# instance fields
.field private mActionModeType:I

.field private mActivity:Landroid/app/Activity;

.field private mDHListView:Landroid/view/ViewGroup;

.field private mDateCache:Ljava/util/Date;

.field private mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

.field private mDownloadHistoryItemWrapperSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

.field private mDownloadMover:Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;

.field private mDownloadThumbnailManager:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

.field private mDownloadedTodayCount:I

.field private mFallbackTextView:Landroid/widget/TextView;

.field private final mFilePathsToItemsMap:Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;

.field private mFilterType:I

.field private mFilteredCount:I

.field private mFilteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mGroups:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHasDownloadedFiles:Z

.field private final mIncognitoDownloadItems:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

.field private mIsActionModeShown:Z

.field private mIsAnimating:Z

.field private mIsSaveAllFailedItemExisting:Z

.field private mIsSecretMode:Z

.field private mListener:Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;

.field private final mRegularDownloadItems:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

.field private mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultListSize:I

.field private final mSelectedDownloadItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldShowShareIcon:Z

.field private mShouldUpdateUi:Z

.field private mSize:I

.field private mToday:Ljava/util/Date;

.field private final mUiThread:Landroid/os/Handler;

.field private final mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DHItems;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->sDeletedFileTracker:Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V
    .locals 4

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mRegularDownloadItems:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIncognitoDownloadItems:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSelectedDownloadItems:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSearchQuery:Ljava/lang/String;

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, LB0/r;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LB0/r;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mGroups:Ljava/util/SortedSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mViews:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilePathsToItemsMap:Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilterType:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mShouldShowShareIcon:Z

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSearchResultListSize:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mShouldUpdateUi:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0457

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFallbackTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mUiThread:Landroid/os/Handler;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0704ce

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance p3, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {p3, v2, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadThumbnailManager:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    sget-object p1, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->sDeletedFileTracker:Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->incrementInstanceCount()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getInstance()Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadedTodayCount:I

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mToday:Ljava/util/Date;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDateCache:Ljava/util/Date;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsSecretMode:Z

    new-instance p1, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadMover:Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/BaseObservable;->registerListener(Ljava/lang/Object;)V

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->addDownloadHistoryAdapter(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsSecretMode:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {p2, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->getAllDownloads(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->lambda$onDownloadItemRemoved$6()V

    return-void
.end method

.method private addDownloadHistoryItemWrapper(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->updateDeletedFileMap(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getListForItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilePathsToItemsMap:Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;->addItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->getReadablePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isContentUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/q;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->lambda$onMoveOperationFinished$2()V

    return-void
.end method

.method private bindViewHolderItemType(Lcom/sec/android/app/sbrowser/download/ui/DHItems;Landroid/util/Pair;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/download/ui/DHItems;",
            "Landroid/util/Pair<",
            "Ljava/util/Date;",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItemViewType(I)I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsAnimating:Z

    invoke-virtual {p1, p2, p3, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->bindDownloadItemView(Landroid/util/Pair;ZZ)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsAnimating:Z

    invoke-virtual {p1, p2, p3, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->bindDownloadItemView(Landroid/util/Pair;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsAnimating:Z

    invoke-virtual {p1, p2, p3, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->bindDownloadItemView(Landroid/util/Pair;ZZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsAnimating:Z

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActionModeType:I

    invoke-virtual {p1, p2, p3, v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->bindDownloadItemView(Landroid/util/Pair;ZZI)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->lambda$deleteSelectedItems$3(Ljava/util/List;Z)V

    return-void
.end method

.method private createDownloadHistoryItemWrapper(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;Ljava/lang/String;)V

    return-object v0
.end method

.method private createSaveAllProgressUiItem(Z)Lcom/sec/terrace/browser/download/TerraceDownloadItem;
    .locals 3

    new-instance v0, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    invoke-direct {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setState(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1404a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setFileName(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setMimeType(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    const-string v1, "save_all_images_guid"

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setDownloadGuid(Ljava/lang/String;)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationPaused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsPaused(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setIsResumable(Z)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getProgressPercentage()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->setPercentCompleted(I)Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo$Builder;->build()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object p0

    new-instance p1, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-direct {p1, p0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-object p1
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->lambda$onFileMoved$1(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->lambda$addDownloadHistoryItemWrapper$4(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->lambda$new$0(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->lambda$onOperationPause$5()V

    return-void
.end method

.method private getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIncognitoDownloadItems:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mRegularDownloadItems:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    :goto_0
    return-object p0
.end method

.method private getGroupAt(I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mGroups:Ljava/util/SortedSet;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->size()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    return-object v0
.end method

.method private getInstanceCount()I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceCount()I

    move-result p0

    return p0
.end method

.method private getItemsForDeletion(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilePathsToItemsMap:Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;->getItemsForFilePath(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isSaveAllProgressItem()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->needToRetry()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getListForItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isOffTheRecord()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDateCache:Ljava/util/Date;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadedTodayCount:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFallbackTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic lambda$addDownloadHistoryItemWrapper$4(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->getDisplayNamesForDownloads(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$deleteSelectedItems$3(Ljava/util/List;Z)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->remove(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->isSearchClientInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->removeSearchClientEntry(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$new$0(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->a(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;)Ljava/util/Date;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->a(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;)Ljava/util/Date;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->compareDate(Ljava/util/Date;Ljava/util/Date;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$onDownloadItemRemoved$6()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilePathsToItemsMap:Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryItemWrapperSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;->removeItems(Ljava/util/Set;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryItemWrapperSet:Ljava/util/HashSet;

    invoke-virtual {v0, v0}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->updateDownloadHistoryAfterRemove()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mShouldUpdateUi:Z

    return-void
.end method

.method private synthetic lambda$onFileMoved$1(ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->removeItem(Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getContext()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationDelegate;->getSuccessNotificationId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/completed_info/DCompletedSystemPopupCreator;->dismissCompleteNotification(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onMoveProgress()V

    return-void
.end method

.method private synthetic lambda$onMoveOperationFinished$2()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onMoveOperationCompleted()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->updateDownloadHistoryAfterRemove()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getInstanceCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->showDeleteTransition()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSelectedDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private synthetic lambda$onOperationPause$5()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->updateSaveAllProgressUiItem(Z)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilePathsToItemsMap:Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;

    return-object p0
.end method

.method private markItemsForDeletion(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->setIsDeletionPending(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsSecretMode:Z

    return p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSelectedDownloadItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mToday:Ljava/util/Date;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadedTodayCount:I

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mHasDownloadedFiles:Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSearchResultListSize:I

    return-void
.end method

.method private setFilteredCount()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredCount:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsSaveAllFailedItemExisting:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isSaveAllProgressItem()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isFailed()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsSaveAllFailedItemExisting:Z

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredCount:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setGroupPositions()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mGroups:Ljava/util/SortedSet;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->resetPosition()V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->setPosition(I)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setHighlightedTextSuggestion(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x21

    const v5, 0x7f06021b

    if-nez v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_4

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/common/scs_search/SearchUtil;->getQueryForKorean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v1

    if-ltz v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p3, p2, :cond_4

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {p2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, p2, v1, p3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne p3, v3, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    :goto_0
    add-int/2addr p3, p2

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    goto :goto_0

    :goto_1
    if-ltz p2, :cond_4

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1, p2, p3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static smartSearchInsert(Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDownloadGuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getDisplayUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->insert(Landroid/content/ContentValues;)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mShouldShowShareIcon:Z

    return-void
.end method

.method private updateDeletedFileMap(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)Z
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->sDeletedFileTracker:Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->contains(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->hasBeenExternallyRemoved()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->sDeletedFileTracker:Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->add(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->remove(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilePathsToItemsMap:Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;->removeItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    return v1

    :cond_1
    return v2
.end method

.method private updateDownloadHistoryAfterRemove()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredCount:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getInstanceCount()I

    move-result v2

    if-le v2, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->hideActionModeIfNeeded()V

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredCount:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSearchQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->dismissSearchViewIfRequired()V

    :cond_1
    return-void
.end method

.method private updateSaveAllProgressUiItem(Z)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v1

    const-string v2, "save_all_images_guid"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->findItemIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->createSaveAllProgressUiItem(Z)Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->replaceItem(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/download/ui/DHItems;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsAnimating:Z

    invoke-virtual {v2, v3, v5, v6}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->bindDownloadItemView(Landroid/util/Pair;ZZ)V

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsAnimating:Z

    iget v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActionModeType:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->bindDownloadItemView(Landroid/util/Pair;ZZI)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSize:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mGroups:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->resetPosition()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mGroups:Ljava/util/SortedSet;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public deleteSelectedItems(ZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItemsForDeletion(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->markItemsForDeletion(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getInstanceCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->showDeleteTransition()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mUiThread:Landroid/os/Handler;

    new-instance v2, Lcom/google/firebase/messaging/p;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-interface {p2}, Ljava/util/List;->clear()V

    return-void
.end method

.method public dismissSearchViewIfRequired()V
    .locals 7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->resetAppBarInfo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mRegularDownloadItems:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->filter(Ljava/lang/String;ILjava/util/List;ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIncognitoDownloadItems:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    const-string v1, ""

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->filter(Ljava/lang/String;ILjava/util/List;ZZ)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->hideSearchView()V

    return-void
.end method

.method public filter(ZZ)V
    .locals 13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mShouldShowShareIcon:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredList:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->resetAppBarInfo()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mRegularDownloadItems:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSearchQuery:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilterType:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredList:Ljava/util/List;

    const/4 v6, 0x0

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->filter(Ljava/lang/String;ILjava/util/List;ZZ)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIncognitoDownloadItems:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSearchQuery:Ljava/lang/String;

    iget v9, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilterType:I

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredList:Ljava/util/List;

    const/4 v12, 0x0

    move v11, p2

    invoke-virtual/range {v7 .. v12}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->filter(Ljava/lang/String;ILjava/util/List;ZZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->clear()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isEmpty()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->showNoDownloadLayout(Z)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->adjustKeyboardForView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-long v0, p2

    const-string p2, "8782"

    invoke-static {p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->loadItems(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setFilteredCount()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onSelectionUpdated()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->hideActionModeIfNeeded()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->updateAppBarInfo()V

    return-void
.end method

.method public getAllDownloadsList()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mRegularDownloadItems:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    return-object p0
.end method

.method public getContext()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getDHListView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDHListView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getDownloadDelegate()Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    return-object p0
.end method

.method public getDownloadThumbnailManager()Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadThumbnailManager:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    return-object p0
.end method

.method public getDownloadedTodayCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadedTodayCount:I

    return p0
.end method

.method public getFilterType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilterType:I

    return p0
.end method

.method public getFilteredCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredCount:I

    return p0
.end method

.method public getFilteredList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredList:Ljava/util/List;

    return-object p0
.end method

.method public getItem(I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/util/Date;",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getGroupAt(I)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->a(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;)Ljava/util/Date;

    move-result-object v1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->getItemAt(I)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSize:I

    return p0
.end method

.method public getItemForView(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DHItems;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getDownloadItem()Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSize:I

    const-wide/16 v1, 0x0

    if-lt p1, v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_1

    return-wide v1

    :cond_1
    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p1, :cond_2

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    const-wide v0, -0x100000000L

    add-long/2addr p0, v0

    return-wide p0

    :cond_2
    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getStableId()J

    move-result-wide p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mListener:Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "878"

    return-object p0
.end method

.method public getSearchResultListSize()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSearchResultListSize:I

    return p0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSelectedDownloadItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isActionModeShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredList:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

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

.method public isHasDownloadedFiles()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mHasDownloadedFiles:Z

    return p0
.end method

.method public isOnlySaveAllFailedItemExisting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsSaveAllFailedItemExisting:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilteredCount:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSaveAllRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isFailed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide v1, 0x7ffffffffad9a3feL

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTimestamp()J

    move-result-wide v1

    :goto_1
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mGroups:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->isSameDay(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->addItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSize:I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isFailed()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v3, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    :cond_4
    new-instance v3, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;

    invoke-direct {v3, v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;-><init>(J)V

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$ItemGroup;->addItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mGroups:Ljava/util/SortedSet;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSize:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSize:I

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setGroupPositions()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public moveSelectedItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

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

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTerraceDownloadItem()Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadMover:Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->moveDownloadItems(Ljava/util/List;)V

    return-void
.end method

.method public notifyItemRangeChangedForSelection(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItemCount()I

    move-result v0

    if-ltz p2, :cond_4

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, v0, -0x1

    :cond_2
    if-ne p1, p2, :cond_3

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    return-void

    :cond_3
    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAddOrReplaceDownloadSharedPreferenceEntry(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DHItems;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getDownloadItem()Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsAnimating:Z

    invoke-virtual {v1, v2, v3, v5}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->bindDownloadItemView(Landroid/util/Pair;ZZ)V

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getDownloadItem()Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsAnimating:Z

    iget v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActionModeType:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->bindDownloadItemView(Landroid/util/Pair;ZZI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAllDownloadsRetrieved(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/download/TerraceDownloadItem;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsSecretMode:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationRunning()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationPaused()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->needToRetry()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->createSaveAllProgressUiItem(Z)Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->getOperationRunning()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSaveAllProgress:Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/data_models/SaveAllImagesDownloadProgress;->needToRetry()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->createSaveAllProgressUiItem(Z)Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getShouldBlockNotify()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getState()I

    move-result v1

    if-eq v1, v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->createDownloadHistoryItemWrapper(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->addDownloadHistoryItemWrapper(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->setIsInitialized()V

    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DHItems;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/download/ui/DHItems;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/download/ui/DHItems;I)V
    .locals 6
    .param p1    # Lcom/sec/android/app/sbrowser/download/ui/DHItems;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsAnimating:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->bindDownloadItemView(Landroid/util/Pair;ZZ)V

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->bindViewHolderItemType(Lcom/sec/android/app/sbrowser/download/ui/DHItems;Landroid/util/Pair;I)V

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object p2

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_0

    check-cast v2, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v1, :cond_7

    if-eqz p2, :cond_7

    iget-object v5, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v5, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->setItemBackground(IZ)V

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_6

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_5

    invoke-virtual {p1, v3, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->setItemBackground(IZ)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->setItemBackground(IZ)V

    goto :goto_3

    :cond_6
    :goto_1
    invoke-virtual {p1, v4, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->setItemBackground(IZ)V

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->setItemBackground(IZ)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSearchQuery:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setHighlightedTextSuggestion(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getUrlView()Landroid/widget/TextView;

    move-result-object v0

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getUrl()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSearchQuery:Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setHighlightedTextSuggestion(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getRowView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_9

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mViews:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/download/ui/DHItems;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/download/ui/DHItems;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDHListView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDHListView:Landroid/view/ViewGroup;

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const p2, 0x7f0e01f8

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    return-object p2

    :cond_1
    const p2, 0x7f0e01f5

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    return-object p2

    :cond_2
    const p2, 0x7f0e01f7

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadingItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    return-object p2

    :cond_3
    const p2, 0x7f0e01f6

    invoke-static {p1, p2, p1, v0}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHDateViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->removeDownloadHistoryAdapter(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadMover:Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/download/BaseObservable;->unregisterListener(Ljava/lang/Object;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->sDeletedFileTracker:Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->decrementInstanceCount()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadThumbnailManager:Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadThumbnailManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mListener:Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDHListView:Landroid/view/ViewGroup;

    return-void
.end method

.method public onDownloadItemCreated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilePathsToItemsMap:Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;->checkAlreadyExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isPathSecretDownloadPath(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsSecretMode:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->createDownloadHistoryItemWrapper(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->addDownloadHistoryItemWrapper(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isVisibleToUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->setShouldShowDelayed(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDownloadItemRemoved(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryItemWrapperSet:Ljava/util/HashSet;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->removeItem(Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryItemWrapperSet:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mShouldUpdateUi:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mShouldUpdateUi:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mUiThread:Landroid/os/Handler;

    new-instance p2, Lcom/sec/android/app/sbrowser/download/ui/l;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/l;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;I)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onDownloadItemUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->createDownloadHistoryItemWrapper(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getListForItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->updateDeletedFileMap(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->findItemIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->replaceItem(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilePathsToItemsMap:Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/download/ui/FilePathsToDownloadItemsMap;->addItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    :cond_2
    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/download/ui/DHItems;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsAnimating:Z

    invoke-virtual {v2, v3, v5, v6}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->bindDownloadItemView(Landroid/util/Pair;ZZ)V

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsAnimating:Z

    iget v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActionModeType:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->bindDownloadItemView(Landroid/util/Pair;ZZI)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    if-eq v1, p1, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getPosition()I

    move-result p1

    if-ne p1, v2, :cond_6

    if-eqz v1, :cond_6

    :cond_5
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    :cond_6
    return-void
.end method

.method public onDownloadProgress(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->updateSaveAllProgressUiItem(Z)V

    return-void
.end method

.method public onFileMoved(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mUiThread:Landroid/os/Handler;

    new-instance v1, Lcom/google/firebase/messaging/p;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onFilterChanged(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mFilterType:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    return-void
.end method

.method public onMoveOperationFinished()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mUiThread:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/l;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/l;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onMoveOperationStart(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onMoveOperationStart(I)V

    return-void
.end method

.method public onOperationCancel()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v0

    const-string v1, "save_all_images_guid"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->removeItem(Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->hideActionModeIfNeeded()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->updateDownloadHistoryAfterRemove()V

    return-void
.end method

.method public onOperationClear()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v1

    const-string v2, "save_all_images_guid"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->removeItem(Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    return-void
.end method

.method public onOperationCompleted()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v1

    const-string v2, "save_all_images_guid"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->removeItem(Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    return-void
.end method

.method public onOperationPause()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mUiThread:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/l;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/l;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onOperationResume()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->updateSaveAllProgressUiItem(Z)V

    return-void
.end method

.method public onOperationRetry()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadHistoryUiController:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->hideActionModeIfNeeded()V

    return-void
.end method

.method public onOperationStart()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->createSaveAllProgressUiItem(Z)Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v2

    const-string v3, "save_all_images_guid"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->findItemIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->replaceItem(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->createDownloadHistoryItemWrapper(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    return-void
.end method

.method public onOperationWaitToRetry()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v1

    const-string v2, "save_all_images_guid"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;->removeItem(Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->createSaveAllProgressUiItem(Z)Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->createDownloadHistoryItemWrapper(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->setInterrupt(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadItemList(Z)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter$DownloadItemList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    return-void
.end method

.method public onTaskRemoved()V
    .locals 0

    return-void
.end method

.method public removeSearchClientEntry(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadDelegate:Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadDelegate;->getSearchClient()Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;

    move-result-object p0

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/samsung_search/SamsungSearchClient;->delete(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetAppBarInfo()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mDownloadedTodayCount:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mHasDownloadedFiles:Z

    return-void
.end method

.method public resetCheckedState()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSelectedDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSelectedDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setActionModeType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActionModeType:I

    return-void
.end method

.method public setCheckItem(ZLcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->setChecked(Z)V

    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSelectedDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSelectedDownloadItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const p1, 0x7f0b044d

    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/View;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getContext()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f14067d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getContext()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f14067e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    const-string p3, ", "

    invoke-static {p2, p3}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140b8f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setHasTransientState(Z)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DHItems;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getRowView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getRowView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setHasTransientState(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIsActionModeShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsActionModeShown:Z

    return-void
.end method

.method public setIsAnimating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mIsAnimating:Z

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mListener:Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;

    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%"

    const-string v2, "\\%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSearchQuery:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->filter(ZZ)V

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mSearchQuery:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public setShouldUiUpdate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mShouldUpdateUi:Z

    return-void
.end method

.method public showSnackBar(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {v0, p0, p1, p1}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return-void
.end method
