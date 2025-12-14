.class public final Lcom/samsung/android/scloud/lib/setting/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/p;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/setting/p;->b:Ljava/lang/Object;

    const-string p1, "content://com.sec.android.app.sbrowser.beta"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/p;->c:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lcom/samsung/android/scloud/lib/setting/n;
    .locals 8

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/n;

    invoke-direct {v0}, Lcom/samsung/android/scloud/lib/setting/n;-><init>()V

    sget-object v1, Lcom/samsung/android/scloud/lib/setting/m;->Loaded:Lcom/samsung/android/scloud/lib/setting/m;

    iput-object v1, v0, Lcom/samsung/android/scloud/lib/setting/n;->d:Lcom/samsung/android/scloud/lib/setting/m;

    const-string v1, "content_ids"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "policy_status_list"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, La9/b;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, La9/b;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, La9/b;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, La9/b;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v3, :cond_2

    if-ne v3, v5, :cond_2

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Lcom/samsung/android/scloud/lib/setting/l;->Cloud:Lcom/samsung/android/scloud/lib/setting/l;

    iget v6, v5, Lcom/samsung/android/scloud/lib/setting/l;->status:I

    iget-object v7, v0, Lcom/samsung/android/scloud/lib/setting/n;->a:Ljava/util/HashMap;

    if-ne v3, v6, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/samsung/android/scloud/lib/setting/l;->CloudCustom:Lcom/samsung/android/scloud/lib/setting/l;

    iget v6, v5, Lcom/samsung/android/scloud/lib/setting/l;->status:I

    if-ne v3, v6, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/scloud/lib/setting/l;->App:Lcom/samsung/android/scloud/lib/setting/l;

    invoke-virtual {v7, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "local_request_initial_interval"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/scloud/lib/setting/n;->b:J

    const-string v1, "local_request_interval"

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/scloud/lib/setting/n;->c:J

    sget-object p0, Lcom/samsung/android/scloud/lib/setting/o;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sput-object v0, Lcom/samsung/android/scloud/lib/setting/o;->b:Lcom/samsung/android/scloud/lib/setting/n;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "SyncPerformancePolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPolicyUpdatedByCloud: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/util/List;)Lcom/samsung/android/scloud/lib/setting/f;
    .locals 13

    sget-object v0, Lcom/samsung/android/scloud/lib/setting/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/scloud/lib/setting/o;->b:Lcom/samsung/android/scloud/lib/setting/n;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/samsung/android/scloud/lib/setting/n;->a:Ljava/util/HashMap;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/samsung/android/scloud/lib/setting/l;->CloudCustom:Lcom/samsung/android/scloud/lib/setting/l;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/scloud/lib/setting/l;->Cloud:Lcom/samsung/android/scloud/lib/setting/l;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/samsung/android/scloud/lib/setting/l;->App:Lcom/samsung/android/scloud/lib/setting/l;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/samsung/android/scloud/lib/setting/l;->Cloud:Lcom/samsung/android/scloud/lib/setting/l;

    :goto_1
    move-object v3, p2

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lcom/samsung/android/scloud/lib/setting/l;->App:Lcom/samsung/android/scloud/lib/setting/l;

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_2
    iget-object p2, v1, Lcom/samsung/android/scloud/lib/setting/n;->d:Lcom/samsung/android/scloud/lib/setting/m;

    sget-object v0, Lcom/samsung/android/scloud/lib/setting/m;->None:Lcom/samsung/android/scloud/lib/setting/m;

    const/4 v2, 0x0

    if-ne p2, v0, :cond_5

    sget-object p2, Lcom/samsung/android/scloud/lib/setting/o;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    move v4, p2

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    new-instance p2, Lcom/samsung/android/scloud/lib/setting/f;

    iget-wide v5, v1, Lcom/samsung/android/scloud/lib/setting/n;->b:J

    iget-wide v7, v1, Lcom/samsung/android/scloud/lib/setting/n;->c:J

    if-eqz p1, :cond_6

    :goto_4
    move-object v9, p1

    goto :goto_5

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/p;->c:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/net/Uri;

    goto :goto_4

    :goto_5
    move-object v2, p2

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/scloud/lib/setting/f;-><init>(Lcom/samsung/android/scloud/lib/setting/l;ZJJLandroid/net/Uri;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public c(Landroid/net/Uri;Ljava/util/List;)V
    .locals 4

    const-string v0, "requestLocalSync: start - "

    :try_start_0
    sget-object v1, Lcom/samsung/android/scloud/lib/setting/p;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/p;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/scloud/lib/setting/e;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/scloud/lib/setting/p;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/scloud/lib/setting/p;->a(Landroid/net/Uri;Ljava/util/List;)Lcom/samsung/android/scloud/lib/setting/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request entry : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LibSyncScheduleManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v1, Lcom/samsung/android/scloud/lib/setting/f;->b:Z

    if-eqz v2, :cond_0

    new-instance v1, La9/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1, p2}, La9/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/Thread;

    new-instance p1, LGa/d;

    const/16 p2, 0xd

    invoke-direct {p1, p2, v0, v1}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/scloud/lib/setting/e;->h(Lcom/samsung/android/scloud/lib/setting/f;)V

    :goto_0
    sget-object p0, Lcom/samsung/android/scloud/lib/setting/p;->e:Ljava/lang/String;

    const-string p1, "requestLocalSync: finish"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
