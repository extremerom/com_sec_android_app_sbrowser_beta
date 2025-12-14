.class public final LI1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:La0/p0;

.field public final synthetic b:Ltb/v;

.field public final synthetic c:LQc/A0;

.field public final synthetic d:Lz1/p;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lz1/Q0;

.field public final synthetic g:LNc/B;


# direct methods
.method public constructor <init>(La0/p0;Ltb/v;LQc/A0;Lz1/p;Landroid/content/Context;Lz1/Q0;LNc/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI1/f;->a:La0/p0;

    iput-object p2, p0, LI1/f;->b:Ltb/v;

    iput-object p3, p0, LI1/f;->c:LQc/A0;

    iput-object p4, p0, LI1/f;->d:Lz1/p;

    iput-object p5, p0, LI1/f;->e:Landroid/content/Context;

    iput-object p6, p0, LI1/f;->f:Lz1/Q0;

    iput-object p7, p0, LI1/f;->g:LNc/B;

    return-void
.end method


# virtual methods
.method public final b(La0/j0;Lib/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, LI1/e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LI1/e;

    iget v1, v0, LI1/e;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LI1/e;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LI1/e;

    invoke-direct {v0, p0, p2}, LI1/e;-><init>(LI1/f;Lib/c;)V

    :goto_0
    iget-object p2, v0, LI1/e;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LI1/e;->d:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, LI1/e;->a:LI1/f;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, LI1/e;->a:LI1/f;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-object p2, LI1/d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    goto/16 :goto_3

    :cond_4
    const/4 p1, 0x0

    iget-object p0, p0, LI1/f;->g:LNc/B;

    invoke-static {p0, p1}, LNc/E;->h(LNc/B;Ljava/util/concurrent/CancellationException;)V

    goto/16 :goto_3

    :cond_5
    iget-object p1, p0, LI1/f;->a:La0/p0;

    iget-wide p1, p1, La0/p0;->a:J

    iget-object v2, p0, LI1/f;->b:Ltb/v;

    iget-wide v6, v2, Ltb/v;->a:J

    cmp-long p1, p1, v6

    if-gtz p1, :cond_6

    iget-object p1, p0, LI1/f;->c:LQc/A0;

    invoke-virtual {p1}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_6
    iget-object p1, p0, LI1/f;->f:Lz1/Q0;

    invoke-virtual {p1}, Lz1/Q0;->copy()Lx1/l;

    move-result-object p1

    check-cast p1, Lx1/n;

    iput-object p0, v0, LI1/e;->a:LI1/f;

    iput v5, v0, LI1/e;->d:I

    iget-object p2, p0, LI1/f;->d:Lz1/p;

    iget-object v2, p0, LI1/f;->e:Landroid/content/Context;

    invoke-virtual {p2, v2, p1, v0}, Lz1/p;->e(Landroid/content/Context;Lx1/n;Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Session is processed / "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "msg"

    invoke-static {p2, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Le7/a;->a:Ljava/lang/String;

    const-string v5, " "

    const-string v6, "GWT:OneTimeUpdate"

    invoke-static {v2, v5, p2, v6}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, LI1/f;->c:LQc/A0;

    invoke-virtual {p2}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_8

    if-eqz p1, :cond_8

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, v0, LI1/e;->a:LI1/f;

    iput v4, v0, LI1/e;->d:I

    iget-object p2, p0, LI1/f;->c:LQc/A0;

    invoke-virtual {p2, p1, v0}, LQc/A0;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    if-ne v3, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    iget-object p1, p0, LI1/f;->b:Ltb/v;

    iget-object p0, p0, LI1/f;->a:La0/p0;

    iget-wide v0, p0, La0/p0;->a:J

    iput-wide v0, p1, Ltb/v;->a:J

    :goto_3
    return-object v3
.end method

.method public final bridge synthetic emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La0/j0;

    invoke-virtual {p0, p1, p2}, LI1/f;->b(La0/j0;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
