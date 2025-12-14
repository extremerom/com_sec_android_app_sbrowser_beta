.class public Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBarManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedPopup;
.implements Lcom/sec/android/app/sbrowser/download/completed_info/IDownloadInfoBarManager;


# instance fields
.field private mInfoBars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private getInfoBarService(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/infobars/InfoBarService;
    .locals 0

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/tab/TabActivity;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->isFullscreenForTabOrPending()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onDismissed(Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBarManager;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public recreateSnackbar(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadItem;ZIJ)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public showView(Landroid/app/Activity;Lcom/sec/terrace/browser/download/TerraceDownloadItem;ZI)V
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBarManager;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->updateCount()V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;->onCloseButtonClicked()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBarManager;->getInfoBarService(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v8, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->createInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v3

    move-object v1, v8

    move-object v2, p1

    move-object v4, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBar;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/download/completed_info/IDownloadInfoBarManager;Lcom/sec/terrace/browser/download/TerraceDownloadItem;ZI)V

    invoke-virtual {v0, v8}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->addInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)Z

    instance-of p2, p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getTabManager(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->showInfoBar()V

    goto :goto_1

    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadInfoBarManager;->mInfoBars:Ljava/util/ArrayList;

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
