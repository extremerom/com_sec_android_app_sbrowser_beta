.class Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUndoAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasClosedTab()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reopenClosedTab()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->reopenClosedTab()I

    return-void
.end method
