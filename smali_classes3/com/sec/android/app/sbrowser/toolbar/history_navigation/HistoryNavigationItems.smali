.class final Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCurrentEntry:Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

.field private mIsForward:Z

.field private mNavigationHistory:Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->mIsForward:Z

    return-void
.end method


# virtual methods
.method public getCurrentNavigationEntry(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;
    .locals 9

    new-instance p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V

    return-object p0
.end method

.method public getEntryAtIndex(I)Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->mIsForward:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->getEntryCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->mCurrentEntry:Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->mNavigationHistory:Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;->getEntryAtIndex(I)Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    move-result-object p0

    return-object p0
.end method

.method public getEntryCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->mNavigationHistory:Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;

    invoke-virtual {p0}, Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;->getEntryCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public updateCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->getCurrentNavigationEntry(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->mCurrentEntry:Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    return-void
.end method

.method public updateItems(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->mIsForward:Z

    const/16 v1, 0x64

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getDirectedNavigationHistory(ZI)Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->mNavigationHistory:Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->updateCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method
