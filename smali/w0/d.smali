.class public final Lw0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lw0/g;

.field public b:Ltb/m;

.field public c:LUc/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LA4/a;

    const/16 v1, 0x1a

    invoke-direct {v0, v1, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lw0/d;->b:Ltb/m;

    return-void
.end method


# virtual methods
.method public final a(JJLkb/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p5, Lw0/b;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lw0/b;

    iget v1, v0, Lw0/b;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lw0/b;->c:I

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lw0/b;

    invoke-direct {v0, p0, p5}, Lw0/b;-><init>(Lw0/d;Lkb/c;)V

    goto :goto_0

    :goto_1
    iget-object p5, v6, Lw0/b;->a:Ljava/lang/Object;

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v6, Lw0/b;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p5}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lw0/d;->d()Lw0/g;

    move-result-object v1

    if-eqz v1, :cond_4

    iput v2, v6, Lw0/b;->c:I

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lw0/g;->g(JJLib/c;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p5, LH0/o;

    iget-wide p0, p5, LH0/o;->a:J

    goto :goto_3

    :cond_4
    sget-wide p0, LH0/o;->b:J

    :goto_3
    new-instance p2, LH0/o;

    invoke-direct {p2, p0, p1}, LH0/o;-><init>(J)V

    return-object p2
.end method

.method public final b(JLkb/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lw0/c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lw0/c;

    iget v1, v0, Lw0/c;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lw0/c;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lw0/c;

    invoke-direct {v0, p0, p3}, Lw0/c;-><init>(Lw0/d;Lkb/c;)V

    :goto_0
    iget-object p3, v0, Lw0/c;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lw0/c;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lw0/d;->d()Lw0/g;

    move-result-object p0

    if-eqz p0, :cond_4

    iput v3, v0, Lw0/c;->c:I

    invoke-virtual {p0, p1, p2, v0}, Lw0/g;->a(JLib/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, LH0/o;

    iget-wide p0, p3, LH0/o;->a:J

    goto :goto_2

    :cond_4
    sget-wide p0, LH0/o;->b:J

    :goto_2
    new-instance p2, LH0/o;

    invoke-direct {p2, p0, p1}, LH0/o;-><init>(J)V

    return-object p2
.end method

.method public final c()LNc/B;
    .locals 1

    iget-object p0, p0, Lw0/d;->b:Ltb/m;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LNc/B;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Lw0/g;
    .locals 1

    iget-object p0, p0, Lw0/d;->a:Lw0/g;

    if-eqz p0, :cond_0

    sget-object v0, Lw0/i;->a:LA0/g;

    invoke-interface {p0, v0}, LA0/e;->b(LA0/g;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw0/g;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
