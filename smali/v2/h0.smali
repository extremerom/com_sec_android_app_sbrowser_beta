.class public final Lv2/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv2/K0;

.field public final b:Ljava/lang/Object;

.field public final c:Lv2/L0;

.field public final d:Lo3/c;

.field public final e:Lo3/c;

.field public final f:LQc/h;


# direct methods
.method public constructor <init>(Lv2/K0;Ljava/lang/Object;Lv2/L0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/h0;->a:Lv2/K0;

    iput-object p2, p0, Lv2/h0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lv2/h0;->c:Lv2/L0;

    new-instance p1, Lo3/c;

    const/16 p2, 0xe

    invoke-direct {p1, p2}, Lo3/c;-><init>(I)V

    iput-object p1, p0, Lv2/h0;->d:Lo3/c;

    new-instance p1, Lo3/c;

    invoke-direct {p1, p2}, Lo3/c;-><init>(I)V

    iput-object p1, p0, Lv2/h0;->e:Lo3/c;

    new-instance p1, Lv2/f0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lv2/f0;-><init>(Lv2/h0;Lib/c;)V

    invoke-static {p1}, Lv2/F;->c(Lsb/n;)LQc/h;

    move-result-object p1

    iput-object p1, p0, Lv2/h0;->f:LQc/h;

    return-void
.end method

.method public static final a(Lv2/h0;Lv2/g1;Lkb/c;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lv2/g0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lv2/g0;

    iget v1, v0, Lv2/g0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/g0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/g0;

    invoke-direct {v0, p0, p2}, Lv2/g0;-><init>(Lv2/h0;Lkb/c;)V

    :goto_0
    iget-object p2, v0, Lv2/g0;->c:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/g0;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lv2/g0;->b:Lv2/g1;

    iget-object p0, v0, Lv2/g0;->a:Lv2/h0;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, Lv2/g0;->a:Lv2/h0;

    iput-object p1, v0, Lv2/g0;->b:Lv2/g1;

    iput v3, v0, Lv2/g0;->e:I

    iget-object p2, p0, Lv2/h0;->a:Lv2/K0;

    invoke-virtual {p2, v0}, Lv2/K0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move-object v1, p2

    check-cast v1, Lv2/g1;

    if-eq v1, p1, :cond_7

    new-instance p2, LJ2/T;

    const-string v7, "invalidate()V"

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-class v5, Lv2/h0;

    const-string v6, "invalidate"

    const/4 v9, 0x4

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v2 .. v9}, LJ2/T;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1, p2}, Lv2/g1;->registerInvalidatedCallback(Lsb/a;)V

    if-eqz p1, :cond_4

    new-instance p2, LJ2/T;

    const-string v7, "invalidate()V"

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-class v5, Lv2/h0;

    const-string v6, "invalidate"

    const/4 v9, 0x5

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v2 .. v9}, LJ2/T;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p1, p2}, Lv2/g1;->unregisterInvalidatedCallback(Lsb/a;)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lv2/g1;->invalidate()V

    :cond_5
    sget-object p0, Landroid/os/Build;->ID:Ljava/lang/String;

    if-eqz p0, :cond_6

    const-string p0, "Paging"

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Generated new PagingSource "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "message"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-object v1

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "An instance of PagingSource was re-used when Pager expected to create a new\ninstance. Ensure that the pagingSourceFactory passed to Pager always returns a\nnew instance of PagingSource."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
