.class public final synthetic LA7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/a;
.implements LR5/g;


# instance fields
.field public final a:Lcom/google/firebase/iid/FirebaseInstanceId;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA7/b;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, LA7/b;->b:Ljava/lang/String;

    iput-object p3, p0, LA7/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA7/b;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, LA7/b;->b:Ljava/lang/String;

    iput-object p3, p0, LA7/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)LR5/p;
    .locals 6

    iget-object v0, p0, LA7/b;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, LA7/b;->b:Ljava/lang/String;

    iget-object p0, p0, LA7/b;->c:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/iid/FirebaseInstanceId;->j:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v3, v0, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lp7/f;

    invoke-virtual {v3}, Lp7/f;->a()V

    const-string v4, "[DEFAULT]"

    iget-object v5, v3, Lp7/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lp7/f;->c()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v0, v0, Lcom/google/firebase/iid/FirebaseInstanceId;->c:LA7/e;

    invoke-virtual {v0}, LA7/e;->b()Ljava/lang/String;

    move-result-object v0

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5, p1, v0}, LA7/i;->a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v2

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v4, v2, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v4, Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {v3, v1, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :goto_1
    new-instance p0, LA7/d;

    invoke-direct {p0, p1}, LA7/d;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/G;->f(Ljava/lang/Object;)LR5/p;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public m(LR5/h;)Ljava/lang/Object;
    .locals 8

    iget-object v1, p0, LA7/b;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object p1, p0, LA7/b;->b:Ljava/lang/String;

    iget-object p0, p0, LA7/b;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lcom/google/firebase/iid/FirebaseInstanceId;->j:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v2, v1, Lcom/google/firebase/iid/FirebaseInstanceId;->b:Lp7/f;

    invoke-virtual {v2}, Lp7/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/motionphoto/utils/ex/e;->o(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/firebase/iid/FirebaseInstanceId;->f:LD7/f;

    check-cast v0, LD7/e;

    invoke-virtual {v0}, LD7/e;->c()LR5/p;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(LR5/p;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, p1, p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->g(Ljava/lang/String;Ljava/lang/String;)LA7/i;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/firebase/iid/FirebaseInstanceId;->j(LA7/i;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, LA7/d;

    iget-object p1, v5, LA7/i;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, LA7/d;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/G;->f(Ljava/lang/Object;)LR5/p;

    move-result-object p0

    goto/16 :goto_1

    :cond_0
    iget-object v6, v1, Lcom/google/firebase/iid/FirebaseInstanceId;->e:Lcom/google/android/gms/internal/auth/j;

    new-instance v7, LA7/c;

    move-object v0, v7

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, LA7/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter v6

    :try_start_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v6, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast p0, LN/f;

    invoke-virtual {p0, v0}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LR5/h;

    const/4 p1, 0x3

    if-eqz p0, :cond_2

    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1d

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Joining ongoing request for: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FirebaseInstanceId"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v6

    goto :goto_1

    :cond_2
    :try_start_2
    const-string p0, "FirebaseInstanceId"

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x18

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Making new request for: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "FirebaseInstanceId"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v7}, LA7/c;->l()LR5/p;

    move-result-object p0

    iget-object p1, v6, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, LL8/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v6, v0}, LL8/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, LR5/p;->m(Ljava/util/concurrent/Executor;LR5/a;)LR5/p;

    move-result-object p0

    iget-object p1, v6, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast p1, LN/f;

    invoke-virtual {p1, v0, p0}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    :goto_1
    return-object p0

    :goto_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
