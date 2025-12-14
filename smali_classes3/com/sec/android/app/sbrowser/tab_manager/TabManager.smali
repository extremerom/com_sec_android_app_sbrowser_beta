.class public Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/tab_manager/TabList;
.implements Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;
.implements Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;
.implements Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;
.implements Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDestroyed:Z

.field private final mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNativePageManager:Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;

.field private mPendingCloseTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private mRestoringStarted:Z

.field private mSaveInstanceState:Z

.field private mSmartTabDeleteAIModelManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

.field private mTabCreationTaskHandler:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;

.field private mTabCreator:Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;

.field private mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

.field private mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

.field private final mTabStatesLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/FrameLayout;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabStatesLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->initialize(Landroid/app/Activity;Landroid/widget/FrameLayout;I)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->lambda$closeUnusedTabsIfNeeded$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mNativePageManager:Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)Lcom/sec/android/app/sbrowser/tab_manager/TabModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    return-object p0
.end method

.method private getHomePageUrl(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageForSecretMode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "none"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "internet-native://newtab/"

    :cond_1
    return-object p0
.end method

.method private initialize(Landroid/app/Activity;Landroid/widget/FrameLayout;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;

    invoke-direct {v0, p1, p0, p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;-><init>(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabCreationTaskHandler:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mNativePageManager:Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mSmartTabDeleteAIModelManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModelImpl;-><init>(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    invoke-direct {p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;-><init>(Landroid/view/ViewGroup;ILcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setTabModel(Lcom/sec/android/app/sbrowser/tab_manager/TabModel;)V

    return-void
.end method

.method private synthetic lambda$closeUnusedTabsIfNeeded$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getLastActiveStartTime(I)J

    move-result-wide v0

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getLastActiveStartTime(I)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private manageUnusedTabsBySmartTabDelete()Z
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getAutoCloseUnusedTabsSettings()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x32

    if-gt v2, v3, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mSmartTabDeleteAIModelManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->predictAndDeleteTabs(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " unimportantSet Tab size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Total Tabs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "TabManager"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_4
    const-string p0, "5956"

    int-to-long v0, v1

    const-string v2, "201"

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0
.end method

.method private notifyAllTabsRemoved(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onAllTabsRemoved(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForCountingTab(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForAvgTabCountInGroup()V

    return-void
.end method

.method private notifyTabGroupColorChanged(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v2

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabGroupColorChanged(ZLjava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTabGroupNameChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v2

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabGroupNameChanged(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTabIsGrouped(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v2

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabGrouped(ZILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTabIsUngrouped(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v2

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabUngrouped(ZILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTabStateLoaded()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabStateLoaded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyUnusedTabsClosed()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onUnusedTabsClosed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSAStatusLogForAvgTabCountInGroup()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabCount(Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getUngroupedTabCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupNameList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    div-int p0, v0, p0

    :goto_0
    const-string v0, "4501"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    return-void
.end method

.method private sendSAStatusLogForCountingGroup()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupNameList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const-string v0, "4500"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    return-void
.end method

.method private sendSAStatusLogForCountingTab(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "0033"

    goto :goto_0

    :cond_0
    const-string v0, "0031"

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabCount(Z)I

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public activateContents(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public addListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTabToGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TabManager"

    if-eqz v0, :cond_0

    const-string p0, "[addTabToGroup] group name is empty"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "[addTabToGroup] addedTab is already in "

    invoke-static {p0, p2, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    move v6, v4

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v7}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupColorId()I

    move-result v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, v5}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)V

    const/4 v3, 0x1

    if-ne v6, v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[addTabToGroup] new group is created : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-virtual {p0, v2, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->reorderTab(II)V

    goto :goto_1

    :cond_4
    const-string p2, "[addTabToGroup] curPos: "

    const-string v0, ", newPos: "

    invoke-static {v2, v6, p2, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v6, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->reorderTabWithGroup(IIZ)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabIndexByTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p2

    if-eq p2, v4, :cond_5

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentIndex(ZI)V

    :cond_5
    return-void
.end method

.method public addTabToInstance(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 7

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->deactivate()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/sec/terrace/Terrace;->resetTopLevelNativeWindow(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabCreator()Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;->createNewTabWithTerrace(Lcom/sec/terrace/Terrace;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;ILjava/lang/String;ZI)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public addTabToList(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTabToSaveQueue(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabStatesLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->addTabToQueues(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    :cond_0
    return-void
.end method

.method public canReopenClosedOldestTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->canReopenClosedOldestTab()Z

    move-result p0

    return p0
.end method

.method public changeGroupColor(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->notifyTabGroupColorChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public clearClosedTabs()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->clearClosedTabs()V

    return-void
.end method

.method public closeAllTabs()V
    .locals 2

    const-string v0, "TabManager"

    const-string v1, "closeAllTabs()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeAllTabs(Z)V

    return-void
.end method

.method public closeAllTabs(Z)V
    .locals 4

    const-string v0, "TabManager"

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->existLockedTabs()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "closeAllTabs - existLockedTabs"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeAllUnlockedTabs()V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closeAllTabs - closeSecretTabs:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->preventSavingTabList(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->clearList()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->clearState()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTotalTabCount()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mNativePageManager:Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->clearNativePageMap(Ljava/util/List;)V

    :cond_1
    if-nez p1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isCreatedWithTerrace()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTabImmediately(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addToClosedTabList(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTabImmediately(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->preventSavingTabList(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->notifyAllTabsRemoved(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->resetCurrentTab()V

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->clearOtrBrowsingData(Z)V

    return-void
.end method

.method public closeAllTabsInGroup(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeAllTabsInGroup(Ljava/lang/String;)V

    return-void
.end method

.method public closeAllUnlockedTabs()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeAllUnlockedTabs()V

    return-void
.end method

.method public closeCurrentTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeCurrentTab()Z

    move-result p0

    return p0
.end method

.method public closeInstantTab(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeInstantTab(Z)V

    return-void
.end method

.method public declared-synchronized closeMultipleTabs(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeTabs(Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public closeOldestTab()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeOldestTab()I

    move-result p0

    return p0
.end method

.method public closeOtherTabs(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeOtherTabs(IZ)V

    return-void
.end method

.method public closeOtherTabsInGroup(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeOtherTabsInGroup(Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isTabRestoring()Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mPendingCloseTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public closeTabByMaxTabSnackbar(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public closeTabImmediately(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->closeTabImmediately(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public closeUnusedTabsIfNeeded()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->manageUnusedTabsBySmartTabDelete()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getAutoCloseUnusedTabsSettings()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[closeUnusedTabsIfNeeded] getAutoCloseUnusedTabsSettings "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/tab_manager/a;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/sec/android/app/sbrowser/tab_manager/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->shouldBeClosed(I)I

    move-result v4

    if-eqz v4, :cond_3

    const-string p0, "[closeUnusedTabsIfNeeded] tab is active"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[closeUnusedTabsIfNeeded] close tabId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeOldestTab()I

    goto :goto_0

    :cond_4
    int-to-long v0, v0

    const-string v2, "201"

    const-string v3, "5956"

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->notifyUnusedTabsClosed()V

    return-void
.end method

.method public createFrozenTab(Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 8
    .param p1    # Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabCreator:Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;->createFrozenTab(Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getState()Lcom/sec/terrace/TerraceState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/sec/terrace/TerraceState;->contentsState:Lcom/sec/terrace/TerraceState$WebContentsState;

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->isIncognito()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getHomePageUrl(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setPendingLoadUrl(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstanceId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getLastDesktopMode(I)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getUserAgentOption(Z)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getUserAgentOption(Z)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setUserAgentOption(ZII)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->isSavedReaderPage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsSavedReaderPage(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getZoomValueMobile()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->isZoomApplyToThisTabOnlyMobile()Z

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getZoomValueDex()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->isZoomApplyToThisTabOnlyDex()Z

    move-result v7

    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setRestoredZoomValue(DZDZ)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getVisitCount()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->setVisitCount(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/ClosedTab;->getActiveTime()J

    move-result-wide p0

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->setActiveTime(J)V

    return-object v0
.end method

.method public createFrozenTab(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;ZZZ)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 19
    .param p1    # Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabCreator:Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getTabId()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->isLocked()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getGroupColorId()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getVisitCount()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getActiveTime()J

    move-result-wide v10

    move/from16 v3, p3

    move-object/from16 v4, p2

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v11}, Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;->createFrozenTab(IZLcom/sec/terrace/TerraceState;ZZLjava/lang/String;IIJ)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-nez p2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v2, p3

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getHomePageUrl(Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p4, :cond_1

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setPendingLoadUrl(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hide()V

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hideInfoBar()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstanceId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getLastDesktopMode(I)Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getPhoneUserAgentOption()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getDexUserAgentOption()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setUserAgentOption(ZII)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->isSavedReaderPage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsSavedReaderPage(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getZoomValueMobile()D

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->isZoomApplyToThisTabOnlyMobile()Z

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->getZoomValueDex()D

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;->isZoomApplyToThisTabOnlyDex()Z

    move-result v18

    move-object v12, v1

    invoke-interface/range {v12 .. v18}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setRestoredZoomValue(DZDZ)V

    return-object v1
.end method

.method public createNewBackgroundTab(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabCreator:Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;->createNewBackgroundTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public createNewInstantTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabCreator:Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;->createNewInstantTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabCreator:Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLjava/lang/String;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 6
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabCreator:Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public createNewTabWithTerrace(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabCreator:Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;->createNewTabWithTerrace(Lcom/sec/terrace/Terrace;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public createTabGroupWithTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)V
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TabManager"

    if-eqz v0, :cond_0

    const-string p0, "[createTabGroupWithTab] group name is empty"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "[createTabGroupWithTab] addedTab is already in "

    invoke-static {p0, p2, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, "[createTabGroupWithTab] new group is created : "

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, v2, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->reorderTab(II)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabIndexByTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentIndex(ZI)V

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "TabManager"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mDestroyed:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->clearClosedTabs()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->destroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mNativePageManager:Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->clearNativePageMap(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->removeObserver(Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->destroy()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabCreationTaskHandler:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->removeCallbacksAndMessages()V

    return-void
.end method

.method public existLockedTabs()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->hasLockedTabs()Z

    move-result p0

    return p0
.end method

.method public existLockedTabsInGroup(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->hasLockedTabsInGroup(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public finishSplitMode()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getAllTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->detachThinWebView(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeInstantTab(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeInstantTab(Z)V

    return-void
.end method

.method public finishSplitMode(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->detachThinWebView(Z)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasInstantTab(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeInstantTab(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setFocusedTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setVideoAssistantActivated(Z)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getAllTabList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getAllTabList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCacheExcludedTabList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCacheExcludedTabList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getClosedTabList(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getClosedTabList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getContentPageTabIndex()I
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->isLaunchContentPageSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexById(ZI)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v4

    if-ne v3, v4, :cond_1

    :cond_3
    const-string p0, "getContentPageTabIndex: "

    const-string v0, "TabManager"

    invoke-static {v1, p0, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getContentPageUrl()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isBrazil()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->getUnifiedHomePageUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "contentUrl = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabManager"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTotalTabCount()I

    move-result p0

    return p0
.end method

.method public getCurrentIndex(Z)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentIndex(Z)I

    move-result p0

    return p0
.end method

.method public getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getGroupColorId(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getGroupColorId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getGroupColorValue(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupColorId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupColor;->getGroupColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getGroupNameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getGroupNameList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getIncognitoTabCount()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabCount(Z)I

    move-result p0

    return p0
.end method

.method public getInstanceId()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getInstanceId()I

    move-result p0

    return p0
.end method

.method public getInstantTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getInstantTab(Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getLastActiveStartTime(I)J
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mSmartTabDeleteAIModelManager:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteAIModelManager;->getLastActiveStartTime(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLatestReopenedPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getLatestReopenedPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLockedTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getLockedTabCount()I

    move-result p0

    return p0
.end method

.method public getMemberCount(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getMemberCount(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getNativePageDelegate(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager$1;-><init>(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-object v0
.end method

.method public getNativePageEarly(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mNativePageManager:Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->get(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setNativePageEarly(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;)V

    return-void
.end method

.method public getNormalTabCount()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabCount(Z)I

    move-result p0

    return p0
.end method

.method public getOldestTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getOldestTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getParentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 2

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentTabId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentTabId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getTabByUrl(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabByUrl(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public getTabCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabCount(Z)I

    move-result p0

    return p0
.end method

.method public getTabCreator()Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabCreator:Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;

    return-object p0
.end method

.method public getTabIndexByTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabIndexByTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p0

    return p0
.end method

.method public getTabList(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTotalTabCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabCount(Z)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabCount(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getUngroupedTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getUngroupedTabCount()I

    move-result p0

    return p0
.end method

.method public getUnlockedMemberCount(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getUnlockedMemberCount(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getUnlockedTabCount(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getUnlockedTabCount(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public groupTab(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupColorId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->notifyTabIsGrouped(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleBeforeTabHidden(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onBeforeTabHidden(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasClosedTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->hasClosedTab()Z

    move-result p0

    return p0
.end method

.method public hasInstantTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->hasInstantTab()Z

    move-result p0

    return p0
.end method

.method public hasInstantTab(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->hasInstantTab(Z)Z

    move-result p0

    return p0
.end method

.method public hasNoTab()Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getIncognitoTabCount()I

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getNormalTabCount()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public isCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method public isDestroyed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mDestroyed:Z

    return p0
.end method

.method public isInstantTab(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstantTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasInstantTab()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    if-ne p0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method public isInstantTabOnLeft()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstantTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitModeOnLeft()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedToSkipShowTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isNeedToSkipShowTab()Z

    move-result p0

    return p0
.end method

.method public isSaveInstanceState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mSaveInstanceState:Z

    return p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isTabGroupExist(ZLjava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabRestoring()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mRestoringStarted:Z

    return p0
.end method

.method public isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method public launchNewTab(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabCreationTaskHandler:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerTaskHandler;->launchNewTab(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadState(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "loadState,  skipInitialUrl : "

    const-string v1, "TabManager"

    invoke-static {v0, v1, p2}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->loadState(Ljava/lang/String;Z)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->manageUnusedTabsBySmartTabDelete()Z

    return-void
.end method

.method public migrateTabGroupIfNeeded()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getShouldMigrateTabGroup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setShouldMigrateTabGroup(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v4

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupColorId()I

    move-result v1

    invoke-static {v3, v4, v2, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;->onTabGroupChanged(Landroid/app/Activity;ILjava/lang/String;I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public moveTab(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->moveTab(II)V

    return-void
.end method

.method public moveTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->moveTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public moveTabGroup(Ljava/lang/String;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->moveTabGroup(Ljava/lang/String;IZ)V

    return-void
.end method

.method public notifyNewTabLaunched(ZLjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onLaunchNewTab(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTabDetailsLoaded(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabDetailsLoaded(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTabGroupChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[notifyTabGroupChanged] group changed size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabGroupChanged(ZLjava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForAvgTabCountInGroup()V

    return-void
.end method

.method public notifyTabGroupUngrouped(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[notifyTabGroupUngrouped] ungrouped group : "

    const-string v1, "TabManager"

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabGroupUngrouped(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForAvgTabCountInGroup()V

    return-void
.end method

.method public notifyTabRestoreSkipped(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabRestoreSkipped(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTabTearingFinished()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabTearingFinished()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAllTabsInGroupRemoved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onAllTabsInGroupRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->saveTabListAsynchronously()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForCountingTab(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForAvgTabCountInGroup()V

    return-void
.end method

.method public onAllUnlockedTabsInGroupRemoved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onAllUnlockedTabsInGroupRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->saveTabListAsynchronously()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForCountingTab(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForAvgTabCountInGroup()V

    return-void
.end method

.method public onAllUnlockedTabsRemoved()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onAllUnlockedTabsRemoved()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->saveTabListAsynchronously()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForCountingTab(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForAvgTabCountInGroup()V

    return-void
.end method

.method public onBackgroundTabOpened(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onBackgroundTabOpened()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetailsRead(ILjava/lang/String;ZLjava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->notifyTabDetailsLoaded(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onFocusedTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onFocusedTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInstantTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setNativePageDelegate(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onInstantTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInstantTabRemoved(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onInstantTabRemoved(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInstantTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onInstantTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMainViewDestroyedByRecreate()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->removeTabView()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getAllTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->detachTabView()V

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V

    :cond_1
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/sec/terrace/Terrace;->getTerraceInfoBarService()Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Lcom/sec/terrace/browser/infobars/TerraceInfoBarService;->setDelegate(Lcom/sec/terrace/browser/infobars/TerraceInfoBarService$TerraceInfoBarServiceDelegate;)V

    :cond_3
    invoke-virtual {v1}, Lcom/sec/terrace/Terrace;->clearTopLevelNativeWindow()V

    invoke-virtual {v1}, Lcom/sec/terrace/Terrace;->removeOnDragListener()V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mNativePageManager:Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/tab_manager/NativePageManager;->clearNativePageMap(Ljava/util/List;)V

    return-void
.end method

.method public onMainViewRecreated(Landroid/app/Activity;Landroid/widget/FrameLayout;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;

    invoke-direct {v0, p1, p0, p0}, Lcom/sec/android/app/sbrowser/tab_saver/TabSaver;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-direct {p1, v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab_manager/TabModel;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabCreator:Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setTabHolder(Landroid/widget/FrameLayout;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getAllTabList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-interface {p2, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->onMainActivityRecreated(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOtherTabRemoved(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onOtherTabsRemoved(IZ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->saveTabListAsynchronously()V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForCountingTab(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForAvgTabCountInGroup()V

    return-void
.end method

.method public onOtherTabsInGroupRemoved(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onOtherTabsInGroupRemoved(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->saveTabListAsynchronously()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForCountingTab(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForAvgTabCountInGroup()V

    return-void
.end method

.method public onReadyToShowTabAfterRecreate()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getAllTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->onReadyToShowTabAfterRecreate(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getNativePageDelegate(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setNativePageDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->showReloadTipCardIfNeeded()V

    return-void
.end method

.method public onRestoreSkipped(IZ)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->notifyTabRestoreSkipped(I)V

    :cond_0
    return-void
.end method

.method public onStateLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabStatesLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mPendingCloseTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mPendingCloseTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mRestoringStarted:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->notifyTabStateLoaded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->migrateTabGroupIfNeeded()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isVisible(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->isDonationAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->getInstance()Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/donations/AppSearchDonationHelper;->donateTabs()V

    :cond_1
    return-void
.end method

.method public onTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForCountingTab(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForAvgTabCountInGroup()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setNativePageDelegate(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTabGroupOrderChanged(Ljava/lang/String;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabGroupOrderChanged(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4055"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTabMoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabMoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForAvgTabCountInGroup()V

    return-void
.end method

.method public onTabOrderChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v2

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabOrderChanged(ZII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->getScreenID(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "4055"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTabRemoved(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabRemoved(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->saveTabListAsynchronously()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForCountingTab(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForAvgTabCountInGroup()V

    return-void
.end method

.method public onTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->onTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public preventSavingTabList(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->preventSavingTabList(Z)V

    return-void
.end method

.method public removeListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTabFromInstance(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->hideTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public removeTabFromQueue(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->removeTabFromQueues(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-void
.end method

.method public renameGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupColorId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, p2, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->notifyTabGroupNameChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reopenCloseTabExceptTab(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->reopenCloseTabExceptTab(I)I

    move-result p0

    return p0
.end method

.method public reopenClosedTab()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->reopenClosedTab()I

    move-result p0

    return p0
.end method

.method public reorderGroup(Ljava/lang/String;IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->reorderGroup(Ljava/lang/String;IZ)V

    return-void
.end method

.method public reorderTab(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->reorderTab(II)V

    return-void
.end method

.method public reorderTabWithGroup(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->reorderTabWithGroup(IIZ)V

    return-void
.end method

.method public restoreFromBundle(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/terrace/TerraceState;->restoreFromBundle(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->clearEncryptedState()V

    :cond_0
    return-void
.end method

.method public restoreTabs(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mRestoringStarted:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->restoreTabs(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "restoreTabs at instance id : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstanceId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TabManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabStatesLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;->saveState()V

    :cond_0
    return-void
.end method

.method public saveToBundle(Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sec/terrace/TerraceState;->saveToBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setCurrentIndex(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setCurrentIndex(ZI)V

    return-void
.end method

.method public setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public setCurrentTabAfterModeChange(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setCurrentTabAfterModeChange at instance "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstanceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentIndex(Z)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "old CurrentTab id : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " (false:normal, true:secret mode)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->dismissDialogForNavigation()V

    goto :goto_0

    :cond_0
    const-string v2, "old CurrentTab is null, no tab in this mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->stopMediaSession(Z)V

    return-void
.end method

.method public setFocusedTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setFocusedTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public setGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setGroupName(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupColorId()I

    move-result v0

    if-eq v0, p3, :cond_2

    invoke-interface {p1, p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setGroupColorId(I)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForCountingGroup()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->sendSAStatusLogForAvgTabCountInGroup()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncUtility;->onTabGroupChanged(Landroid/app/Activity;ILjava/lang/String;I)V

    return-void
.end method

.method public setNativePageDelegate(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getNativePageDelegate(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setNativePageDelegate(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageDelegate;)V

    return-void
.end method

.method public setNeedToSkipShowTab(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setNeedToSkipShowTab(Z)V

    return-void
.end method

.method public setPendingCloseTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mPendingCloseTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-void
.end method

.method public setSaveInstanceState(Z)V
    .locals 2

    const-string v0, "saveInstanceState = "

    const-string v1, "TabManager"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mSaveInstanceState:Z

    return-void
.end method

.method public setTabModel(Lcom/sec/android/app/sbrowser/tab_manager/TabModel;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->setDelegate(Lcom/sec/android/app/sbrowser/tab_manager/TabModelDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->addObserver(Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-direct {p1, v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/SBrowserTabCreator;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab_manager/TabModel;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabCreator:Lcom/sec/android/app/sbrowser/tab_manager/TabCreator;

    return-void
.end method

.method public setTabSaver(Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabSaver:Lcom/sec/android/app/sbrowser/common/tab_saver/TabPersister;

    return-void
.end method

.method public shouldBeClosed(I)I
    .locals 7

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getLastActiveStartTime(I)J

    move-result-wide v2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[shouldBeClosed] restore tab id "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TabManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "[shouldBeClosed] last used time "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v6, "[shouldBeClosed] current time "

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getAutoCloseUnusedTabsSettings()I

    move-result p0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[shouldBeClosed] setting value : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", days : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    return v1

    :cond_1
    if-ne p0, v1, :cond_2

    const-wide/16 v4, 0x7

    cmp-long p0, v2, v4

    if-gez p0, :cond_4

    return v1

    :cond_2
    const/4 v4, 0x2

    if-ne p0, v4, :cond_3

    const-wide/16 v4, 0x1e

    cmp-long p0, v2, v4

    if-gez p0, :cond_4

    return v1

    :cond_3
    const/4 v1, 0x3

    if-ne p0, v1, :cond_4

    return v4

    :cond_4
    const-string p0, "[shouldBeClosed] tab id "

    const-string v1, " is not restored"

    invoke-static {p1, p0, v1, v0}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public shouldLaunchNewContentPage()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->isLaunchContentPageSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mSaveInstanceState:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getContentPageTabIndex()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startSplitMode(ZZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    xor-int/lit8 v0, p1, 0x1

    invoke-interface {p3, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->attachThinWebView(Z)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasInstantTab(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeInstantTab(Z)V

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewInstantTab(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->attachThinWebView(Z)V

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setFocusedTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "startSplitMode(): isInstantTabOnLeft -> "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isInstantTabOnLeft()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TabManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public stopMediaSession(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->stopMediaSession()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public swapTab(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->mTabModel:Lcom/sec/android/app/sbrowser/tab_manager/TabModel;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabModel;->swapTab(II)V

    return-void
.end method

.method public ungroup(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TabManager"

    const-string p1, "[ungroup] cannot ungroup root"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isSecretModeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->notifyTabGroupUngrouped(Ljava/lang/String;)V

    return-void
.end method

.method public ungroupTab(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;I)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->notifyTabIsUngrouped(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateIsBookmarked(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->updateIsBookmarked(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
