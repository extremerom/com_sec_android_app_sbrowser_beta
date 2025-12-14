.class public final Lcom/samsung/android/scloud/lib/setting/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6/a;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LV/c;

    invoke-direct {v0, p1}, LV/c;-><init>(I)V

    sget-object p1, La0/V;->f:La0/V;

    invoke-static {v0, p1}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p1}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LO3/c;LO3/b;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    iget-boolean p2, p2, LO3/b;->e:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, LO3/c;->g:I

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LS3/o;Lcom/bumptech/glide/manager/l;)V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/manager/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/manager/n;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/animation/Animator;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/animation/Animator;I)V
    .locals 1

    const/4 p2, 0x5

    iput p2, p0, Lcom/samsung/android/scloud/lib/setting/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Animator cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p1, :cond_1

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "animatorForCommit cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Animator cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->a:I

    const-string v0, "com.sec.android.app.sbrowser.beta"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/scloud/lib/setting/p;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/scloud/lib/setting/p;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :catchall_0
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "verifyDataOwner - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LibSyncScheduleManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;LK6/j;Lw6/k;Lf1/y;)V
    .locals 6

    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->a:I

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    new-instance p1, LA1/d;

    const/4 v5, 0x4

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LA1/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    return-void
.end method

.method public constructor <init>(Ljd/g;Ljd/d;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    iget-boolean p2, p2, Ljd/d;->e:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public static g(Lcom/samsung/android/scloud/lib/setting/l;Lcom/samsung/android/scloud/lib/setting/e;Lcom/samsung/android/scloud/lib/setting/b;Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handlePendingRequest - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", pending="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/samsung/android/scloud/lib/setting/b;->e:J

    iget-wide v3, p2, Lcom/samsung/android/scloud/lib/setting/b;->d:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LibSyncScheduleManager"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p3, Lcom/samsung/android/scloud/lib/setting/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sget-object p3, Lcom/samsung/android/scloud/lib/setting/d;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, LJ8/d;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "handleRequestByApp: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p1, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    if-eqz p0, :cond_1

    :try_start_0
    iget-object p0, p2, Lcom/samsung/android/scloud/lib/setting/b;->a:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    iget-object p3, p1, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast p3, Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p3, p2, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const-string p0, "handleRequestByApp finished"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static i(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0, v0}, LE5/t;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public static n(Lcom/samsung/android/scloud/lib/setting/l;Lcom/samsung/android/scloud/lib/setting/e;Lcom/samsung/android/scloud/lib/setting/b;)Z
    .locals 11

    iget-object v0, p1, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authority"

    const-string v3, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "library_version"

    const-wide/16 v3, 0x4eca

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "is_sync_setting_required"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/samsung/android/scloud/lib/setting/b;->b:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p2, Lcom/samsung/android/scloud/lib/setting/b;->c:Ljava/util/LinkedHashSet;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, p2, Lcom/samsung/android/scloud/lib/setting/b;->f:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/scloud/lib/setting/a;

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v9, La9/b;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, La9/b;-><init>(I)V

    invoke-virtual {v7, v9}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v6, "content_ids"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "extra_content_ids"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "local_sync_first_request_time"

    iget-wide v6, p2, Lcom/samsung/android/scloud/lib/setting/b;->d:J

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "local_sync_last_request_time"

    iget-wide v6, p2, Lcom/samsung/android/scloud/lib/setting/b;->e:J

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "pending_request_counts"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v2, Lcom/samsung/android/scloud/lib/setting/l;->Cloud:Lcom/samsung/android/scloud/lib/setting/l;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    if-ne p0, v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "request_local_sync"

    invoke-virtual {p0, v5, v2, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/samsung/android/scloud/lib/setting/l;->CloudCustom:Lcom/samsung/android/scloud/lib/setting/l;

    if-ne p0, v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "request_local_delay_sync"

    invoke-virtual {p0, v5, v2, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v4

    :goto_1
    if-nez p0, :cond_3

    const-string p0, "LibSyncScheduleManager"

    const-string v1, "processRequest: failed. need to reload sync performance policy"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    :cond_3
    iget-boolean p0, p1, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    if-eqz p0, :cond_4

    :try_start_0
    iget-object p0, p2, Lcom/samsung/android/scloud/lib/setting/b;->a:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    sget-object p0, Lcom/samsung/android/scloud/lib/setting/d;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iget p1, p2, Lcom/samsung/android/scloud/lib/setting/b;->g:I

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return v3
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v0, Ljd/g;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v1, Ljd/d;

    iget-object v1, v1, Ljd/d;->g:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-static {v1, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljd/g;->b(Lcom/samsung/android/scloud/lib/setting/e;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string p0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v0, LO3/c;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, LO3/c;->a(LO3/c;Lcom/samsung/android/scloud/lib/setting/e;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v0, Ljd/g;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v1, Ljd/d;

    iget-object v1, v1, Ljd/d;->g:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-static {v1, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, v2}, Ljd/g;->b(Lcom/samsung/android/scloud/lib/setting/e;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string p0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v0, Ljd/d;

    iget-object v1, v0, Ljd/d;->g:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-static {v1, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v1, Ljd/g;

    iget-boolean v2, v1, Ljd/g;->j:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Ljd/g;->b(Lcom/samsung/android/scloud/lib/setting/e;Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, v0, Ljd/d;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Ljava/io/File;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v0, LO3/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v1, LO3/b;

    iget-object v2, v1, LO3/b;->f:Lcom/samsung/android/scloud/lib/setting/e;

    if-ne v2, p0, :cond_1

    iget-boolean v2, v1, LO3/b;->e:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v2, [Z

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, v1, LO3/b;->d:[Ljava/io/File;

    aget-object v1, v1, v3

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast p0, LO3/c;

    iget-object p0, p0, LO3/c;->a:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV/c;

    iget p0, p0, LV/c;->a:I

    return p0
.end method

.method public f()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "DragHandlerController"

    return-object p0
.end method

.method public h(Lcom/samsung/android/scloud/lib/setting/f;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/samsung/android/scloud/lib/setting/f;->a:Lcom/samsung/android/scloud/lib/setting/l;

    sget-object v3, Lcom/samsung/android/scloud/lib/setting/l;->Cloud:Lcom/samsung/android/scloud/lib/setting/l;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/samsung/android/scloud/lib/setting/l;->CloudCustom:Lcom/samsung/android/scloud/lib/setting/l;

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestApp: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/scloud/lib/setting/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LibSyncScheduleManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, v0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v1, Lcom/samsung/android/scloud/lib/setting/f;->e:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    const-string v0, "requestApp finished"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    :goto_1
    iget-wide v8, v1, Lcom/samsung/android/scloud/lib/setting/f;->c:J

    iget-wide v2, v1, Lcom/samsung/android/scloud/lib/setting/f;->d:J

    const-string v5, "LibSyncScheduleManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "requestCloud():policyLevel =  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/samsung/android/scloud/lib/setting/f;->a:Lcom/samsung/android/scloud/lib/setting/l;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "LibSyncScheduleManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "requestCloud():cloudPolicyCidList = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/samsung/android/scloud/lib/setting/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", defaultPolicyCidList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/scloud/lib/setting/f;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", delayedPolicyCidList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/samsung/android/scloud/lib/setting/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v5, Lcom/samsung/android/scloud/lib/setting/e;

    monitor-enter v5

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v10, Lcom/samsung/android/scloud/lib/setting/d;->a:Lcom/samsung/android/scloud/lib/setting/b;

    iget-object v11, v10, Lcom/samsung/android/scloud/lib/setting/b;->f:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-wide v12, v10, Lcom/samsung/android/scloud/lib/setting/b;->e:J

    sub-long v12, v6, v12

    cmp-long v14, v12, v2

    if-ltz v14, :cond_4

    const-wide/16 v12, -0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    const-wide/16 v12, 0x0

    :cond_4
    :goto_2
    invoke-virtual {v10, v1}, Lcom/samsung/android/scloud/lib/setting/b;->a(Lcom/samsung/android/scloud/lib/setting/f;)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_7

    const-wide/16 v4, 0x0

    cmp-long v14, v12, v4

    if-ltz v14, :cond_5

    new-instance v8, Lcom/samsung/android/scloud/lib/setting/c;

    iget-object v4, v1, Lcom/samsung/android/scloud/lib/setting/f;->a:Lcom/samsung/android/scloud/lib/setting/l;

    sub-long v9, v2, v12

    move-object v1, v8

    move-object v2, v4

    move-object v3, p0

    move-wide v4, v6

    move-wide v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/scloud/lib/setting/c;-><init>(Lcom/samsung/android/scloud/lib/setting/l;Lcom/samsung/android/scloud/lib/setting/e;JJ)V

    sget-object v0, Lcom/samsung/android/scloud/lib/setting/d;->d:Ljava/util/Timer;

    invoke-virtual {v0, v8, v9, v10}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_3

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_6

    new-instance v10, Lcom/samsung/android/scloud/lib/setting/c;

    iget-object v2, v1, Lcom/samsung/android/scloud/lib/setting/f;->a:Lcom/samsung/android/scloud/lib/setting/l;

    move-object v1, v10

    move-object v3, p0

    move-wide v4, v6

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/scloud/lib/setting/c;-><init>(Lcom/samsung/android/scloud/lib/setting/l;Lcom/samsung/android/scloud/lib/setting/e;JJ)V

    sget-object v0, Lcom/samsung/android/scloud/lib/setting/d;->d:Ljava/util/Timer;

    invoke-virtual {v0, v10, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_3

    :cond_6
    iget-object v1, v1, Lcom/samsung/android/scloud/lib/setting/f;->a:Lcom/samsung/android/scloud/lib/setting/l;

    const-class v2, Lcom/samsung/android/scloud/lib/setting/e;

    monitor-enter v2

    :try_start_2
    invoke-virtual {v10, v6, v7}, Lcom/samsung/android/scloud/lib/setting/b;->b(J)Lcom/samsung/android/scloud/lib/setting/b;

    move-result-object v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v2, 0x0

    invoke-static {v1, p0, v3, v2}, Lcom/samsung/android/scloud/lib/setting/e;->g(Lcom/samsung/android/scloud/lib/setting/l;Lcom/samsung/android/scloud/lib/setting/e;Lcom/samsung/android/scloud/lib/setting/b;Z)V

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_7
    :goto_3
    return-void

    :goto_4
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public j(I)Lwd/x;
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v1, Ljd/g;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v2, Ljd/d;

    iget-object v2, v2, Ljd/d;->g:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-static {v2, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Lwd/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v2, Ljd/d;

    iget-boolean v2, v2, Ljd/d;->e:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v2, [Z

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    aput-boolean v0, v2, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v2, Ljd/d;

    iget-object v2, v2, Ljd/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "file"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    :try_start_3
    sget-object v3, Lwd/p;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v4, Lwd/b;

    new-instance v5, Lwd/B;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v4, v0, v3, v5}, Lwd/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    sget-object v3, Lwd/p;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v4, Lwd/b;

    new-instance p1, Lwd/B;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v4, v0, v3, p1}, Lwd/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    new-instance p1, Ljd/h;

    new-instance v0, LC1/j;

    const/16 v2, 0x11

    invoke-direct {v0, v2, v1, p0}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v4, v0}, Ljd/h;-><init>(Lwd/b;Lsb/k;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v1

    return-object p1

    :catch_1
    :try_start_6
    new-instance p0, Lwd/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v1

    return-object p0

    :cond_2
    :try_start_7
    const-string p0, "Check failed."

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    monitor-exit v1

    throw p0
.end method

.method public k(Landroid/view/MotionEvent;Lz6/a;)Z
    .locals 6

    const-string v0, "msg"

    const-string v1, "motionEvent"

    const-string v2, "this$0"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    invoke-static {v5, p1}, Lcom/samsung/android/scloud/lib/setting/e;->i(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    if-eqz v5, :cond_3

    iget v5, p2, Lz6/a;->a:I

    packed-switch v5, :pswitch_data_0

    iget-object p2, p2, Lz6/a;->b:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-static {p2, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast p2, Ldb/o;

    invoke-virtual {p2}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/GestureDetector;

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouchEventInternal value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lv6/a;->a:Z

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    move p2, v4

    goto :goto_1

    :cond_2
    move p2, v3

    goto :goto_1

    :pswitch_0
    iget-object p2, p2, Lz6/a;->b:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-static {p2, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast p2, Ldb/o;

    invoke-virtual {p2}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/GestureDetector;

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInterceptTouchEventInternal result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lv6/a;->a:Z

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    if-eqz p2, :cond_3

    move p2, v4

    goto :goto_2

    :cond_3
    move p2, v3

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_5

    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    :cond_5
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public l([I)Z
    .locals 10

    const-string v0, "tableIds"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p1, v2

    iget-object v5, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v5, [J

    aget-wide v6, v5, v4

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    aput-wide v8, v5, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public m([I)Z
    .locals 12

    const-string v0, "tableIds"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p1, v2

    iget-object v5, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v5, [J

    aget-wide v6, v5, v4

    const-wide/16 v8, 0x1

    sub-long v10, v6, v8

    aput-wide v10, v5, v4

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public o()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, LN/f;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v1, LN/f;

    invoke-direct {v0, v1}, LN/f;-><init>(LN/f;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    new-instance v0, LN/f;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v1, LN/f;

    invoke-direct {v0, v1}, LN/f;-><init>(LN/f;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    new-instance v0, LN/f;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v1, LN/f;

    invoke-direct {v0, v1}, LN/f;-><init>(LN/f;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/Object;Lv/d;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/lib/setting/e;->o()V

    iget v0, p2, Lv/d;->a:I

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v1, LN/f;

    if-nez v0, :cond_0

    iget-object v0, p2, Lv/d;->b:Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v0, LN/f;

    invoke-virtual {v0, p1}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AppSearchResult is a failure: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v0, LN/f;

    invoke-virtual {v0, p1, p2}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v0, LN/f;

    invoke-virtual {v0, p1}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast p0, LN/f;

    invoke-virtual {p0, p1, p2}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public q(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    new-instance v1, LQ7/o;

    invoke-direct {v1, p1, p2}, LQ7/o;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/scloud/lib/setting/e;->t(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public r(II)V
    .locals 2

    int-to-float v0, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/scloud/lib/setting/e;->e()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LV/c;

    invoke-direct {v0, p1}, LV/c;-><init>(I)V

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/scloud/lib/setting/e;->f()I

    move-result p1

    if-eq p2, p1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Index should be non-negative ("

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ7/o;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, LQ7/o;->a:Ljava/util/concurrent/Executor;

    iget-object v1, v1, LQ7/o;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/scloud/lib/setting/e;->t(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public t(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 2

    new-instance v0, Lcom/google/common/util/concurrent/v;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0, p1}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/samsung/android/scloud/lib/setting/e;->s()V

    return-void
.end method
