.class public Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$Listener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackwardLandAnchor:Landroid/view/View;

.field private mBackwardPortAnchor:Landroid/view/View;

.field private mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private mForwardLandAnchor:Landroid/view/View;

.field private mForwardPortAnchor:Landroid/view/View;

.field private mHistoryItems:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;

.field private mHistoryPopup:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

.field private mIsForward:Z

.field private mListener:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$Listener;

.field private mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$Listener;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mListener:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$Listener;

    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup$HistoryNavigationListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mHistoryPopup:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    new-instance p1, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mHistoryItems:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mHistoryPopup:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    return-object p0
.end method

.method private getAnchorview()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mIsForward:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mForwardLandAnchor:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mBackwardLandAnchor:Landroid/view/View;

    :goto_0
    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mIsForward:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mForwardPortAnchor:Landroid/view/View;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mBackwardPortAnchor:Landroid/view/View;

    :goto_1
    return-object p0
.end method


# virtual methods
.method public isPopupShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mHistoryPopup:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-void
.end method

.method public onItemClicked(Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->reload()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getIndex()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->goToNavigationIndex(I)V

    :goto_0
    const-string p0, "2239"

    const-string p1, "0"

    const-string v0, "201"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLayoutChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->getAnchorview()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mHistoryPopup:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->dismiss()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mHistoryPopup:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->dismiss()V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mHistoryPopup:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->setAnchorView(Landroid/view/View;)V

    return-void
.end method

.method public onOpenHistoryClicked()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mIsForward:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b005e

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0047

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mListener:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$Listener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$Listener;->onOpenHistory(IZI)V

    const-string p0, "1"

    const-string v0, "201"

    const-string v1, "2239"

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnchorView(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p1, p2, p2}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->setAnchorView(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setAnchorView(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mForwardPortAnchor:Landroid/view/View;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mForwardLandAnchor:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mBackwardPortAnchor:Landroid/view/View;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mBackwardLandAnchor:Landroid/view/View;

    return-void
.end method

.method public showPopup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mIsForward:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mHistoryItems:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->updateItems(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mHistoryPopup:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->mHistoryItems:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->getAnchorview()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->show(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;Landroid/view/View;)V

    return-void
.end method
