.class public final LJ8/k;
.super LJ8/h;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final b:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

.field public final c:LA7/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;)V
    .locals 6

    invoke-direct {p0}, LJ8/h;-><init>()V

    iput-object p2, p0, LJ8/k;->b:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    new-instance v0, LA7/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "NONE"

    iput-object v1, v0, LA7/c;->a:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, v0, LA7/c;->e:Ljava/lang/Object;

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

    const/4 v5, 0x1

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

    iput-object p1, v0, LA7/c;->d:Ljava/lang/Object;

    iput-object v0, p0, LJ8/k;->c:LA7/c;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/j;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, LJ8/j;-><init>(Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "prepare"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/j;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, LJ8/j;-><init>(Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "getLocalChanges"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/j;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, LJ8/j;-><init>(Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "upload"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/b;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p2, v1}, LJ8/b;-><init>(LJ8/h;Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "download"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/j;

    const/4 v1, 0x3

    invoke-direct {v0, p2, v1}, LJ8/j;-><init>(Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "delete"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/j;

    const/4 v1, 0x4

    invoke-direct {v0, p2, v1}, LJ8/j;-><init>(Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "uploadComplete"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/j;

    const/4 v1, 0x5

    invoke-direct {v0, p2, v1}, LJ8/j;-><init>(Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string v1, "downloadComplete"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance v0, LJ8/j;

    const/4 v1, 0x6

    invoke-direct {v0, p2, v1}, LJ8/j;-><init>(Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;I)V

    const-string p2, "finish"

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LJ8/h;->a:Ljava/util/HashMap;

    new-instance p2, LJ8/a;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, LJ8/a;-><init>(LJ8/h;I)V

    const-string p0, "getFileDescriptor"

    invoke-virtual {p1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getClient(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LJ8/k;->b:Lcom/samsung/android/scloud/lib/storage/api/IRecordDataClient;

    return-object p0
.end method
