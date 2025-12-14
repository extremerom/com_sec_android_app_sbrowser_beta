.class Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReaderThemeColor()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getReaderThemeColor()I

    move-result p0

    return p0
.end method

.method public getTabUrl()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getVisibleHeight()I

    move-result p0

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

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

.method public isFullscreenVideoMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

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

.method public isReaderPage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecretMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isSplitMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCheckLangOnNeverTranslateList()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->onCheckLangOnNeverTranslateList(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCheckSiteOnNeverTranslateList()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->onCheckSiteOnNeverTranslateList(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onLoadUrl(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, -0x2

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onSetNeverTranslateLanguage(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId()I

    move-result p0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->onSetNeverTranslateLanguage(IZ)V

    :cond_0
    return-void
.end method

.method public onSetNeverTranslateSite(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getCurrentTabId()I

    move-result p0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/si_translate/TranslateBarBridge;->onSetNeverTranslateSite(IZ)V

    :cond_0
    return-void
.end method

.method public onTransBarLoadingUpdated(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onTransBarLoadingUpdated(Z)V

    return-void
.end method

.method public onTransSplitMode(ZZZ)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->h(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->setTransSplitMode(Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSplitTab()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewSplitTab;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewSplitTab;->onToggleSplitMode(ZZZZ)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTransBar;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
