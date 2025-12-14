.class public abstract LRc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lib/c;

.field public static final b:LQ6/i;

.field public static final c:LQ6/i;

.field public static final d:LQ6/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Lib/c;

    sput-object v0, LRc/c;->a:[Lib/c;

    new-instance v0, LQ6/i;

    const-string v1, "NULL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRc/c;->b:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRc/c;->c:LQ6/i;

    new-instance v0, LQ6/i;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v2}, LQ6/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, LRc/c;->d:LQ6/i;

    return-void
.end method

.method public static final a(LQc/i;Lib/c;Lsb/a;Lsb/o;[LQc/h;)Ljava/lang/Object;
    .locals 7

    new-instance v6, LRc/t;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LRc/t;-><init>(LQc/i;Lib/c;Lsb/a;Lsb/o;[LQc/h;)V

    new-instance p0, LNc/D0;

    invoke-interface {p1}, Lib/c;->getContext()Lib/h;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p1, p3}, LNc/D0;-><init>(Lib/h;Lib/c;I)V

    invoke-static {p0, p0, v6}, LG5/X2;->e(LUc/w;LUc/w;Lsb/n;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic b(LRc/D;Lib/h;ILPc/a;I)LQc/h;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lib/i;->a:Lib/i;

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/4 p2, -0x3

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, LPc/a;->SUSPEND:LPc/a;

    :cond_2
    invoke-interface {p0, p1, p2, p3}, LRc/D;->b(Lib/h;ILPc/a;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lib/h;Ljava/lang/Object;Ljava/lang/Object;Lsb/n;Lib/c;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0, p2}, LUc/a;->n(Lib/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    new-instance v0, LRc/L;

    invoke-direct {v0, p4, p0}, LRc/L;-><init>(Lib/c;Lib/h;)V

    instance-of v1, p3, Lkb/a;

    if-nez v1, :cond_0

    invoke-static {p1, p3, v0}, LG5/U3;->f(Ljava/lang/Object;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1, p3}, Ltb/z;->e(ILjava/lang/Object;)V

    invoke-interface {p3, p1, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {p0, p2}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    sget-object p0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p1, p0, :cond_1

    const-string p0, "frame"

    invoke-static {p4, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p1

    :goto_1
    invoke-static {p0, p2}, LUc/a;->h(Lib/h;Ljava/lang/Object;)V

    throw p1
.end method
