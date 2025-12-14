.class public final LUc/h;
.super LNc/L;
.source "SourceFile"

# interfaces
.implements Lkb/d;
.implements Lib/c;


# static fields
.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation$volatile:Ljava/lang/Object;

.field public final d:LNc/x;

.field public final e:Lkb/c;

.field public f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation$volatile"

    const-class v2, LUc/h;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LUc/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(LNc/x;Lkb/c;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, LNc/L;-><init>(I)V

    iput-object p1, p0, LUc/h;->d:LNc/x;

    iput-object p2, p0, LUc/h;->e:Lkb/c;

    sget-object p1, LUc/a;->c:LQ6/i;

    iput-object p1, p0, LUc/h;->f:Ljava/lang/Object;

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object p1

    invoke-static {p1}, LUc/a;->m(Lib/h;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LUc/h;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 0

    instance-of p0, p1, LNc/t;

    if-eqz p0, :cond_0

    check-cast p1, LNc/t;

    iget-object p0, p1, LNc/t;->b:Lsb/k;

    invoke-interface {p0, p2}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final c()Lib/c;
    .locals 0

    return-object p0
.end method

.method public final getCallerFrame()Lkb/d;
    .locals 0

    iget-object p0, p0, LUc/h;->e:Lkb/c;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getContext()Lib/h;
    .locals 0

    iget-object p0, p0, LUc/h;->e:Lkb/c;

    invoke-interface {p0}, Lib/c;->getContext()Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LUc/h;->f:Ljava/lang/Object;

    sget-object v1, LUc/a;->c:LQ6/i;

    iput-object v1, p0, LUc/h;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LUc/h;->e:Lkb/c;

    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object v1

    invoke-static {p1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, p1

    goto :goto_0

    :cond_0
    new-instance v4, LNc/s;

    invoke-direct {v4, v3, v2}, LNc/s;-><init>(ZLjava/lang/Throwable;)V

    :goto_0
    iget-object v2, p0, LUc/h;->d:LNc/x;

    invoke-virtual {v2, v1}, LNc/x;->H(Lib/h;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v4, p0, LUc/h;->f:Ljava/lang/Object;

    iput v3, p0, LNc/L;->c:I

    invoke-virtual {v2, v1, p0}, LNc/x;->v(Lib/h;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_1
    invoke-static {}, LNc/F0;->a()LNc/Y;

    move-result-object v1

    invoke-virtual {v1}, LNc/Y;->W()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v4, p0, LUc/h;->f:Ljava/lang/Object;

    iput v3, p0, LNc/L;->c:I

    invoke-virtual {v1, p0}, LNc/Y;->S(LNc/L;)V

    goto :goto_3

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LNc/Y;->V(Z)V

    :try_start_0
    invoke-interface {v0}, Lib/c;->getContext()Lib/h;

    move-result-object v3

    iget-object v4, p0, LUc/h;->g:Ljava/lang/Object;

    invoke-static {v3, v4}, LUc/a;->n(Lib/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1}, Lib/c;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v4}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, LNc/Y;->d0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, LNc/Y;->K(Z)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v3, v4}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, LNc/L;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :goto_3
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v1, v2}, LNc/Y;->K(Z)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DispatchedContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LUc/h;->d:LNc/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LUc/h;->e:Lkb/c;

    invoke-static {p0}, LNc/E;->G(Lib/c;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
