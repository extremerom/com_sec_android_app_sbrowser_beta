.class Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate$TalkBackObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TalkBackObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate$TalkBackObserver;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "touch_exploration_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate$TalkBackObserver;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "enabled_accessibility_services"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "(?i).*TalkBackService.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate$TalkBackObserver;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->onTalkBackStatusChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate$TalkBackObserver;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewDelegate;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePageVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->onTalkBackStatusChanged(Z)V

    :cond_1
    return-void
.end method
