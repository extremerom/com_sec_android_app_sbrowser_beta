.class public final Lv2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:LQc/i;

.field public final synthetic b:Lv2/i;


# direct methods
.method public constructor <init>(LQc/i;Lv2/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lv2/g;->b:Lv2/i;

    iput-object p1, p0, Lv2/g;->a:LQc/i;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lv2/f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv2/f;

    iget v1, v0, Lv2/f;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/f;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/f;

    invoke-direct {v0, p0, p2}, Lv2/f;-><init>(Lv2/g;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lv2/f;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/f;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lv2/f;->e:Ljava/lang/Object;

    check-cast p0, LQc/i;

    iget-object p1, v0, Lv2/f;->d:Ljava/lang/Object;

    check-cast p1, Lv2/s;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lv2/f;->f:LQc/i;

    iget-object p1, v0, Lv2/f;->e:Ljava/lang/Object;

    check-cast p1, Lv2/s;

    iget-object v2, v0, Lv2/f;->d:Ljava/lang/Object;

    check-cast v2, Lv2/g;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v7, v2

    move-object v2, p0

    move-object p0, v7

    goto :goto_1

    :cond_4
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p1, Lv2/s;

    iget-object p2, p0, Lv2/g;->b:Lv2/i;

    iget-object p2, p2, Lv2/i;->d:LQc/A0;

    invoke-virtual {p2}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v2, p0, Lv2/g;->a:LQc/i;

    if-eqz p2, :cond_7

    iput-object p0, v0, Lv2/f;->d:Ljava/lang/Object;

    iput-object p1, v0, Lv2/f;->e:Ljava/lang/Object;

    iput-object v2, v0, Lv2/f;->f:LQc/i;

    iput v4, v0, Lv2/f;->b:I

    invoke-static {v0}, LNc/E;->N(Lkb/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    iget-object p0, p0, Lv2/g;->b:Lv2/i;

    iget-object p0, p0, Lv2/i;->d:LQc/A0;

    new-instance p2, Lv2/b;

    invoke-direct {p2, v5, v6}, Lkb/i;-><init>(ILib/c;)V

    iput-object p1, v0, Lv2/f;->d:Ljava/lang/Object;

    iput-object v2, v0, Lv2/f;->e:Ljava/lang/Object;

    iput-object v6, v0, Lv2/f;->f:LQc/i;

    iput v5, v0, Lv2/f;->b:I

    invoke-static {p0, p2, v0}, LQc/n0;->p(LRc/D;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    move-object p0, v2

    :goto_2
    move-object v2, p0

    :cond_7
    iput-object v6, v0, Lv2/f;->d:Ljava/lang/Object;

    iput-object v6, v0, Lv2/f;->e:Ljava/lang/Object;

    iput v3, v0, Lv2/f;->b:I

    invoke-interface {v2, p1, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
