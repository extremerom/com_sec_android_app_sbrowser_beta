.class Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canCurrentTabGoBack()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->canGoBack()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public canCurrentTabGoForward()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->canGoForward()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public didRemoveObjectCaptureView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->didRemoveObjectCaptureView()Z

    return-void
.end method

.method public didRemoveVisionTextView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->didRemoveVisionTextView()Z

    return-void
.end method

.method public enterEditMode(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->enterEditMode(ZZ)V

    return-void
.end method

.method public getContentMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getContentMimeType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->isNativePage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->isReaderPage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->getCurrentThemeColor()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;-><init>(I)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getCurrentThemeColor()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getThemeColor()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getDeepLinkAppInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/app/SBrowserDeepLinkAppInfo;
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/DeepLinkHandler;->getDeepLinkAppInfo(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/app/SBrowserDeepLinkAppInfo;

    move-result-object p0

    return-object p0
.end method

.method public getGroupColorValue()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getGroupColorValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "MainViewTabDelegate"

    const-string v0, "current tab is null or terrace is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;-><init>()V

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object p0

    return-object p0
.end method

.method public getParentalControlBlockedUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getParentalControlBlockedUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getReaderThemeColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTheme()I

    move-result p0

    return p0
.end method

.method public getSecurityLevel()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/TerraceSecurityStateModel;->getSecurityLevelForWebContents(Lcom/sec/terrace/Terrace;)I

    move-result p0

    return p0
.end method

.method public getTabCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabCount()I

    move-result p0

    return p0
.end method

.method public getTabCountOfCurrentGroup()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabCount()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabCountOfGroup(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0
.end method

.method public getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getZoomValue()D
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getZoomValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public isAboutBlankUrl()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isAboutBlankUrl()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isArticle()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isArticleAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBookmarkAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isBookmarkAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBookmarked()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isBookmarked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCheckableBottomBarVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isCheckableBottomBarVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isContentDarkModeEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

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

.method public isErrorPage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isErrorPage()Z

    move-result p0

    return p0
.end method

.method public isExtractionFailed()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isArticleAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->isExtractionFailed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullScreenMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullscreenVideoMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullscreenVideoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHighContrastModeEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isInGroup()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isIncognitoMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInfoBarPresent()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isInfoBarPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->isNativeInitialized()Z

    move-result p0

    return p0
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiCpUrl()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNativeInitialScreen()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativeInitialScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNativePage()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MainViewTabDelegate"

    if-nez v0, :cond_0

    const-string p0, "isNativePage, tab is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "isNativePage, tab is closed"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "isNativePage, tab animation is running"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getPreviousUpdatedUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result p0

    return p0
.end method

.method public isNeedToHideToolbarShadow()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNeedToHideToolbarShadow()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNewQuickAccessPage()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isQuickAccessNativePage()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isNightModeEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isOfflineMode()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSavedPageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPWAInstalling()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getPWAStatus()Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/webapp/PWAStatus;->isInstalling()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public isParentalControlNativePage()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isParentalControlNativePage()Z

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
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSavedReaderPage()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSavedReaderPage()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSolidColorLightThemed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSolidColorLightThemed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSplitMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result p0

    return p0
.end method

.method public isTabAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;)Z

    move-result p0

    return p0
.end method

.method public isUnifiedHomepageUrl()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUrlBlockedByParentalControl(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUrlBlockedByParentalControl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadUrl(Ljava/lang/String;II)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    goto :goto_0

    :goto_1
    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;)V

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->destroySelectedText()V

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;ILjava/lang/String;ZI)V

    return-void
.end method

.method public onLaunchNewTabFromAssistIntent()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->onLaunchNewTabFromAssistIntent()V

    return-void
.end method

.method public onLaunchNewTabFromExternalApp()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->onLaunchNewTabFromExternalApp()V

    return-void
.end method

.method public openWebPage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reload()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "MainViewTabDelegate"

    const-string v0, "reload : tab == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->reload()V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "MainViewTabDelegate"

    const-string v0, "stopLoading : tab == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->stopLoading()V

    return-void
.end method
