.class Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiMenuHelper$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setActivity(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;->delete(Lcom/sec/android/app/sbrowser/sites/history/model/HistoryUiDelegate;Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    return-void
.end method

.method public deleteConfirm()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->K(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    return-void
.end method

.method public isInActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$800(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z

    move-result p0

    return p0
.end method

.method public isSearchDataEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$700(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSearchDataEmpty()Z

    move-result p0

    return p0
.end method

.method public onDialogDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->onDialogDismissed()V

    return-void
.end method

.method public open(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;->open(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    return-void
.end method

.method public openInNewTab(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;->openInNewTab(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    return-void
.end method

.method public openInNewWindow(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;->openInNewWindow(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    return-void
.end method

.method public openInSecretMode(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$1000(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$900(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/history/TerraceHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->openInSecretMode(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public share(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$4;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/model/HistoryContextMenuDelegate;->share(Lcom/sec/terrace/browser/history/TerraceHistoryItem;)V

    return-void
.end method
