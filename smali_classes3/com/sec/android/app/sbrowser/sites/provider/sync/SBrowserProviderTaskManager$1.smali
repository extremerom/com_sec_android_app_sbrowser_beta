.class Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->d(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->e(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->a(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;->applyBatchOperationOnTabTable(Landroid/content/ContentValues;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->f(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)V

    goto/16 :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->e(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->a(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Landroid/content/ContentValues;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;->deleteTabTable(Landroid/content/ContentValues;)I

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->e(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->a(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;->updateTabTable(Landroid/content/ContentValues;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->f(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->b(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->c(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->startingFirstTime(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->f(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->b(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->updateBookmarkOnSignOut()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->b(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->removeUnSyncedSavedPages()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->e(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;->signedOutTabTable()I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->b(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->updateQuickAccessOnSignOut()V

    new-instance p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncTimer;->cancelSyncTimer()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->updateHistoryOnSignOut()V

    const/4 p0, 0x0

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->sendAccountChangedAction(ZI)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->b(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->hasAccountFolder(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->b(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->createParentFolders(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->b(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->updateBookmarkOnSignin()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->b(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->updateBookmarkTableOnSignIn()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->b(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->updateSavedPageOnSignin()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->b(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->updateQuickAccessOnSignIn()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/controller/HistorySyncHandler;->updateHistoryOnSignIn()V

    const/4 p0, 0x1

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/sites/provider/sync/ProviderUtil;->sendAccountChangedAction(ZI)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->e(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->a(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;->insertIntoTabTable(Landroid/content/ContentValues;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager$1;->this$0:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;->f(Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserProviderTaskManager;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SBrowserProviderTaskManager: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SBrowserProviderTaskManager"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->t(Landroid/database/sqlite/SQLiteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
