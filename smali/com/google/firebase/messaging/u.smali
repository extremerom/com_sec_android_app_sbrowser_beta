.class public final synthetic Lcom/google/firebase/messaging/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lcom/google/firebase/messaging/u;->a:I

    iput-object p1, p0, Lcom/google/firebase/messaging/u;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/u;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/messaging/u;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/firebase/messaging/u;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/firebase/messaging/u;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/google/firebase/messaging/u;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/firebase/messaging/u;->c:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/google/firebase/messaging/u;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/messaging/u;->b:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/sdk/scs/ai/text/unit/UnitConverter;

    iget-object v3, p0, Lcom/google/firebase/messaging/u;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lcom/google/firebase/messaging/u;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v2, v0, v1, v3, p0}, Lcom/samsung/android/sdk/scs/ai/text/unit/UnitConverter;->b(Lcom/samsung/android/sdk/scs/ai/text/unit/UnitConverter;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/firebase/messaging/u;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/firebase/messaging/u;->c:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v0, p0, Lcom/google/firebase/messaging/u;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v0, p0, Lcom/google/firebase/messaging/u;->e:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, LA7/e;

    iget-object p0, p0, Lcom/google/firebase/messaging/u;->f:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, LQ9/a;

    const-class p0, Lcom/google/firebase/messaging/t;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/firebase/messaging/t;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/messaging/t;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "com.google.android.gms.appid"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/messaging/t;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0, v7}, LA7/c;->j(Landroid/content/SharedPreferences;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)LA7/c;

    move-result-object v0

    iput-object v0, v1, Lcom/google/firebase/messaging/t;->a:LA7/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/firebase/messaging/t;->b:Ljava/lang/ref/WeakReference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    move-object v4, v0

    :goto_1
    monitor-exit p0

    new-instance p0, Lcom/google/firebase/messaging/v;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/messaging/v;-><init>(Lcom/google/firebase/messaging/FirebaseMessaging;LA7/e;Lcom/google/firebase/messaging/t;LQ9/a;Landroid/content/Context;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    return-object p0

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
