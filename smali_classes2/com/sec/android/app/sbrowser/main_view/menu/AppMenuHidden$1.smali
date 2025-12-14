.class Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->onCloseInternetClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

.field final synthetic val$history:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$1;->val$history:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrowsingDataCleared()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$1;->val$history:Z

    const-string v1, "AppMenuHidden"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getInstance()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->deleteAllMediaHistoryData(Landroid/content/Context;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->clearHistory()V

    new-instance v0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->clearHistory()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "sbrowser_history_delete"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "[onCloseInternetClicked] Delete History"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, "[onCloseInternetClicked] onBrowsingDataCleared"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
