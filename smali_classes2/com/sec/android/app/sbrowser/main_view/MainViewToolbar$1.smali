.class Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/MainViewToolbarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMultiTabNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMultiTabNavigationBarState()Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    move-result-object p0

    return-object p0
.end method

.method public isFindOnPageRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFindOnPageRunning()Z

    move-result p0

    return p0
.end method

.method public isMultiTabClosing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabClosing()Z

    move-result p0

    return p0
.end method

.method public isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method public isNoTabsShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNoTabsShowing()Z

    move-result p0

    return p0
.end method

.method public isReadAloudToolbarMaximized()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->isReadAloudToolbarMaximized()Z

    move-result p0

    return p0
.end method

.method public isSummarizedViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->isSummarizedViewShowing()Z

    move-result p0

    return p0
.end method

.method public notifyTransBarClose()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->onMainViewToolbarHeightChanged()V

    return-void
.end method

.method public shouldEnableCustomHeader()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->shouldEnableCustomHeader()Z

    move-result p0

    return p0
.end method

.method public updateHistoryNaviAnchorView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewToolbar;->updateHistoryNaviAnchorView()V

    return-void
.end method
