.class public final Lv2/o;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Ljava/util/Iterator;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LA7/c;


# direct methods
.method public constructor <init>(LA7/c;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/o;->d:LA7/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lv2/o;

    iget-object p0, p0, Lv2/o;->d:LA7/c;

    invoke-direct {v0, p0, p2}, Lv2/o;-><init>(LA7/c;Lib/c;)V

    iput-object p1, v0, Lv2/o;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/i;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/o;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/o;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lv2/o;->b:I

    iget-object v2, p0, Lv2/o;->d:LA7/c;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lv2/o;->a:Ljava/util/Iterator;

    iget-object v2, p0, Lv2/o;->c:Ljava/lang/Object;

    check-cast v2, LQc/i;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lv2/o;->c:Ljava/lang/Object;

    check-cast v1, LQc/i;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lv2/o;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, LQc/i;

    iget-object p1, v2, LA7/c;->b:Ljava/lang/Object;

    check-cast p1, LG5/g4;

    iput-object v1, p0, Lv2/o;->c:Ljava/lang/Object;

    iput v4, p0, Lv2/o;->b:I

    invoke-virtual {p1, p0}, LG5/g4;->f(Lkb/c;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    iget-object v2, v2, LA7/c;->d:Ljava/lang/Object;

    check-cast v2, LNc/C0;

    invoke-virtual {v2}, LNc/t0;->start()Z

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, v1

    move-object v1, p1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfb/z;

    iput-object v2, p0, Lv2/o;->c:Ljava/lang/Object;

    iput-object v1, p0, Lv2/o;->a:Ljava/util/Iterator;

    iput v3, p0, Lv2/o;->b:I

    invoke-interface {v2, p1, p0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_5
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
