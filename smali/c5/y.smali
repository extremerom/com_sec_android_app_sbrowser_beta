.class public final Lc5/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/k;
.implements Lb5/l;


# instance fields
.field public final a:Ljava/util/LinkedList;

.field public final b:Lb5/e;

.field public final p:Lc5/b;

.field public final q:Lcom/samsung/android/motionphoto/utils/ex/e;

.field public final r:Ljava/util/HashSet;

.field public final s:Ljava/util/HashMap;

.field public final t:I

.field public final u:Lc5/K;

.field public v:Z

.field public final w:Ljava/util/ArrayList;

.field public x:Lcom/google/android/gms/common/ConnectionResult;

.field public y:I

.field public final synthetic z:Lc5/h;


# direct methods
.method public constructor <init>(Lc5/h;Lb5/j;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/y;->z:Lc5/h;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc5/y;->a:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc5/y;->r:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc5/y;->s:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc5/y;->w:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lc5/y;->x:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput v1, p0, Lc5/y;->y:I

    iget-object v1, p1, Lc5/h;->A:LC5/a;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lb5/j;->zab(Landroid/os/Looper;Lc5/y;)Lb5/e;

    move-result-object v1

    iput-object v1, p0, Lc5/y;->b:Lb5/e;

    invoke-virtual {p2}, Lb5/j;->getApiKey()Lc5/b;

    move-result-object v2

    iput-object v2, p0, Lc5/y;->p:Lc5/b;

    new-instance v2, Lcom/samsung/android/motionphoto/utils/ex/e;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(I)V

    iput-object v2, p0, Lc5/y;->q:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p2}, Lb5/j;->zaa()I

    move-result v2

    iput v2, p0, Lc5/y;->t:I

    invoke-interface {v1}, Lb5/e;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lc5/h;->A:LC5/a;

    iget-object p1, p1, Lc5/h;->r:Landroid/content/Context;

    invoke-virtual {p2, p1, v0}, Lb5/j;->zac(Landroid/content/Context;Landroid/os/Handler;)Lc5/K;

    move-result-object p1

    iput-object p1, p0, Lc5/y;->u:Lc5/K;

    return-void

    :cond_0
    iput-object v0, p0, Lc5/y;->u:Lc5/K;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lc5/y;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lc5/y;->b:Lb5/e;

    invoke-interface {p0}, Lb5/e;->getEndpointPackageName()Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v0, v0, Lc5/h;->A:LC5/a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc5/y;->c(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V
    .locals 3

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v0, v0, Lc5/h;->A:LC5/a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    if-eq v2, v0, :cond_6

    iget-object p0, p0, Lc5/y;->a:Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/P;

    if-eqz p3, :cond_3

    iget v1, v0, Lc5/P;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Lc5/P;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p2}, Lc5/P;->b(Ljava/lang/RuntimeException;)V

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Status XOR exception should be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc5/y;->a:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc5/P;

    iget-object v5, p0, Lc5/y;->b:Lb5/e;

    invoke-interface {v5}, Lb5/e;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lc5/y;->h(Lc5/P;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Lc5/y;->b:Lb5/e;

    iget-object v1, p0, Lc5/y;->z:Lc5/h;

    iget-object v2, v1, Lc5/h;->A:LC5/a;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lc5/y;->x:Lcom/google/android/gms/common/ConnectionResult;

    sget-object v2, Lcom/google/android/gms/common/ConnectionResult;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v2}, Lc5/y;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-boolean v2, p0, Lc5/y;->v:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lc5/h;->A:LC5/a;

    const/16 v3, 0xb

    iget-object v4, p0, Lc5/y;->p:Lc5/b;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, v1, Lc5/h;->A:LC5/a;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc5/y;->v:Z

    :cond_0
    iget-object v1, p0, Lc5/y;->s:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc5/I;

    iget-object v2, v2, Lc5/I;->a:LG5/g4;

    :try_start_0
    new-instance v3, LR5/i;

    invoke-direct {v3}, LR5/i;-><init>()V

    iget-object v2, v2, LG5/g4;->d:Ljava/lang/Object;

    check-cast v2, LZ4/i;

    iget-object v2, v2, LZ4/i;->b:Ljava/lang/Object;

    check-cast v2, Lo3/l;

    invoke-virtual {v2, v0, v3}, Lo3/l;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lc5/y;->onConnectionSuspended(I)V

    const-string v1, "DeadObjectException thrown while calling register listener method."

    invoke-interface {v0, v1}, Lb5/e;->disconnect(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lc5/y;->d()V

    invoke-virtual {p0}, Lc5/y;->g()V

    return-void
.end method

.method public final f(I)V
    .locals 6

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v1, v0, Lc5/h;->A:LC5/a;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lc5/y;->x:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lc5/y;->v:Z

    iget-object v2, p0, Lc5/y;->b:Lb5/e;

    invoke-interface {v2}, Lb5/e;->getLastDisconnectMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc5/y;->q:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The connection to Google Play services was lost"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v1, :cond_0

    const-string p1, " due to service disconnection."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    if-ne p1, v5, :cond_1

    const-string p1, " due to dead object exception."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const-string p1, " Last reason for disconnect: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x14

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v2, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v1, p1}, Lcom/samsung/android/motionphoto/utils/ex/e;->z(ZLcom/google/android/gms/common/api/Status;)V

    iget-object p1, v0, Lc5/h;->A:LC5/a;

    const/16 v1, 0x9

    iget-object v2, p0, Lc5/y;->p:Lc5/b;

    invoke-static {p1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, v0, Lc5/h;->A:LC5/a;

    const/16 v1, 0xb

    invoke-static {p1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, v0, Lc5/h;->t:Lo3/e;

    iget-object p1, p1, Lo3/e;->a:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object p0, p0, Lc5/y;->s:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc5/I;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v1, v0, Lc5/h;->A:LC5/a;

    const/16 v2, 0xc

    iget-object p0, p0, Lc5/y;->p:Lc5/b;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, v0, Lc5/h;->A:LC5/a;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    iget-wide v2, v0, Lc5/h;->a:J

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final h(Lc5/P;)Z
    .locals 14

    instance-of v0, p1, Lc5/E;

    const-string v1, "DeadObjectException thrown while running ApiCallRunner."

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lc5/y;->b:Lb5/e;

    invoke-interface {v0}, Lb5/e;->requiresSignIn()Z

    move-result v3

    iget-object v4, p0, Lc5/y;->q:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1, v4, v3}, Lc5/P;->d(Lcom/samsung/android/motionphoto/utils/ex/e;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lc5/P;->c(Lc5/y;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, v2}, Lc5/y;->onConnectionSuspended(I)V

    invoke-interface {v0, v1}, Lb5/e;->disconnect(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    move-object v0, p1

    check-cast v0, Lc5/E;

    invoke-virtual {v0, p0}, Lc5/E;->g(Lc5/y;)[Lcom/google/android/gms/common/Feature;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    array-length v6, v3

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    iget-object v6, p0, Lc5/y;->b:Lb5/e;

    invoke-interface {v6}, Lb5/e;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v6

    if-nez v6, :cond_2

    new-array v6, v4, [Lcom/google/android/gms/common/Feature;

    :cond_2
    array-length v7, v6

    new-instance v8, LN/f;

    invoke-direct {v8, v7}, LN/A;-><init>(I)V

    move v9, v4

    :goto_1
    if-ge v9, v7, :cond_3

    aget-object v10, v6, v9

    iget-object v11, v10, Lcom/google/android/gms/common/Feature;->a:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/common/Feature;->b()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v11, v10}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    array-length v6, v3

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_5

    aget-object v9, v3, v7

    iget-object v10, v9, Lcom/google/android/gms/common/Feature;->a:Ljava/lang/String;

    invoke-virtual {v8, v10}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9}, Lcom/google/android/gms/common/Feature;->b()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    move-object v9, v5

    :cond_6
    :goto_4
    if-nez v9, :cond_7

    iget-object v0, p0, Lc5/y;->b:Lb5/e;

    invoke-interface {v0}, Lb5/e;->requiresSignIn()Z

    move-result v3

    iget-object v4, p0, Lc5/y;->q:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1, v4, v3}, Lc5/P;->d(Lcom/samsung/android/motionphoto/utils/ex/e;Z)V

    :try_start_1
    invoke-virtual {p1, p0}, Lc5/P;->c(Lc5/y;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    invoke-virtual {p0, v2}, Lc5/y;->onConnectionSuspended(I)V

    invoke-interface {v0, v1}, Lb5/e;->disconnect(Ljava/lang/String;)V

    :goto_5
    return v2

    :cond_7
    iget-object p1, p0, Lc5/y;->b:Lb5/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v9, Lcom/google/android/gms/common/Feature;->a:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/common/Feature;->b()J

    move-result-wide v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not execute call because it requires feature ("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GoogleApiManager"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lc5/y;->z:Lc5/h;

    iget-boolean p1, p1, Lc5/h;->B:Z

    if-eqz p1, :cond_a

    invoke-virtual {v0, p0}, Lc5/E;->f(Lc5/y;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Lc5/z;

    iget-object v0, p0, Lc5/y;->p:Lc5/b;

    invoke-direct {p1, v0, v9}, Lc5/z;-><init>(Lc5/b;Lcom/google/android/gms/common/Feature;)V

    iget-object v0, p0, Lc5/y;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v1, 0x1388

    const/16 v3, 0xf

    if-ltz v0, :cond_8

    iget-object p1, p0, Lc5/y;->w:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc5/z;

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v0, v0, Lc5/h;->A:LC5/a;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v0, v0, Lc5/h;->A:LC5/a;

    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lc5/y;->z:Lc5/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lc5/y;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v0, v0, Lc5/h;->A:LC5/a;

    invoke-static {v0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v6, p0, Lc5/y;->z:Lc5/h;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v0, v0, Lc5/h;->A:LC5/a;

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lc5/y;->z:Lc5/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lc5/y;->i(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget p0, p0, Lc5/y;->t:I

    invoke-virtual {v0, p1, p0}, Lc5/h;->c(Lcom/google/android/gms/common/ConnectionResult;I)Z

    :cond_9
    :goto_6
    return v4

    :cond_a
    new-instance p0, Lb5/r;

    invoke-direct {p0, v9}, Lb5/r;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v0, p0}, Lc5/P;->b(Ljava/lang/RuntimeException;)V

    return v2
.end method

.method public final i(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 4

    sget-object v0, Lc5/h;->E:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc5/y;->z:Lc5/h;

    iget-object v2, v1, Lc5/h;->x:Lc5/w;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lc5/h;->y:LN/g;

    iget-object v2, p0, Lc5/y;->p:Lc5/b;

    invoke-virtual {v1, v2}, LN/g;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc5/y;->z:Lc5/h;

    iget-object v1, v1, Lc5/h;->x:Lc5/w;

    iget p0, p0, Lc5/y;->t:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lc5/Q;

    invoke-direct {v2, p1, p0}, Lc5/Q;-><init>(Lcom/google/android/gms/common/ConnectionResult;I)V

    iget-object p0, v1, Lc5/w;->c:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, v1, Lc5/w;->d:LC5/a;

    new-instance p1, Lc5/A;

    const/4 v3, 0x3

    invoke-direct {p1, v3, v1, v2}, Lc5/A;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    :goto_0
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j()V
    .locals 12

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v1, v0, Lc5/h;->A:LC5/a;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    iget-object v1, p0, Lc5/y;->b:Lb5/e;

    invoke-interface {v1}, Lb5/e;->isConnected()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v1}, Lb5/e;->isConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 v2, 0xa

    :try_start_0
    iget-object v3, v0, Lc5/h;->t:Lo3/e;

    iget-object v4, v0, Lc5/h;->r:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-interface {v1}, Lb5/e;->requiresGooglePlayServices()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Lb5/e;->getMinApkVersion()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v7, v3, Lo3/e;->a:Ljava/lang/Object;

    check-cast v7, Landroid/util/SparseIntArray;

    const/4 v8, -0x1

    :try_start_1
    invoke-virtual {v7, v5, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-eq v9, v8, :cond_2

    move v6, v9

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_0
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    invoke-virtual {v7, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    if-le v10, v5, :cond_3

    invoke-virtual {v7, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    move v6, v8

    :goto_1
    if-ne v6, v8, :cond_5

    iget-object v3, v3, Lo3/e;->b:Ljava/lang/Object;

    check-cast v3, La5/b;

    invoke-virtual {v3, v5, v4}, La5/c;->b(ILandroid/content/Context;)I

    move-result v6

    :cond_5
    invoke-virtual {v7, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    if-eqz v6, :cond_6

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v3, 0x0

    invoke-direct {v0, v6, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GoogleApiManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v3}, Lc5/y;->l(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_6
    new-instance v3, Lc5/B;

    iget-object v4, p0, Lc5/y;->p:Lc5/b;

    invoke-direct {v3, v0, v1, v4}, Lc5/B;-><init>(Lc5/h;Lb5/e;Lc5/b;)V

    invoke-interface {v1}, Lb5/e;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lc5/y;->u:Lc5/K;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iget-object v4, v0, Lc5/K;->t:LP5/a;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lb5/e;->disconnect()V

    :cond_7
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v7, v0, Lc5/K;->s:Lcom/google/android/gms/common/internal/h;

    iput-object v4, v7, Lcom/google/android/gms/common/internal/h;->f:Ljava/lang/Integer;

    iget-object v11, v0, Lc5/K;->p:Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v5, v0, Lc5/K;->b:Landroid/content/Context;

    iget-object v8, v7, Lcom/google/android/gms/common/internal/h;->e:LO5/a;

    iget-object v4, v0, Lc5/K;->q:LA5/v;

    move-object v9, v0

    move-object v10, v0

    invoke-virtual/range {v4 .. v10}, LA5/v;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Ljava/lang/Object;Lb5/k;Lb5/l;)Lb5/e;

    move-result-object v4

    check-cast v4, LP5/a;

    iput-object v4, v0, Lc5/K;->t:LP5/a;

    iput-object v3, v0, Lc5/K;->u:Lc5/B;

    iget-object v4, v0, Lc5/K;->r:Ljava/util/Set;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    iget-object v0, v0, Lc5/K;->t:LP5/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/android/gms/common/internal/p;

    invoke-direct {v4, v0}, Lcom/google/android/gms/common/internal/p;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/internal/f;->connect(Lcom/google/android/gms/common/internal/d;)V

    goto :goto_4

    :cond_9
    :goto_3
    new-instance v4, LH6/p;

    const/16 v5, 0xb

    invoke-direct {v4, v5, v0}, LH6/p;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    :goto_4
    :try_start_2
    invoke-interface {v1, v3}, Lb5/e;->connect(Lcom/google/android/gms/common/internal/d;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lc5/y;->l(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    return-void

    :goto_5
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lc5/y;->l(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public final k(Lc5/P;)V
    .locals 2

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v0, v0, Lc5/h;->A:LC5/a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    iget-object v0, p0, Lc5/y;->b:Lb5/e;

    invoke-interface {v0}, Lb5/e;->isConnected()Z

    move-result v0

    iget-object v1, p0, Lc5/y;->a:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lc5/y;->h(Lc5/P;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc5/y;->g()V

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc5/y;->x:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_2

    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc5/y;->l(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lc5/y;->j()V

    return-void
.end method

.method public final l(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V
    .locals 6

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v0, v0, Lc5/h;->A:LC5/a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    iget-object v0, p0, Lc5/y;->u:Lc5/K;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc5/K;->t:LP5/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb5/e;->disconnect()V

    :cond_0
    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v0, v0, Lc5/h;->A:LC5/a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc5/y;->x:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lc5/y;->z:Lc5/h;

    iget-object v1, v1, Lc5/h;->t:Lo3/e;

    iget-object v1, v1, Lo3/e;->a:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0, p1}, Lc5/y;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v1, p0, Lc5/y;->b:Lb5/e;

    instance-of v1, v1, Lg5/c;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lc5/y;->z:Lc5/h;

    iput-boolean v2, v1, Lc5/h;->b:Z

    iget-object v1, v1, Lc5/h;->A:LC5/a;

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget v1, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    sget-object p1, Lc5/h;->D:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lc5/y;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v1, p0, Lc5/y;->a:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object p1, p0, Lc5/y;->x:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lc5/y;->z:Lc5/h;

    iget-object p1, p1, Lc5/h;->A:LC5/a;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lc5/y;->c(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Lc5/y;->z:Lc5/h;

    iget-boolean p2, p2, Lc5/h;->B:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lc5/y;->p:Lc5/b;

    invoke-static {p2, p1}, Lc5/h;->d(Lc5/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-virtual {p0, p2, v0, v2}, Lc5/y;->c(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    iget-object p2, p0, Lc5/y;->a:Ljava/util/LinkedList;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1}, Lc5/y;->i(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    iget-object p2, p0, Lc5/y;->z:Lc5/h;

    iget v0, p0, Lc5/y;->t:I

    invoke-virtual {p2, p1, v0}, Lc5/h;->c(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result p2

    if-nez p2, :cond_9

    iget p2, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_7

    iput-boolean v2, p0, Lc5/y;->v:Z

    :cond_7
    iget-boolean p2, p0, Lc5/y;->v:Z

    if-eqz p2, :cond_8

    iget-object p1, p0, Lc5/y;->z:Lc5/h;

    iget-object p1, p1, Lc5/h;->A:LC5/a;

    const/16 p2, 0x9

    iget-object v0, p0, Lc5/y;->p:Lc5/b;

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object p0, p0, Lc5/y;->z:Lc5/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_8
    iget-object p2, p0, Lc5/y;->p:Lc5/b;

    invoke-static {p2, p1}, Lc5/h;->d(Lc5/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc5/y;->b(Lcom/google/android/gms/common/api/Status;)V

    :cond_9
    return-void

    :cond_a
    iget-object p2, p0, Lc5/y;->p:Lc5/b;

    invoke-static {p2, p1}, Lc5/h;->d(Lc5/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc5/y;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final m()V
    .locals 6

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v0, v0, Lc5/h;->A:LC5/a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Landroid/os/Handler;)V

    sget-object v0, Lc5/h;->C:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lc5/y;->b(Lcom/google/android/gms/common/api/Status;)V

    iget-object v1, p0, Lc5/y;->q:Lcom/samsung/android/motionphoto/utils/ex/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->z(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lc5/y;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Lc5/m;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc5/m;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lc5/N;

    new-instance v5, LR5/i;

    invoke-direct {v5}, LR5/i;-><init>()V

    invoke-direct {v4, v3, v5}, Lc5/N;-><init>(Lc5/m;LR5/i;)V

    invoke-virtual {p0, v4}, Lc5/y;->k(Lc5/P;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, v0}, Lc5/y;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lc5/y;->b:Lb5/e;

    invoke-interface {v0}, Lb5/e;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lo3/f;

    const/16 v2, 0x10

    invoke-direct {v1, v2, p0}, Lo3/f;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Lb5/e;->onUserSignOut(Lcom/google/android/gms/common/internal/e;)V

    :cond_1
    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lc5/y;->z:Lc5/h;

    iget-object v1, v0, Lc5/h;->A:LC5/a;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lc5/y;->e()V

    return-void

    :cond_0
    iget-object p1, v0, Lc5/h;->A:LC5/a;

    new-instance v0, LH6/p;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, LH6/p;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc5/y;->l(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lc5/y;->z:Lc5/h;

    iget-object v2, v1, Lc5/h;->A:LC5/a;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lc5/y;->f(I)V

    return-void

    :cond_0
    iget-object v0, v1, Lc5/h;->A:LC5/a;

    new-instance v1, Landroidx/emoji2/text/f;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, p0}, Landroidx/emoji2/text/f;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
