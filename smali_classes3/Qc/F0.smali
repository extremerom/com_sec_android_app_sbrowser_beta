.class public final LQc/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i0;


# instance fields
.field public final a:LQc/m0;

.field public final b:Lv2/o;


# direct methods
.method public constructor <init>(LQc/m0;Lv2/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQc/F0;->a:LQc/m0;

    iput-object p2, p0, LQc/F0;->b:Lv2/o;

    return-void
.end method


# virtual methods
.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, LQc/E0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LQc/E0;

    iget v1, v0, LQc/E0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LQc/E0;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LQc/E0;

    invoke-direct {v0, p0, p2}, LQc/E0;-><init>(LQc/F0;Lib/c;)V

    :goto_0
    iget-object p2, v0, LQc/E0;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LQc/E0;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p2, LQc/D0;

    iget-object v2, p0, LQc/F0;->b:Lv2/o;

    invoke-direct {p2, p1, v2}, LQc/D0;-><init>(LQc/i;Lv2/o;)V

    iput v3, v0, LQc/E0;->c:I

    iget-object p0, p0, LQc/F0;->a:LQc/m0;

    invoke-static {p0, p2, v0}, LQc/m0;->k(LQc/m0;LQc/i;Lib/c;)Ljb/a;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
