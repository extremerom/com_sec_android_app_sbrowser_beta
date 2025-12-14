.class public final LN3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LN3/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    iput p1, p0, LN3/g;->a:I

    iput-object p2, p0, LN3/g;->d:Ljava/lang/Object;

    iput-object p3, p0, LN3/g;->b:Ljava/lang/Object;

    iput-object p4, p0, LN3/g;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg3/d;Lg3/i;LZ3/x;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, LN3/g;->a:I

    const-string v0, "processor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN3/g;->b:Ljava/lang/Object;

    iput-object p2, p0, LN3/g;->c:Ljava/lang/Object;

    iput-object p3, p0, LN3/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, LN3/g;->a:I

    iput-object p1, p0, LN3/g;->b:Ljava/lang/Object;

    iput-object p3, p0, LN3/g;->c:Ljava/lang/Object;

    iput-object p4, p0, LN3/g;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, LN3/g;->a:I

    packed-switch v5, :pswitch_data_0

    iget-object v0, p0, LN3/g;->d:Ljava/lang/Object;

    check-cast v0, Lq3/j;

    :try_start_0
    iget-object v1, p0, LN3/g;->b:Ljava/lang/Object;

    check-cast v1, Lq3/j;

    invoke-virtual {v1}, Lq3/h;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast p0, LI3/d;

    invoke-virtual {p0, v1}, LI3/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lq3/j;->j(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-virtual {v0, p0}, Lq3/j;->k(Ljava/lang/Throwable;)Z

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast v0, Lg3/i;

    iget-object v1, p0, LN3/g;->d:Ljava/lang/Object;

    check-cast v1, LZ3/x;

    iget-object p0, p0, LN3/g;->b:Ljava/lang/Object;

    check-cast p0, Lg3/d;

    invoke-virtual {p0, v0, v1}, Lg3/d;->h(Lg3/i;LZ3/x;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, LN3/g;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    iget-object v1, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, LN3/g;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    const-string v2, "Updating proxies: (BatteryNotLowProxy ("

    :try_start_1
    const-string v4, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    invoke-virtual {p0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {p0, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "KEY_NETWORK_STATE_PROXY_ENABLED"

    invoke-virtual {p0, v7, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), BatteryChargingProxy ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), StorageNotLowProxy ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), NetworkStateProxy ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "), "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v3

    sget-object v7, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:Ljava/lang/String;

    invoke-virtual {v3, v7, v2}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryNotLowProxy;

    invoke-static {v1, v2, v4}, Lp3/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$BatteryChargingProxy;

    invoke-static {v1, v2, v5}, Lp3/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$StorageNotLowProxy;

    invoke-static {v1, v2, v6}, Lp3/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    const-class v2, Landroidx/work/impl/background/systemalarm/ConstraintProxy$NetworkStateProxy;

    invoke-static {v1, v2, p0}, Lp3/l;->a(Landroid/content/Context;Ljava/lang/Class;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw p0

    :pswitch_2
    iget-object v0, p0, LN3/g;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/ar/core/InstallActivity;

    iget-object v1, p0, LN3/g;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/ar/core/G;

    :try_start_2
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v1, v1, Lcom/google/ar/core/G;->c:Lcom/google/ar/core/dependencies/h;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "package.name"

    const-string v7, "com.google.ar.core"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Lcom/google/ar/core/d;

    invoke-direct {v7, p0, v4}, Lcom/google/ar/core/d;-><init>(LN3/g;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v1, v3, v5, v6, v7}, Lcom/google/ar/core/dependencies/h;->d(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/ar/core/dependencies/j;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lc5/A;

    invoke-direct {v3, v2, p0, v4}, Lc5/A;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "ARCore-InstallService"

    const-string v3, "requestInstall threw, launching fullscreen."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast p0, LS3/F;

    invoke-static {v0, p0}, Lcom/google/ar/core/G;->e(Lcom/google/ar/core/InstallActivity;LS3/F;)V

    :goto_2
    return-void

    :pswitch_3
    iget-object v0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, LN3/g;->d:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    iget-object v2, v1, Lc6/j;->d:Landroid/widget/OverScroller;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lc6/j;->d:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    iget-object v3, p0, LN3/g;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v1, v3, v0, v2}, Lc6/j;->x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    sget-object v1, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_1
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object p0, v1, Lc6/j;->d:Landroid/widget/OverScroller;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_2
    :goto_3
    return-void

    :pswitch_4
    iget-object v3, p0, LN3/g;->d:Ljava/lang/Object;

    check-cast v3, Lc5/U;

    iget v5, v3, Lc5/U;->b:I

    iget-object v6, p0, LN3/g;->b:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    if-lez v5, :cond_4

    iget-object v5, v3, Lc5/U;->c:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    iget-object p0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    :cond_3
    invoke-virtual {v6, v4}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->d(Landroid/os/Bundle;)V

    :cond_4
    iget p0, v3, Lc5/U;->b:I

    if-lt p0, v1, :cond_5

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->g()V

    :cond_5
    iget p0, v3, Lc5/U;->b:I

    if-lt p0, v0, :cond_6

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->e()V

    :cond_6
    iget p0, v3, Lc5/U;->b:I

    if-lt p0, v2, :cond_7

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->h()V

    :cond_7
    return-void

    :pswitch_5
    iget-object v3, p0, LN3/g;->d:Ljava/lang/Object;

    check-cast v3, Lc5/T;

    iget v5, v3, Lc5/T;->b:I

    iget-object v6, p0, LN3/g;->b:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    if-lez v5, :cond_9

    iget-object v5, v3, Lc5/T;->c:Landroid/os/Bundle;

    if-eqz v5, :cond_8

    iget-object p0, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    :cond_8
    invoke-virtual {v6, v4}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->d(Landroid/os/Bundle;)V

    :cond_9
    iget p0, v3, Lc5/T;->b:I

    if-lt p0, v1, :cond_a

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->g()V

    :cond_a
    iget p0, v3, Lc5/T;->b:I

    if-lt p0, v0, :cond_b

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->e()V

    :cond_b
    iget p0, v3, Lc5/T;->b:I

    if-lt p0, v2, :cond_c

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->h()V

    :cond_c
    return-void

    :pswitch_6
    :try_start_3
    iget-object v0, p0, LN3/g;->b:Ljava/lang/Object;

    check-cast v0, Lc1/d;

    invoke-virtual {v0}, Lc1/d;->call()Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    new-instance v0, Lcom/google/common/util/concurrent/v;

    iget-object v1, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast v1, Lc1/e;

    const/16 v2, 0x1d

    invoke-direct {v0, v2, v1, v4}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, LN3/g;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_7
    iget-object v0, p0, LN3/g;->b:Ljava/lang/Object;

    check-cast v0, LY5/k;

    iget-object v1, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/wearable/internal/zzfx;

    iget-object v2, v1, Lcom/google/android/gms/wearable/internal/zzfx;->d:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/wearable/internal/zzfx;->c:[B

    iget-object v0, v0, LY5/k;->p:LY5/i;

    iget-object v1, v1, Lcom/google/android/gms/wearable/internal/zzfx;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v5}, LY5/i;->onRequest(Ljava/lang/String;Ljava/lang/String;[B)LR5/h;

    move-result-object v0

    iget-object p0, p0, LN3/g;->d:Ljava/lang/Object;

    check-cast p0, LZ5/o;

    if-nez v0, :cond_d

    invoke-static {p0, v3, v4}, LY5/k;->A0(LZ5/o;Z[B)V

    goto :goto_4

    :cond_d
    new-instance v1, LG5/J2;

    invoke-direct {v1, p0}, LG5/J2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LR5/h;->a(LR5/c;)LR5/p;

    :goto_4
    return-void

    :pswitch_8
    iget-object v0, p0, LN3/g;->b:Ljava/lang/Object;

    check-cast v0, LN3/p;

    invoke-virtual {v0}, LN3/p;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string p0, "canceled-at-delivery"

    invoke-virtual {v0, p0}, LN3/p;->finish(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    iget-object v1, p0, LN3/g;->c:Ljava/lang/Object;

    check-cast v1, LN3/t;

    iget-object v2, v1, LN3/t;->c:LN3/x;

    if-nez v2, :cond_f

    iget-object v2, v1, LN3/t;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, LN3/p;->deliverResponse(Ljava/lang/Object;)V

    goto :goto_5

    :cond_f
    invoke-virtual {v0, v2}, LN3/p;->deliverError(LN3/x;)V

    :goto_5
    iget-boolean v1, v1, LN3/t;->d:Z

    if-eqz v1, :cond_10

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, LN3/p;->addMarker(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    const-string v1, "done"

    invoke-virtual {v0, v1}, LN3/p;->finish(Ljava/lang/String;)V

    :goto_6
    iget-object p0, p0, LN3/g;->d:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/util/concurrent/v;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/v;->run()V

    :cond_11
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
