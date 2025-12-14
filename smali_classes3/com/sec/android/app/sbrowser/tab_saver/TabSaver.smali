.class public Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;


# instance fields
.field private final mAllTabsFromData:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelIncognitoTabLoads:Z

.field private mCancelNormalTabLoads:Z

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

.field private mIncognitoActiveTabId:I

.field private mIncognitoActiveTabIndex:I

.field private mIncognitoSkippedTabCount:I

.field private final mIncognitoTabsRestored:Landroid/util/SparseIntArray;

.field private mLoadTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;

.field private mNormalActiveTabId:I

.field private mNormalActiveTabIndex:I

.field private mNormalSkippedTabCount:I

.field private final mNormalTabsRestored:Landroid/util/SparseIntArray;

.field private final mObserver:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;

.field private final mOrderedSelectedTabs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrderedTabs:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;"
        }
    .end annotation
.end field

.field private mPreventSaveState:Z

.field private mRestoreTabColorListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabColorListTask;

.field private mRestoreTabThemeListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;

.field private mSaveListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;

.field private mSaveTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

.field private mSetActiveInRestoring:Z

.field private final mTabStateReader:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

.field private final mTabStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabsToRestore:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabsToSave:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mTerraceStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/TerraceState;",
            ">;"
        }
    .end annotation
.end field

.field private mUnRestoredTabs:I

.field private final mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabIndex:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStates:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTerraceStates:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalTabsRestored:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoTabsRestored:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mObserver:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;

    new-instance p3, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    invoke-direct {p3, p1, p2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    new-instance p2, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStateReader:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mAllTabsFromData:Ljava/util/Deque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mOrderedTabs:Ljava/util/Deque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mOrderedSelectedTabs:Ljava/util/Deque;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUnRestoredTabs:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->lambda$saveTabListAsynchronously$0(Ljava/lang/Void;)V

    return-void
.end method

.method private addCurrentTabToSaveQueue()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isTerraceStateDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[to save] mTabsToSave currentTab: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TabSaver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {p0, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private addTabState(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTerraceStates:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private adjustActiveIndex(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[adjustActiveIndex] reversed !! (before) mIncognitoActiveTabIndex : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNormalActiveTabIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabIndex:I

    const-string v3, "TabSaver"

    invoke-static {v0, v2, v3}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabIndex:I

    :cond_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    if-eq p1, v2, :cond_1

    add-int/lit8 p2, p2, -0x1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[adjustActiveIndex] reversed !! (after) mIncognitoActiveTabIndex : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabIndex:I

    invoke-static {p1, p0, v3}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->lambda$saveNextTab$3(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;Lcom/sec/terrace/TerraceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->handleLoadTabTaskResult(Lcom/sec/terrace/TerraceState;)V

    return-void
.end method

.method private cancelAndWaitToSave()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->getTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isTerraceStateDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[to save] mTabsToSave cancelledTab: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TabSaver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

    :cond_1
    return-void
.end method

.method private cleanupAllEncryptedPersistentData()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->getTerraceStateFilePrefix(IZ)Ljava/lang/String;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->deleteFileAsync(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cleanupPersistentData()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v1

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    invoke-virtual {v5, v1, v4}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->parseInfoFromFilename(ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->deleteFileAsync(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cleanupPersistentData(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->getTerraceStateFileName(IIZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->deleteFileAsync(Ljava/lang/String;)V

    return-void
.end method

.method private cleanupPersistentDataAtAndAboveId(I)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v1

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    invoke-virtual {v5, v1, v4}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->parseInfoFromFilename(ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, p1, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->deleteFileAsync(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private countSkippedTabCount(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Z)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getOriginalIndex()I

    move-result p1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    if-ge p1, p2, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoSkippedTabCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoSkippedTabCount:I

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStateReader:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->getIncognitoCount()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabIndex:I

    if-ge p1, p2, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalSkippedTabCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalSkippedTabCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->lambda$restoreTabThemeList$1(Ljava/lang/Void;)V

    return-void
.end method

.method private deleteFileAsync(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_saver/task/DeleteFileAsyncTask;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/task/DeleteFileAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->lambda$restoreTabColorList$2(Ljava/lang/Void;)V

    return-void
.end method

.method private getFinalTabsForFixed(Ljava/util/Deque;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    invoke-interface {p1}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->isIncognitoTabBeingRestored(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabId:I

    if-ne v3, v4, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v1, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {p0, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private getFinalTabsToRestore(Ljava/util/Deque;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getFinalTabsToRestore] (finally) mNormalActiveTabId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabSaver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[getFinalTabsToRestore] (finally) mIncognitoActiveTabId : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabId:I

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->getFinalTabsForFixed(Ljava/util/Deque;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->printTabsToDebug(Ljava/util/Deque;)V

    return-void
.end method

.method private getOrderedSelectedTabs(Ljava/util/Deque;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;Z)V"
        }
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUnRestoredTabs:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[getOrderedSelectedTabs] orderedList : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / tabsToUnloadCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / skipIncognitoCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TabSaver"

    invoke-static {v2, v1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getIncognito()Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getIncognito()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    if-lez v0, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabId:I

    if-eq v7, v8, :cond_3

    if-nez p2, :cond_1

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v7

    iget v8, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabId:I

    if-eq v7, v8, :cond_3

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[getOrderedSelectedTabs] tabToBeDeleted : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x1

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mOrderedSelectedTabs:Ljava/util/Deque;

    invoke-interface {v6, v5}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->setActiveTabsIndex(II)V

    return-void
.end method

.method private getOrderedTabs(Ljava/util/Deque;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mOrderedTabs:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getTabToRestoreById(I)Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTabsToRestore()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;->getTabToRestore()Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private handleLoadTabTaskResult(Lcom/sec/terrace/TerraceState;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;->getTabToRestore()Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->isIncognitoTabBeingRestored(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mCancelIncognitoTabLoads:Z

    if-nez v2, :cond_3

    :cond_0
    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mCancelNormalTabLoads:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->isTabBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTotalTabCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->getMaxVisibleTabCount()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->addTabState(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->restoreTab(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;ZZ)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->loadNextTab()V

    return-void
.end method

.method private handleSaveTabTaskResult()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->saveNextTab()V

    return-void
.end method

.method private isNoTabsRestored()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSavingTabListPrevented()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mPreventSaveState:Z

    return p0
.end method

.method private synthetic lambda$restoreTabColorList$2(Ljava/lang/Void;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mRestoreTabColorListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabColorListTask;

    return-void
.end method

.method private synthetic lambda$restoreTabThemeList$1(Ljava/lang/Void;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mRestoreTabThemeListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;

    return-void
.end method

.method private synthetic lambda$saveNextTab$3(Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->handleSaveTabTaskResult()V

    return-void
.end method

.method private synthetic lambda$saveTabListAsynchronously$0(Ljava/lang/Void;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;

    return-void
.end method

.method private loadNextTab()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTerraceStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTerraceStates:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/terrace/TerraceState;

    invoke-direct {p0, v3, v4, v1, v1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->restoreTab(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTerraceStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->rearrangeTabList()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->cleanupPersistentData()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->onStateLoaded()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->restoreTabThemeList()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->restoreTabColorList()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSetActiveInRestoring:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[loadNextTab] Loaded tab lists; counts: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v2, v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTabList(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TabSaver"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    new-instance v2, Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    new-instance v5, Lcom/sec/android/app/sbrowser/tab_saver/a;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lcom/sec/android/app/sbrowser/tab_saver/a;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;I)V

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;

    new-array p0, v1, [Ljava/lang/Void;

    invoke-virtual {v2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void
.end method

.method private moveTabIfNeeded()V
    .locals 5

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabIndex:I

    const-string v1, "TabSaver"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalSkippedTabCount:I

    sub-int/2addr v0, v3

    const-string v3, "[moveTabIfNeeded] move normal active tab to "

    invoke-static {v0, v3, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mObserver:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;

    iget v4, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabId:I

    invoke-interface {v3, v4, v0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;->moveTab(II)V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    if-eq v0, v2, :cond_1

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoSkippedTabCount:I

    sub-int/2addr v0, v2

    const-string v2, "[moveTabIfNeeded] move secret active tab to "

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mObserver:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabId:I

    invoke-interface {v1, p0, v0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;->moveTab(II)V

    :cond_1
    return-void
.end method

.method private onStateLoaded()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mObserver:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;->onStateLoaded()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUnRestoredTabs:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14030e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getMaxTabCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUnRestoredTabs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v0, v2, v2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object v0

    invoke-virtual {v0}, LH6/o;->l()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUnRestoredTabs:I

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->isDesktopMode()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setLastDesktopMode(IZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setLastFixedTabMode(IZ)V

    return-void
.end method

.method private printTabsToDebug(Ljava/util/Deque;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getIncognito()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getIncognito()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(debug) tabsToRestore id : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mode : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TabSaver"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private rearrangeTabList()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSetActiveInRestoring:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->setCurrentTabAfterRestoringIfNeeded()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mObserver:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;->moveTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :goto_0
    return-void
.end method

.method private refineTabsEasyToRestore(Ljava/util/Deque;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->getOrderedTabs(Ljava/util/Deque;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mOrderedTabs:Ljava/util/Deque;

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->getOrderedSelectedTabs(Ljava/util/Deque;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mOrderedSelectedTabs:Ljava/util/Deque;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->getFinalTabsToRestore(Ljava/util/Deque;Z)V

    return-void
.end method

.method private restoreTab(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;ZZ)V
    .locals 8
    .param p1    # Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->isIncognitoTabBeingRestored(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;)Z

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    invoke-virtual {v1, p1, p2, v4, p3}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->isNeedToSkipRestore(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;ZZ)Z

    move-result v1

    const-string v2, "[restoreTab] tabId : "

    const-string v3, "TabSaver"

    if-eqz v1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->updateTabNotRestoredClosingStatus(Ljava/lang/String;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is skipped to restore"

    invoke-static {p2, p3, v3}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->countSkippedTabCount(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mObserver:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;

    invoke-interface {p0, v0, v4}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;->onRestoreSkipped(IZ)V

    return-void

    :cond_0
    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoTabsRestored:Landroid/util/SparseIntArray;

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalTabsRestored:Landroid/util/SparseIntArray;

    goto :goto_0

    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v7, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    if-ltz v1, :cond_2

    const-string p0, " is already restored. skip"

    invoke-static {v0, v2, p0, v3}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mObserver:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;->createFrozenTab(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;ZZZ)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    if-eqz p3, :cond_3

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->setCurrentTabIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getOriginalIndex()I

    move-result p0

    invoke-virtual {v7, p0, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    return-void
.end method

.method private restoreTab(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Z)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "[restoreTab] exception occurs : "

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->restoreTerraceState(II)Lcom/sec/terrace/TerraceState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->restoreTab(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "TabSaver"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method private restoreTabColorList()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mRestoreTabColorListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabColorListTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabColorListTask;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    new-instance v3, Lcom/sec/android/app/sbrowser/tab_saver/a;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/tab_saver/a;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;I)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabColorListTask;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mRestoreTabColorListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabColorListTask;

    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private restoreTabThemeList()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mRestoreTabThemeListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    new-instance v3, Lcom/sec/android/app/sbrowser/tab_saver/a;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/tab_saver/a;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;I)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mRestoreTabThemeListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;

    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private saveNextTab()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->isSavingTabListPrevented()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->saveTabListAsynchronously()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    new-instance v4, Lcom/sec/android/app/sbrowser/tab_saver/a;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/sbrowser/tab_saver/a;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;I)V

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->saveNextTab()V

    return-void
.end method

.method private setActiveTabsIndex(II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[setActiveTabsIndex] (before) mIncognitoActiveTabIndex : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNormalActiveTabIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabIndex:I

    const-string v3, "TabSaver"

    invoke-static {v0, v2, v3}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-gtz p1, :cond_0

    if-lez p2, :cond_3

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabIndex:I

    const/4 v2, 0x0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabIndex:I

    if-gez v0, :cond_1

    iput v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabIndex:I

    :cond_1
    iget p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    if-eq p1, v4, :cond_2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    if-gez p1, :cond_2

    iput v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[setActiveTabsIndex] (finally) mIncognitoActiveTabIndex : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabIndex:I

    invoke-static {p1, p0, v3}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private setAsActiveTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 3

    const-string v0, "TabSaver"

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[to read] SCT / active tabId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[to read] SCT / active isIncognito : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mObserver:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;->setCurrentIndex(ZI)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mObserver:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_1
    const-string p0, "[setAsActiveTab] There is no restore-able active tab."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setCurrentTabAfterRestoringIfNeeded()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->isNoTabsRestored()Z

    move-result v0

    const-string v1, "TabSaver"

    if-eqz v0, :cond_0

    const-string p0, "[setCurrentTabAfterRestoringIfNeeded] No tabs are restored..."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[to read] SCT / total count : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTotalTabCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[to read] SCT / normal active tab id : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[to read] SCT / secret active tab id : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabId:I

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabId:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabId:I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    iget v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabId:I

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->setAsActiveTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabId:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabId:I

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    iget v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->setAsActiveTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->moveTabIfNeeded()V

    return-void
.end method

.method private setCurrentTabIfNeeded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    const-string v1, "TabSaver"

    if-nez v0, :cond_0

    const-string v0, "[setCurrentTabIfNeeded] Set active tab first"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabId:I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mObserver:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    const-string p0, "[setCurrentTabIfNeeded] incognito tab cannot be activated"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addTabToQueues(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isTerraceStateDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[to save] addTabToQueues : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabSaver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->saveNextTab()V

    return-void
.end method

.method public clearEncryptedState()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->cleanupAllEncryptedPersistentData()V

    return-void
.end method

.method public clearList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mAllTabsFromData:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mOrderedTabs:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mOrderedSelectedTabs:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public clearState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v0

    const-string v1, "tab_state"

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/P;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->deleteFileAsync(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->cleanupPersistentData()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->onStateLoaded()V

    return-void
.end method

.method public clearTask()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mRestoreTabThemeListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabThemeListTask;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mRestoreTabColorListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/RestoreTabColorListTask;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_4
    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->clearList()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->clearTask()V

    return-void
.end method

.method public getIncognitoActiveTabId()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabId:I

    return p0
.end method

.method public getNormalActiveTabId()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabId:I

    return p0
.end method

.method public loadState(Ljava/lang/String;Z)I
    .locals 3

    const-string v0, "[loadState] skip : "

    const-string v1, "TabSaver"

    invoke-static {v0, v1, p2}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mCancelNormalTabLoads:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mCancelIncognitoTabLoads:Z

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->loadStateInternal(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->getInstance()Lcom/sec/android/app/sbrowser/tab/TabIdManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->incrementIdCounterTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "[loadState] exception occurs : "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->cleanupPersistentDataAtAndAboveId(I)V

    return v0
.end method

.method public loadStateInternal(Ljava/lang/String;Z)I
    .locals 6

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTabList(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v1, v3}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getTabList(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mAllTabsFromData:Ljava/util/Deque;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStateReader:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v4

    const-string v5, "tab_state"

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->setFile(ILjava/lang/String;)Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->isSaveInstanceState()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->setIsSavedInstance(Z)Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->setInitialUrl(Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    move-result-object p2

    new-instance v2, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver$1;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver$1;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;Ljava/util/Deque;)V

    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->setCallback(Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader$OnTabStateReadCallback;)Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStateReader:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->read()I

    move-result p2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStateReader:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->getUnRestoredTabs()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUnRestoredTabs:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStateReader:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->getNormalActiveTabIndex()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabIndex:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStateReader:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->getIncognitoActiveTabIndex()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabIndex:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalSkippedTabCount:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoSkippedTabCount:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->printTabsToDebug(Ljava/util/Deque;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStateReader:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->isReverseRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStateReader:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->getNormalCount()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStateReader:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->getIncognitoCount()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->adjustActiveIndex(II)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabStateReader:Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabStateReader;->isSkipIncognitoCount()Z

    move-result v2

    invoke-direct {p0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->refineTabsEasyToRestore(Ljava/util/Deque;ZZ)V

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return p0

    :goto_3
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public preventSavingTabList(Z)V
    .locals 2

    const-string v0, "[preventSavingTabList] prevent : "

    const-string v1, "TabSaver"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->clearTask()V

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mPreventSaveState:Z

    return-void
.end method

.method public processTabDataFromRead(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;)V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getIncognito()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->isStandardActiveIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalActiveTabId:I

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getIncognito()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->isIncognitoActiveIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoActiveTabId:I

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mObserver:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getIncognito()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getGroupName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getGroupColorId()I

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;->onDetailsRead(ILjava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method public removeTabFromQueues(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->getTabToRestoreById(I)Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;->getTabToRestore()Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mLoadTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/LoadTabTask;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->loadNextTab()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v3

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[to save] removeTabFromQueues : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TabSaver"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveTabTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->saveNextTab()V

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->cleanupPersistentData(IZ)V

    return-void
.end method

.method public restoreTabs(Z)V
    .locals 2

    const-string v0, "[restoreTabs] setActiveTab : "

    const-string v1, "TabSaver"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSetActiveInRestoring:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[restoreTabs] mTabsToRestore count: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[restoreTabs] normalTab count: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[restoreTabs] incognitoTab count: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mNormalTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mIncognitoTabsRestored:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[restoreTabs] restore active tab"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToRestore:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->restoreTab(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Z)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->loadNextTab()V

    return-void
.end method

.method public saveState()V
    .locals 7

    const-string v0, "[saveState] save remaining unsaved tabs : "

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->isSavingTabListPrevented()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "[saveState] saving tab lists"

    const-string v2, "TabSaver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->getTabsToRestore()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->serializeTabManager(Ljava/util/List;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->saveIntegerMapToFile([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "[saveState] Error while saving tabs state; will attempt to continue..."

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->addCurrentTabToSaveQueue()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->cancelAndWaitToSave()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v4

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v5

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v6

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getState()Lcom/sec/terrace/TerraceState;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->saveTerraceState(IIZLcom/sec/terrace/TerraceState;)Z

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mTabsToSave:Ljava/util/Deque;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_3
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public saveTabListAsynchronously()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[saveTabListAsynchronously] mPreventSaveState : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mPreventSaveState:Z

    const-string v2, "TabSaver"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->isSavingTabListPrevented()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    new-instance v3, Lcom/sec/android/app/sbrowser/tab_saver/a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/tab_saver/a;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->getTabsToRestore()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;->mSaveListTask:Lcom/sec/android/app/sbrowser/tab_saver/task/SaveListTask;

    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
