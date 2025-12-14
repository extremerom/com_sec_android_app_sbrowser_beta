.class Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->applySecretModeStatus(ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

.field final synthetic val$finalUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$3;->val$finalUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabStateLoaded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$3;->val$finalUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentIndex(Z)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$3;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
