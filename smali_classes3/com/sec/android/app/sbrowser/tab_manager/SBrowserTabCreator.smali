.class Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;
.super Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab_manager/TabModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    return-void
.end method

.method private getParentGroup(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/util/Pair;
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->isLaunchedFromParent()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupColorId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private getParentTabId(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->isLaunchedFromParent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->isLaunchedFromSplitView()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosing()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentTabId()I

    move-result p0

    return p0

    :cond_2
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private getTerraceFromState(Lcom/sec/terrace/TerraceState;Z)Lcom/sec/terrace/Terrace;
    .locals 1
    .param p1    # Lcom/sec/terrace/TerraceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/terrace/TerraceHelper;->createTerrace(Z)Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/sec/terrace/TerraceHelper;->createFrozenTerrace(ZLcom/sec/terrace/TerraceState;Z)Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/terrace/TerraceHelper;->createTerrace(Z)Lcom/sec/terrace/Terrace;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private saveNewTabId(I)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->recordNewTabId(I)V

    return-void
.end method


# virtual methods
.method public createFrozenTab(IZLcom/sec/terrace/TerraceState;ZZLjava/lang/String;IIJ)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 2
    .param p3    # Lcom/sec/terrace/TerraceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "[createFrozenTab] id "

    const-string v1, " into "

    invoke-static {p1, v0, v1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ROOT"

    goto :goto_0

    :cond_0
    move-object v1, p6

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBrowserTabCreator"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->checkGlobalTabCountLimit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->createFrozenTab(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    if-eqz p4, :cond_1

    sget-object p4, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_RESTORE_FOREGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    goto :goto_1

    :cond_1
    sget-object p4, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_RESTORE_BACKGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    :goto_1
    invoke-virtual {v0, p4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTabLaunchType(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p4

    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->getTerraceFromState(Lcom/sec/terrace/TerraceState;Z)Lcom/sec/terrace/Terrace;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setId(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    if-nez p3, :cond_2

    const/4 p2, -0x1

    goto :goto_2

    :cond_2
    iget p2, p3, Lcom/sec/terrace/TerraceState;->parentId:I

    :goto_2
    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setParentId(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setIsLocked(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p6, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setGroup(Landroid/util/Pair;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setIsCreatedByTerrace(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-virtual {p1, p8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setVisitCount(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-virtual {p1, p9, p10}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setActiveTime(J)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->build()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p3, :cond_3

    invoke-interface {p1, p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->restoreFieldsFromState(Lcom/sec/terrace/TerraceState;)V

    :cond_3
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->saveNewTabId(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZZ)V

    return-object p1
.end method

.method public createFrozenTab(Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getTabId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getState()Lcom/sec/terrace/TerraceState;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[createFrozenTab] id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getTabId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ROOT"

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SBrowserTabCreator"

    invoke-static {v4, v3}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->checkGlobalTabCountLimit(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->createFrozenTab(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_RESTORE_BACKGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTabLaunchType(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->isIncognito()Z

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->getTerraceFromState(Lcom/sec/terrace/TerraceState;Z)Lcom/sec/terrace/Terrace;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setId(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    if-nez v2, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    :cond_1
    iget v3, v2, Lcom/sec/terrace/TerraceState;->parentId:I

    :goto_1
    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setParentId(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->isLocked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setIsLocked(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getGroupColorId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setGroup(Landroid/util/Pair;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setIsCreatedByTerrace(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->build()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz v2, :cond_2

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->restoreFieldsFromState(Lcom/sec/terrace/TerraceState;)V

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->saveNewTabId(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZZ)V

    return-object p1
.end method

.method public createNewBackgroundTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->createLiveTab(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTabLaunchType(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/sec/terrace/TerraceHelper;->createTerrace(ZJZ)Lcom/sec/terrace/Terrace;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-direct {p0, v2, p2}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->getParentTabId(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setParentId(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-direct {p0, v2, p2}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->getParentGroup(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setGroup(Landroid/util/Pair;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setIsCreatedByTerrace(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->build()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->saveNewTabId(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1, v6, v1, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZZ)V

    return-object p1
.end method

.method public createNewInstantTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[createNewInstantTab] type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_SPLIT_VIEW:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SBrowserTabCreator"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->createLiveTab(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTabLaunchType(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/terrace/TerraceHelper;->createTerrace(Z)Lcom/sec/terrace/Terrace;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->getParentTabId(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setParentId(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setGroup(Landroid/util/Pair;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setIsCreatedByTerrace(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->build()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addInstantTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-object p1
.end method

.method public createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[createNewTab] type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBrowserTabCreator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->checkGlobalTabCountLimit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->isLaunchedFromBackground()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->createLiveTab(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTabLaunchType(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/terrace/TerraceHelper;->createTerrace(Z)Lcom/sec/terrace/Terrace;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->getParentTabId(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setParentId(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->getParentGroup(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/util/Pair;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setGroup(Landroid/util/Pair;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setIsCreatedByTerrace(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->build()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->saveNewTabId(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->isLaunchedFromBackground()Z

    move-result p1

    invoke-virtual {p0, p2, p1, p3, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZZ)V

    return-object p2
.end method

.method public createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[createNewTab] type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " into "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ROOT"

    goto :goto_0

    :cond_0
    move-object v1, p4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SBrowserTabCreator"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->checkGlobalTabCountLimit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->isLaunchedFromBackground()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->createLiveTab(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTabLaunchType(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/terrace/TerraceHelper;->createTerrace(Z)Lcom/sec/terrace/Terrace;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->getParentTabId(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setParentId(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setGroup(Landroid/util/Pair;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setIsCreatedByTerrace(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->build()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p4

    invoke-direct {p0, p4}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->saveNewTabId(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->isLaunchedFromBackground()Z

    move-result p1

    invoke-virtual {p0, p2, p1, p3, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZZ)V

    return-object p2
.end method

.method public createNewTabWithTerrace(Lcom/sec/terrace/Terrace;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 3
    .param p1    # Lcom/sec/terrace/Terrace;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "SBrowserTabCreator"

    const-string v1, "[createNewTabWithTerrace] for moving to another window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->createLiveTab(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTabLaunchType(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setParentId(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, ""

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setGroup(Landroid/util/Pair;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setIsCreatedByTerrace(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->build()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->saveNewTabId(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    return-object p1
.end method

.method public createNewTabWithTerrace(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 4
    .param p1    # Lcom/sec/terrace/Terrace;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "SBrowserTabCreator"

    const-string v1, "[createNewTabWithTerrace]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceTabCountManager;->checkGlobalTabCountLimit(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_LINK:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->isLaunchedFromBackground()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->createLiveTab(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTabLaunchType(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setTerrace(Lcom/sec/terrace/Terrace;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->getParentTabId(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setParentId(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->getParentGroup(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setGroup(Landroid/util/Pair;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->setIsCreatedByTerrace(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBuilder;->build()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->saveNewTabId(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZZ)V

    return-object p1
.end method
