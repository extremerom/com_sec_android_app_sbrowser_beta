.class public LP7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJb/n;
.implements Lf1/v;
.implements LJ4/b;
.implements LQ6/c;
.implements LQ8/a;
.implements LR5/e;
.implements LR5/d;
.implements LR5/b;
.implements LQ3/i;
.implements Lac/n;
.implements Ls/s;
.implements Luc/g;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, LP7/c;->a:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, La0/V;->f:La0/V;

    const/4 v0, 0x0

    invoke-static {v0, p1}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LP7/c;->b:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, LP7/c;->b:Ljava/lang/Object;

    return-void

    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, LP7/c;->b:Ljava/lang/Object;

    return-void

    :pswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, LPc/a;->DROP_OLDEST:LPc/a;

    const/4 v0, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, LQc/n0;->b(IILPc/a;I)LQc/m0;

    move-result-object p1

    iput-object p1, p0, LP7/c;->b:Ljava/lang/Object;

    return-void

    :pswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, LP7/c;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LP7/c;->a:I

    iput-object p2, p0, LP7/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LDb/I;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LP7/c;->a:I

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP7/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LJ2/i0;Ljava/lang/Class;)V
    .locals 2

    const/16 v0, 0xa

    iput v0, p0, LP7/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LJ2/i0;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Void;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Given internalKeyMananger "

    const-string v1, " does not support primitive class "

    invoke-static {v0, p1, v1, p2}, Lw2/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, LP7/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LP7/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LP7/c;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP7/b;

    iget-object v1, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, LP7/b;->a:LC7/a;

    const-class v2, LP7/a;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lm3/j;)V
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x10

    iput v3, p0, LP7/c;->a:I

    const/4 v3, 0x0

    const-string v4, "trackers"

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ll3/a;

    iget-object v5, p1, Lm3/j;->a:Lm3/e;

    invoke-direct {v4, v5, v3}, Ll3/a;-><init>(Lm3/e;I)V

    new-instance v5, Ll3/a;

    iget-object v6, p1, Lm3/j;->b:Lm3/a;

    invoke-direct {v5, v6}, Ll3/a;-><init>(Lm3/a;)V

    new-instance v6, Ll3/a;

    iget-object v7, p1, Lm3/j;->d:Lm3/e;

    invoke-direct {v6, v7, v2}, Ll3/a;-><init>(Lm3/e;I)V

    new-instance v7, Ll3/a;

    iget-object p1, p1, Lm3/j;->c:Lm3/e;

    invoke-direct {v7, p1, v1}, Ll3/a;-><init>(Lm3/e;I)V

    new-instance v8, Ll3/a;

    invoke-direct {v8, p1, v0}, Ll3/a;-><init>(Lm3/e;I)V

    new-instance v9, Ll3/f;

    invoke-direct {v9, p1}, Ll3/f;-><init>(Lm3/e;)V

    new-instance v10, Ll3/e;

    invoke-direct {v10, p1}, Ll3/e;-><init>(Lm3/e;)V

    const/4 p1, 0x7

    new-array p1, p1, [Ll3/d;

    aput-object v4, p1, v3

    const/4 v3, 0x1

    aput-object v5, p1, v3

    aput-object v6, p1, v1

    aput-object v7, p1, v0

    aput-object v8, p1, v2

    const/4 v0, 0x5

    aput-object v9, p1, v0

    const/4 v0, 0x6

    aput-object v10, p1, v0

    invoke-static {p1}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP7/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public B(LJb/v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ldb/r;

    new-instance p2, LDb/L;

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, LDb/I;

    invoke-direct {p2, p0, p1}, LDb/L;-><init>(LDb/I;LJb/v;)V

    return-object p2
.end method

.method public C(LMb/j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, LP7/c;->B(LJb/v;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public E(Lhc/f;Lmc/f;)V
    .locals 0

    return-void
.end method

.method public H(Lhc/b;Lhc/f;)Lac/n;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public I(LMb/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public K(Ls/i;)Z
    .locals 1

    invoke-virtual {p1}, Ls/i;->k()Ls/i;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, Lm/w;

    iget-boolean v0, p0, Lm/w;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm/w;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lm/w;->f0:Z

    if-nez p0, :cond_0

    const/16 p0, 0x6c

    invoke-interface {v0, p0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public N(LMb/w;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public P(LMb/A;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public Q(LMb/K;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, LP7/c;->B(LJb/v;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Ls/i;Z)V
    .locals 8

    invoke-virtual {p1}, Ls/i;->k()Ls/i;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    move-object p1, v0

    :cond_1
    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, Lm/w;

    iget-object v4, p0, Lm/w;->Y:[Lm/v;

    if-eqz v4, :cond_2

    array-length v5, v4

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    if-eqz v6, :cond_3

    iget-object v7, v6, Lm/v;->h:Ls/i;

    if-ne v7, p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v3, :cond_5

    iget p1, v6, Lm/v;->a:I

    invoke-virtual {p0, p1, v6, v0}, Lm/w;->t(ILm/v;Ls/i;)V

    invoke-virtual {p0, v6, v2}, Lm/w;->v(Lm/v;Z)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v6, p2}, Lm/w;->v(Lm/v;Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(LMb/y;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, LO9/a;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, LI3/d;

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    new-instance v0, LP6/h;

    invoke-direct {v0, p0}, LP6/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e(LMb/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public f([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/security/MessageDigest;->update([B)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public g(LMb/T;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, LO9/a;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public i(Lhc/f;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, Lbc/g;

    if-eqz v0, :cond_0

    instance-of p1, p2, [I

    if-eqz p1, :cond_2

    check-cast p2, [I

    iput-object p2, p0, Lbc/g;->a:[I

    goto :goto_1

    :cond_0
    const-string v0, "multifileClassName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lbc/g;->b:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method public j(Lhc/b;)Luc/f;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, LJb/L;

    iget-object v0, p1, Lhc/b;->a:Lhc/c;

    invoke-static {p0, v0}, LJb/y;->i(LJb/I;Lhc/c;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJb/H;

    instance-of v1, v0, Lvc/c;

    if-eqz v1, :cond_0

    check-cast v0, Lvc/c;

    iget-object v0, v0, Lvc/c;->j:Lo3/i;

    invoke-virtual {v0, p1}, Lo3/i;->j(Lhc/b;)Luc/f;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public k(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, LQ8/c;

    iget-object v1, p0, LQ8/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] backup: complete: isSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "e"

    invoke-static {v1, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LQ8/c;->g:LP8/b;

    check-cast v0, LQ8/d;

    iget-object v0, v0, LQ8/d;->b:LQ8/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, LQ8/e;->e:Z

    iput-boolean p1, v0, LQ8/e;->f:Z

    iget-object p1, p0, LQ8/c;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, LQ8/c;->f:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object p0, p0, LQ8/c;->d:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public l(Lo3/q;)Z
    .locals 9

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ll3/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ll3/d;->b(Lo3/q;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Ll3/d;->a:Lm3/e;

    invoke-virtual {v2}, Lm3/e;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ll3/d;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p0

    sget-object v7, Lk3/h;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "Work "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lo3/q;->a:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " constrained by "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lk3/f;->a:Lk3/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v5, 0x1f

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public m(LT/b;Lkb/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, LQc/m0;

    invoke-virtual {p0, p1, p2}, LQc/m0;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public n(Lcom/google/crypto/tink/shaded/protobuf/h;)Lc7/m0;
    .locals 4

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, LJ2/i0;

    :try_start_0
    invoke-virtual {p0}, LJ2/i0;->l()LF3/f;

    move-result-object v0

    invoke-virtual {v0, p1}, LF3/f;->O0(Lcom/google/crypto/tink/shaded/protobuf/h;)Lcom/google/crypto/tink/shaded/protobuf/a;

    move-result-object p1

    invoke-virtual {v0, p1}, LF3/f;->R0(Lcom/google/crypto/tink/shaded/protobuf/a;)V

    invoke-virtual {v0, p1}, LF3/f;->G0(Lcom/google/crypto/tink/shaded/protobuf/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/a;

    invoke-static {}, Lc7/m0;->t()Lc7/k0;

    move-result-object v0

    invoke-virtual {p0}, LJ2/i0;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v2, Lc7/m0;

    invoke-static {v2, v1}, Lc7/m0;->m(Lc7/m0;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/G; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/a;->a()I

    move-result v1

    new-array v2, v1, [B

    new-instance v3, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-direct {v3, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/j;-><init>([BI)V

    invoke-virtual {p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/a;->d(Lcom/google/crypto/tink/shaded/protobuf/j;)V

    iget v1, v3, Lcom/google/crypto/tink/shaded/protobuf/j;->c:I

    iget v3, v3, Lcom/google/crypto/tink/shaded/protobuf/j;->d:I

    sub-int/2addr v1, v3

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/g;

    invoke-direct {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/g;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p1, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p1, Lc7/m0;

    invoke-static {p1, v1}, Lc7/m0;->n(Lc7/m0;Lcom/google/crypto/tink/shaded/protobuf/g;)V

    invoke-virtual {p0}, LJ2/i0;->m()Lc7/l0;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p1, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p1, Lc7/m0;

    invoke-static {p1, p0}, Lc7/m0;->o(Lc7/m0;Lc7/l0;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/m0;
    :try_end_2
    .catch Lcom/google/crypto/tink/shaded/protobuf/G; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Did not write as much data as expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p0

    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ByteString"

    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Lcom/google/crypto/tink/shaded/protobuf/G; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Unexpected proto"

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public o(J)V
    .locals 0

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Lf1/w0;)Lf1/w0;
    .locals 0

    invoke-virtual {p2}, Lf1/w0;->a()I

    move-result p1

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, LH6/m;

    iput p1, p0, LH6/m;->m:I

    invoke-virtual {p2}, Lf1/w0;->b()I

    move-result p1

    iput p1, p0, LH6/m;->n:I

    invoke-virtual {p2}, Lf1/w0;->c()I

    move-result p1

    iput p1, p0, LH6/m;->o:I

    invoke-virtual {p0}, LH6/m;->g()V

    return-object p2
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onProgress(JJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, LQ8/c;

    iget-object v1, p0, LQ8/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] backup: onProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "e"

    invoke-static {v1, v0}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LQ8/c;->g:LP8/b;

    check-cast v0, LQ8/d;

    iget-object v0, v0, LQ8/d;->b:LQ8/e;

    iput-wide p1, v0, LQ8/e;->c:J

    iput-wide p3, v0, LQ8/e;->d:J

    iget-object p1, p0, LQ8/c;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, LQ8/c;->f:Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public q(Lhc/f;)Lac/o;
    .locals 1

    invoke-virtual {p1}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "filePartClassNames"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "strings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lbc/f;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lbc/f;-><init>(LP7/c;I)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    new-instance p1, Lbc/f;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lbc/f;-><init>(LP7/c;I)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LP7/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public u(LMb/J;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ldb/r;

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, LMb/J;->u:LMb/w;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iget-object v2, p1, LMb/J;->v:LMb/w;

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    add-int/2addr p2, v0

    iget-boolean v0, p1, LMb/J;->g:Z

    const/4 v2, 0x2

    iget-object p0, p0, LP7/c;->b:Ljava/lang/Object;

    check-cast p0, LDb/I;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    if-ne p2, v2, :cond_5

    new-instance p2, LDb/S;

    invoke-direct {p2, p0, p1}, LDb/S;-><init>(LDb/I;LMb/J;)V

    goto :goto_1

    :cond_2
    new-instance p2, LDb/P;

    invoke-direct {p2, p0, p1}, LDb/P;-><init>(LDb/I;LMb/J;)V

    goto :goto_1

    :cond_3
    new-instance p2, LDb/N;

    invoke-direct {p2, p0, p1}, LDb/N;-><init>(LDb/I;LMb/J;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_7

    if-eq p2, v1, :cond_6

    if-ne p2, v2, :cond_5

    new-instance p2, LDb/k0;

    invoke-direct {p2, p0, p1}, LDb/k0;-><init>(LDb/I;LMb/J;)V

    goto :goto_1

    :cond_5
    new-instance p0, LDb/z0;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported property: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LDb/z0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p2, LDb/h0;

    invoke-direct {p2, p0, p1}, LDb/h0;-><init>(LDb/I;LMb/J;)V

    goto :goto_1

    :cond_7
    new-instance p2, LDb/e0;

    invoke-direct {p2, p0, p1}, LDb/e0;-><init>(LDb/I;LMb/J;)V

    :goto_1
    return-object p2
.end method

.method public v(LMb/B;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public x(Lhc/f;Lhc/b;Lhc/f;)V
    .locals 0

    return-void
.end method

.method public y(LMb/D;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public z(LMb/L;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, LP7/c;->B(LJb/v;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
