.class public final LZ1/l;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:LZ1/p;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LZ1/p;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(LZ1/p;Landroid/content/Context;Lib/c;)V
    .locals 0

    iput-object p1, p0, LZ1/l;->d:LZ1/p;

    iput-object p2, p0, LZ1/l;->e:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, LZ1/l;

    iget-object v1, p0, LZ1/l;->d:LZ1/p;

    iget-object p0, p0, LZ1/l;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p2}, LZ1/l;-><init>(LZ1/p;Landroid/content/Context;Lib/c;)V

    iput-object p1, v0, LZ1/l;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La0/f0;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LZ1/l;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LZ1/l;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LZ1/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LZ1/l;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, LZ1/l;->a:LZ1/p;

    iget-object p0, p0, LZ1/l;->c:Ljava/lang/Object;

    check-cast p0, La0/f0;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LZ1/l;->c:Ljava/lang/Object;

    check-cast p1, La0/f0;

    iget-object v1, p0, LZ1/l;->d:LZ1/p;

    iget-object v3, v1, LZ1/p;->e:LR1/m;

    invoke-virtual {v3}, Lz1/V;->getStateDefinition()Ld2/g;

    move-result-object v3

    if-eqz v3, :cond_3

    iput-object p1, p0, LZ1/l;->c:Ljava/lang/Object;

    iput-object v1, p0, LZ1/l;->a:LZ1/p;

    iput v2, p0, LZ1/l;->b:I

    iget-object v2, p0, LZ1/l;->e:Landroid/content/Context;

    invoke-virtual {v1, v2, p0}, LZ1/p;->o(Landroid/content/Context;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_0
    check-cast p1, LZ1/i;

    iput-object p1, v0, LZ1/p;->j:LZ1/i;

    move-object p1, p0

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0}, La0/f0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
