.class Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->showNativePage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->lambda$onLoadUrl$0(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$onLoadUrl$0(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->g(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onBottombarShadowVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyBottombarShadowVisibilityChanged(Z)V

    return-void
.end method

.method public onBottombarVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyBottombarVisibilityChanged(Z)V

    return-void
.end method

.method public onEditModeEntered()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->c(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->c(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Landroid/view/ViewGroup;

    move-result-object v1

    const/high16 v2, 0x60000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->c(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->i(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;Z)V

    return-void
.end method

.method public onEditModeExited(Z)V
    .locals 3

    const-string v0, "onEditModeExited : fromExternal = "

    const-string v1, "NativePageHandler"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->c(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->c(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Landroid/view/ViewGroup;

    move-result-object v1

    const/high16 v2, 0x60000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->c(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->f(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setAccessibilityEnabled(Z)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->e(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)I

    move-result v2

    invoke-interface {p1, v2, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setThemeColor(IZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->showInfoBar()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->showDocumentPage()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->isNeedToHideToolbarShadow()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyToolbarShadowVisibilityChanged(Z)V

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->h(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;Z)V

    return-void
.end method

.method public onLoadUrl(Ljava/lang/String;II)V
    .locals 1

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/c;-><init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;Ljava/lang/String;I)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoadUrlInNewTab(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyOpenInNewTab(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onReadyToShow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyNativePageIsReady()V

    return-void
.end method

.method public onScrollEnded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyScrollEnded()V

    return-void
.end method

.method public onScrollStarted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyScrollStarted()V

    return-void
.end method

.method public onToolbarShadowVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyToolbarShadowVisibilityChanged(Z)V

    return-void
.end method

.method public onToolbarVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyToolbarVisibilityChanged(Z)V

    return-void
.end method

.method public requestUrlEditMode(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->requestUrlEditMode(Landroid/view/View;)V

    return-void
.end method

.method public setTranslationBottomBarY(FZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->setTranslationBottomBarY(FZ)V

    return-void
.end method

.method public setTranslationToolbarY(FZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/NativePageHandler;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getTabEventNotifier()Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->setTranslationToolBarY(FZ)V

    return-void
.end method
