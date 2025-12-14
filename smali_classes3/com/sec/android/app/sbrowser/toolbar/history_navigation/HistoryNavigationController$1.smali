.class Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->a(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->updateCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->b(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->notifyDataSetChanged()V

    return-void
.end method

.method public onTitleUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->a(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->updateCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->b(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->notifyDataSetChanged()V

    return-void
.end method

.method public onUpdatedFavicon(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->b(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->notifyDataSetChanged()V

    return-void
.end method

.method public onUrlUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->a(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationItems;->updateItems(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;->b(Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationController;)Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/history_navigation/HistoryNavigationPopup;->notifyDataSetChanged()V

    return-void
.end method
