.class Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->startFindOnPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

.field final synthetic val$tabToFindOnPage:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->val$tabToFindOnPage:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public focusOutFromFindOnPage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->focusOutFromFindOnPage()V

    return-void
.end method

.method public onFindNext()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->val$tabToFindOnPage:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->val$tabToFindOnPage:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->startFinding(Ljava/lang/String;Z)V

    return-void
.end method

.method public onFindPrev()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->val$tabToFindOnPage:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->val$tabToFindOnPage:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->startFinding(Ljava/lang/String;Z)V

    return-void
.end method

.method public onFindText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->val$tabToFindOnPage:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->val$tabToFindOnPage:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->startFinding(Ljava/lang/String;Z)V

    return-void
.end method

.method public onFinishFindOnPage()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->finishFindOnPage()Z

    return-void
.end method

.method public onLaunchVoiceRecognizer()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->launchVoiceRecognizer()V

    return-void
.end method

.method public onStopFindText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->val$tabToFindOnPage:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->val$tabToFindOnPage:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->stopFinding()V

    return-void
.end method

.method public shouldFinishFindOnPage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewFindOnPage;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isBookmarkBarContainerShowing()Z

    move-result p0

    return p0
.end method
