.class public final LQc/d;
.super LRc/g;
.source "SourceFile"


# static fields
.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic consumed$volatile:I

.field public final d:LPc/i;

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, LQc/d;

    const-string v1, "consumed$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, LQc/d;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public synthetic constructor <init>(LPc/i;Z)V
    .locals 6

    sget-object v3, Lib/i;->a:Lib/i;

    sget-object v5, LPc/a;->SUSPEND:LPc/a;

    const/4 v4, -0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, LQc/d;-><init>(LPc/i;ZLib/h;ILPc/a;)V

    return-void
.end method

.method public constructor <init>(LPc/i;ZLib/h;ILPc/a;)V
    .locals 0

    invoke-direct {p0, p3, p4, p5}, LRc/g;-><init>(Lib/h;ILPc/a;)V

    iput-object p1, p0, LQc/d;->d:LPc/i;

    iput-boolean p2, p0, LQc/d;->e:Z

    const/4 p1, 0x0

    iput p1, p0, LQc/d;->consumed$volatile:I

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "channel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LQc/d;->d:LPc/i;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ldb/r;->a:Ldb/r;

    iget v1, p0, LRc/g;->b:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, LQc/d;->e:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    sget-object v3, LQc/d;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ReceiveChannel.consumeAsFlow can be collected just once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, LQc/d;->d:LPc/i;

    invoke-static {p1, p0, v1, p2}, LQc/n0;->m(LQc/i;LPc/A;ZLib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    return-object v0

    :cond_3
    invoke-super {p0, p1, p2}, LRc/g;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    return-object v0
.end method

.method public final d(LPc/y;Lib/c;)Ljava/lang/Object;
    .locals 1

    new-instance v0, LRc/K;

    invoke-direct {v0, p1}, LRc/K;-><init>(LPc/y;)V

    iget-object p1, p0, LQc/d;->d:LPc/i;

    iget-boolean p0, p0, LQc/d;->e:Z

    invoke-static {v0, p1, p0, p2}, LQc/n0;->m(LQc/i;LPc/A;ZLib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final f(Lib/h;ILPc/a;)LRc/g;
    .locals 7

    new-instance v6, LQc/d;

    iget-object v1, p0, LQc/d;->d:LPc/i;

    iget-boolean v2, p0, LQc/d;->e:Z

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LQc/d;-><init>(LPc/i;ZLib/h;ILPc/a;)V

    return-object v6
.end method

.method public final g()LQc/h;
    .locals 2

    new-instance v0, LQc/d;

    iget-object v1, p0, LQc/d;->d:LPc/i;

    iget-boolean p0, p0, LQc/d;->e:Z

    invoke-direct {v0, v1, p0}, LQc/d;-><init>(LPc/i;Z)V

    return-object v0
.end method

.method public final h(LNc/B;)LPc/A;
    .locals 2

    iget-boolean v0, p0, LQc/d;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sget-object v1, LQc/d;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ReceiveChannel.consumeAsFlow can be collected just once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget v0, p0, LRc/g;->b:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    iget-object p0, p0, LQc/d;->d:LPc/i;

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, LRc/g;->h(LNc/B;)LPc/A;

    move-result-object p0

    :goto_1
    return-object p0
.end method
