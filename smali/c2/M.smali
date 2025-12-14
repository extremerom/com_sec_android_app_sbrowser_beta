.class public final Lc2/M;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:Lc2/m;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/Throwable;

.field public final synthetic e:Lc2/U;


# direct methods
.method public constructor <init>(Lc2/m;Landroid/content/Context;Ljava/lang/Throwable;Lc2/U;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/M;->b:Lc2/m;

    iput-object p2, p0, Lc2/M;->c:Landroid/content/Context;

    iput-object p3, p0, Lc2/M;->d:Ljava/lang/Throwable;

    iput-object p4, p0, Lc2/M;->e:Lc2/U;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6

    new-instance p1, Lc2/M;

    iget-object v3, p0, Lc2/M;->d:Ljava/lang/Throwable;

    iget-object v4, p0, Lc2/M;->e:Lc2/U;

    iget-object v1, p0, Lc2/M;->b:Lc2/m;

    iget-object v2, p0, Lc2/M;->c:Landroid/content/Context;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc2/M;-><init>(Lc2/m;Landroid/content/Context;Ljava/lang/Throwable;Lc2/U;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lc2/M;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/M;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/M;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lc2/M;->a:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    iget-object v3, p0, Lc2/M;->d:Ljava/lang/Throwable;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iput v4, p0, Lc2/M;->a:I

    iget-object p1, p0, Lc2/M;->b:Lc2/m;

    iget-object v1, p0, Lc2/M;->c:Landroid/content/Context;

    invoke-virtual {p1, v1, v3}, Lc2/m;->d(Landroid/content/Context;Ljava/lang/Throwable;)V

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    const-string p1, "Error in composition effect coroutine"

    invoke-static {p1, v3}, LNc/E;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object p0, p0, Lc2/M;->e:Lc2/U;

    invoke-static {p0, p1}, LNc/E;->h(LNc/B;Ljava/util/concurrent/CancellationException;)V

    return-object v2
.end method
