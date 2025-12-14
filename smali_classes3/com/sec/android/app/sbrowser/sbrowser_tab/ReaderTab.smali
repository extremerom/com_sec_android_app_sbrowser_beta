.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;
.super Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;
.source "SourceFile"


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoadFinished:Z

.field private mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

.field private mReaderTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

.field private mZoomInfoBarAnchorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mIsLoadFinished:Z

    return-void
.end method

.method private createReaderContextMenuPopulator()Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabContextMenuPopulator;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabContextMenuPopulator;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$2;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;Lcom/sec/terrace/Terrace;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setTab(Lcom/sec/android/app/sbrowser/tab/Tab;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$3;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$4;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->addEventListener(Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;)V

    return-object v0
.end method

.method private createReaderTabEventListener()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mReaderTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab$1;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mReaderTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mReaderTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    return-object p0
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->lambda$notifyReaderPageDisabled$0(Z)V

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mIsLoadFinished:Z

    return p0
.end method

.method private synthetic lambda$notifyReaderPageDisabled$0(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->hide()V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTab()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->show()V

    goto :goto_0

    :cond_0
    const-string p0, "si__ReaderTab"

    const-string p1, "[notifyReaderPageEnabled] mTerrace is already closed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    return-object p0
.end method


# virtual methods
.method public getZoomInfoBarAnchorView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mZoomInfoBarAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public initializeReaderTab(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[initializeReaderTab] id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReaderTab"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_READER_MODE:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->getInstance()Lcom/sec/android/app/sbrowser/tab/TabIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->generateTabId()I

    move-result v4

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isIncognito()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/TerraceHelper;->createTerrace(Z)Lcom/sec/terrace/Terrace;

    move-result-object v6

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-virtual/range {v2 .. v10}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->initializeTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ILandroid/content/Context;Lcom/sec/terrace/Terrace;ZZLjava/lang/String;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabLayout()Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setTabLayout(Lcom/sec/android/app/sbrowser/tab/TabLayout;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getTopMargin()I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getBottomMargin()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setTopControlsHeight(II)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getInstance()Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/reader/feature/option/ReaderOptionSettings;->getReaderFontSize(Z)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setDefaultFontSize(I)V

    const-string p1, "about:blank"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->loadUrl(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->createReaderTabEventListener()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->createReaderContextMenuPopulator()Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setContextMenuPopulator(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->isZoomApplyToThisTabOnly()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setZoomApplyToThisTabOnly(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getZoomValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setZoomValue(D)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->updateZoomValue()V

    return-void
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReaderPage()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyDataLoaded(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->loadDataWithBaseUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->show()V

    return-void
.end method

.method public notifyLoadFinished(Z)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mIsLoadFinished:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyReaderPageVisibilityChanged(ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getReader()Lcom/sec/android/app/sbrowser/common/model/reader/IReader;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/reader/IReader;->setLoadFinished(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public notifyReaderPageDisabled(ZZ)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mIsLoadFinished:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->hide()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mCallback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;-><init>(ILjava/lang/Object;Z)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public notifyReaderTabAttached()V
    .locals 2

    const-string v0, "si__ReaderTab"

    const-string v1, "[notifyReaderTabAttached]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->notifyLoadFinished(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getTopMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBaseImpl;->getBottomMargin()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->setTopControlsHeight(II)V

    return-void
.end method

.method public onReadyToShowTabAfterRecreate(Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setZoomInfoBarAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mZoomInfoBarAnchorView:Landroid/view/View;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ReaderTab;->mOriginalTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ReaderTab["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getTabId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] for SBrowserTab["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
