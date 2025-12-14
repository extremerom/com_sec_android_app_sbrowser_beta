.class public final LJ8/c;
.super LJ8/h;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final b:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

.field public c:Ljava/util/ArrayList;

.field public final d:LQ9/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V
    .locals 6

    invoke-direct {p0}, LJ8/h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LJ8/c;->c:Ljava/util/ArrayList;

    iput-object p2, p0, LJ8/c;->b:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    new-instance v0, LQ9/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "NONE"

    iput-object v1, v0, LQ9/a;->a:Ljava/lang/Object;

    iput-object v1, v0, LQ9/a;->b:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, v0, LQ9/a;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    filled-new-array {v1}, [Landroid/os/Messenger;

    move-result-object v1

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {p1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v4, LJ8/d;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v1, p1}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    aget-object p1, v1, v2

    iput-object p1, v0, LQ9/a;->e:Ljava/lang/Object;

    iput-object v0, p0, LJ8/c;->d:LQ9/a;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, LJ8/b;-><init>(LJ8/h;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "backupPrepare"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, LJ8/b;-><init>(LJ8/h;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "getKeyAndDate"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, LJ8/b;-><init>(LJ8/h;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "backup"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p2, v1}, LJ8/b;-><init>(LJ8/h;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "backupComplete"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/b;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p2, v1}, LJ8/b;-><init>(LJ8/h;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "restorePrepare"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/b;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p2, v1}, LJ8/b;-><init>(LJ8/h;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "restore"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/b;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p2, v1}, LJ8/b;-><init>(LJ8/h;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "downloadComplete"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LJ8/a;-><init>(LJ8/h;I)V

    const-string v1, "restoreFile"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/b;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p2, v1}, LJ8/b;-><init>(LJ8/h;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string p2, "restoreComplete"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance p2, LJ8/a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LJ8/a;-><init>(LJ8/h;I)V

    const-string p0, "requestCancel"

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(LJ8/c;Ljava/util/ArrayList;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI8/c;

    iget-object v1, v0, LI8/c;->b:LI8/a;

    iget-object v1, v1, LI8/a;->b:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v1, LI8/c;

    new-instance v3, LI8/a;

    iget-object v4, v0, LI8/c;->b:LI8/a;

    iget-object v4, v4, LI8/a;->a:Lorg/json/JSONObject;

    invoke-direct {v3, v4, v2}, LI8/a;-><init>(Lorg/json/JSONObject;Ljava/util/ArrayList;)V

    iget-object v0, v0, LI8/c;->a:LI8/b;

    invoke-direct {v1, v0, v3}, LI8/c;-><init>(LI8/b;LI8/a;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public final getClient(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LJ8/c;->b:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    return-object p0
.end method
