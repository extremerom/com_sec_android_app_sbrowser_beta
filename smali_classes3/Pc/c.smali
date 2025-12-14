.class public final synthetic LPc/c;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# static fields
.field public static final a:LPc/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LPc/c;

    const-string v5, "registerSelectForReceive(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V"

    const/4 v2, 0x0

    const/4 v1, 0x3

    const-class v3, LPc/i;

    const-string v4, "registerSelectForReceive"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LPc/c;->a:LPc/c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, LPc/i;

    check-cast p2, LXc/f;

    sget-object p0, LPc/i;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LPc/i;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LPc/q;

    :cond_0
    :goto_0
    invoke-virtual {p1}, LPc/i;->y()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p0, LPc/k;->l:LQ6/i;

    check-cast p2, LXc/e;

    iput-object p0, p2, LXc/e;->e:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    sget-object p3, LPc/i;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v6

    sget p3, LPc/k;->b:I

    int-to-long v0, p3

    div-long v2, v6, v0

    rem-long v0, v6, v0

    long-to-int p3, v0

    iget-wide v0, p0, LUc/x;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2, v3, p0}, LPc/i;->q(JLPc/q;)LPc/q;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :cond_3
    move-object v0, p1

    move-object v1, p0

    move v2, p3

    move-wide v3, v6

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, LPc/i;->J(LPc/q;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LPc/k;->m:LQ6/i;

    if-ne v0, v1, :cond_5

    instance-of p1, p2, LNc/N0;

    if-eqz p1, :cond_4

    check-cast p2, LNc/N0;

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_7

    invoke-interface {p2, p0, p3}, LNc/N0;->a(LUc/x;I)V

    goto :goto_2

    :cond_5
    sget-object p3, LPc/k;->o:LQ6/i;

    if-ne v0, p3, :cond_6

    invoke-virtual {p1}, LPc/i;->v()J

    move-result-wide v0

    cmp-long p3, v6, v0

    if-gez p3, :cond_0

    invoke-virtual {p0}, LUc/d;->a()V

    goto :goto_0

    :cond_6
    sget-object p1, LPc/k;->n:LQ6/i;

    if-eq v0, p1, :cond_8

    invoke-virtual {p0}, LUc/d;->a()V

    check-cast p2, LXc/e;

    iput-object v0, p2, LXc/e;->e:Ljava/lang/Object;

    :cond_7
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
