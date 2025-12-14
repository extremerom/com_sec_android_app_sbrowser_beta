.class public final LC1/v;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:LC1/E;


# direct methods
.method public constructor <init>(LC1/E;Lib/c;)V
    .locals 0

    iput-object p1, p0, LC1/v;->a:LC1/E;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Lib/c;)Lib/c;
    .locals 1

    new-instance v0, LC1/v;

    iget-object p0, p0, LC1/v;->a:LC1/E;

    invoke-direct {v0, p0, p1}, LC1/v;-><init>(LC1/E;Lib/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lib/c;

    invoke-virtual {p0, p1}, LC1/v;->create(Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LC1/v;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LC1/v;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-wide v3, LC1/z;->b:J

    new-instance p1, LC1/D;

    iget-object p0, p0, LC1/v;->a:LC1/E;

    iget-object v8, p0, LC1/E;->f:LC1/w;

    iget-object v5, p0, LC1/E;->e:LC1/u;

    const/4 v9, 0x0

    iget-object v2, p0, LC1/E;->d:Ljava/lang/String;

    iget-object v0, p0, LC1/E;->c:LNc/B;

    move-object v1, p1

    move-object v6, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v9}, LC1/D;-><init>(Ljava/lang/String;JLC1/u;LC1/E;LNc/B;LC1/w;Lib/c;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, p1, v1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p1

    iget-object p0, p0, LC1/E;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LNc/j0;

    if-eqz p0, :cond_0

    invoke-interface {p0, v2}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
