.class Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$InitializeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;->deleteBrowsingData(Landroid/content/Context;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$responseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5;->this$0:Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5;->val$responseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5;->lambda$onInitialized$0(Landroid/content/Context;)V

    return-void
.end method

.method private static lambda$onInitialized$0(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/b;->a:LS3/p;

    iget-object p0, p0, LS3/p;->f:LS3/o;

    invoke-virtual {p0}, LS3/o;->a()LU3/a;

    move-result-object p0

    invoke-interface {p0}, LU3/a;->clear()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must call this method on a background thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onInitialized()V
    .locals 9

    new-instance v0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5$1;-><init>(Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x4

    invoke-static/range {v0 .. v8}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->clearBrowsingData(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;ZZZZZZZI)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getInstance()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->deleteAllMediaHistoryData(Landroid/content/Context;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "sbrowser_history_delete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/capsule/BixbyActionHandler$5;->val$context:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/capsule/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/capsule/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
