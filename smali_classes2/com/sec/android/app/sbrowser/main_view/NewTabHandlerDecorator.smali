.class public Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-void
.end method


# virtual methods
.method public handleBixbyIntent(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->handleBixbyIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public launchMultiTabStack(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchMultiTabStack(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    return-void
.end method

.method public launchNewTab(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTab(ZLjava/lang/String;)V

    return-void
.end method

.method public launchNewTabFromAssistIntent()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTabFromAssistIntent()V

    return-void
.end method

.method public launchNewTabFromSyncTab(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTabFromSyncTab(Ljava/lang/String;)V

    return-void
.end method

.method public launchNewTabWithAnim(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTabWithAnim(ZLjava/lang/String;)V

    return-void
.end method

.method public launchNewTabWithTerrace(Lcom/sec/terrace/Terrace;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTabWithTerrace(Lcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public launchNewTabWithoutAnim(ZZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTabWithoutAnim(ZZLjava/lang/String;)V

    return-void
.end method

.method public loadHomePageWithNewTab(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadHomePageWithNewTab(ZLjava/lang/String;)V

    return-void
.end method

.method public loadUrlWithExistingTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithExistingTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    return-void
.end method

.method public loadUrlWithNewTabFromExternalApp(Ljava/lang/String;Landroid/content/Intent;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTabFromExternalApp(Ljava/lang/String;Landroid/content/Intent;ZZ)V

    return-void
.end method

.method public loadUrlWithNewTabFromExternalApp(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTabFromExternalApp(ZZ)V

    return-void
.end method

.method public onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public openDownloadFile(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->openDownloadFile(Landroid/content/Intent;)V

    return-void
.end method

.method public openNewTabOnTabManager()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->openNewTabOnTabManager()V

    return-void
.end method

.method public openSites(IZI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->openSites(IZI)V

    return-void
.end method

.method public showTabWithoutLoading(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;)V
    .locals 0
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->showTabWithoutLoading(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;)V

    return-void
.end method
