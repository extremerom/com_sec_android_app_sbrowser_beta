.class public final LRc/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:Lib/h;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:LPc/x;

.field public final synthetic d:LQc/i;

.field public final synthetic e:Lsb/o;

.field public final synthetic f:LNc/m0;


# direct methods
.method public constructor <init>(Lib/h;Ljava/lang/Object;LPc/x;LQc/i;Lsb/o;LNc/m0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRc/w;->a:Lib/h;

    iput-object p2, p0, LRc/w;->b:Ljava/lang/Object;

    iput-object p3, p0, LRc/w;->c:LPc/x;

    iput-object p4, p0, LRc/w;->d:LQc/i;

    iput-object p5, p0, LRc/w;->e:Lsb/o;

    iput-object p6, p0, LRc/w;->f:LNc/m0;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, LRc/v;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LRc/v;

    iget v1, v0, LRc/v;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LRc/v;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LRc/v;

    invoke-direct {v0, p0, p2}, LRc/v;-><init>(LRc/w;Lib/c;)V

    :goto_0
    iget-object p2, v0, LRc/v;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LRc/v;->c:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p2, LRc/u;

    iget-object v10, p0, LRc/w;->f:LNc/m0;

    iget-object v6, p0, LRc/w;->c:LPc/x;

    iget-object v7, p0, LRc/w;->d:LQc/i;

    iget-object v8, p0, LRc/w;->e:Lsb/o;

    const/4 v11, 0x0

    move-object v5, p2

    move-object v9, p1

    invoke-direct/range {v5 .. v11}, LRc/u;-><init>(LPc/x;LQc/i;Lsb/o;Ljava/lang/Object;LNc/m0;Lib/c;)V

    iput v4, v0, LRc/v;->c:I

    iget-object p1, p0, LRc/w;->a:Lib/h;

    iget-object p0, p0, LRc/w;->b:Ljava/lang/Object;

    invoke-static {p1, v3, p0, p2, v0}, LRc/c;->c(Lib/h;Ljava/lang/Object;Ljava/lang/Object;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v3
.end method
