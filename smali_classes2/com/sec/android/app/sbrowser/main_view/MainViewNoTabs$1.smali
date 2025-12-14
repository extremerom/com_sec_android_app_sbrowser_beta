.class Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/NoTabsFragment$Listener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;Z)V

    return-void
.end method

.method public onDetached()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyStatusBarThemeColorChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->notifyLetterBoxColorChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateDecorFitsSystemWindows()V

    return-void
.end method

.method public onNewTabButtonClick(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewNoTabs;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->launchNewTab(Z)V

    return-void
.end method
