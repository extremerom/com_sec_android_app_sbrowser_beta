.class public Lcom/sec/android/app/sbrowser/smp/firebase/FirebaseAppCustomInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static initialize(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lp7/f;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lp7/f;->k:LN/f;

    invoke-virtual {v2}, LN/f;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FirebaseAppCustomInitializer"

    const-string v1, "initialize firebase app"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lp7/f;->f(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
