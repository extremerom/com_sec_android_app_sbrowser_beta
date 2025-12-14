.class public final LRc/n;
.super LRc/i;
.source "SourceFile"


# instance fields
.field public final e:Lkb/i;


# direct methods
.method public constructor <init>(Lsb/o;LQc/h;Lib/h;ILPc/a;)V
    .locals 0

    invoke-direct {p0, p4, p5, p2, p3}, LRc/i;-><init>(ILPc/a;LQc/h;Lib/h;)V

    check-cast p1, Lkb/i;

    iput-object p1, p0, LRc/n;->e:Lkb/i;

    return-void
.end method


# virtual methods
.method public final f(Lib/h;ILPc/a;)LRc/g;
    .locals 7

    new-instance v6, LRc/n;

    iget-object v1, p0, LRc/n;->e:Lkb/i;

    iget-object v2, p0, LRc/i;->d:LQc/h;

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LRc/n;-><init>(Lsb/o;LQc/h;Lib/h;ILPc/a;)V

    return-object v6
.end method

.method public final i(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 2

    new-instance v0, LRc/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LRc/m;-><init>(LRc/n;LQc/i;Lib/c;)V

    invoke-static {v0, p2}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
