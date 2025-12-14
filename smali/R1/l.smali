.class public final LR1/l;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:LR1/m;

.field public final synthetic e:Ljava/lang/Class;

.field public final synthetic f:LZ1/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;LR1/m;Ljava/lang/Class;LZ1/a;Lib/c;)V
    .locals 0

    iput-object p1, p0, LR1/l;->c:Landroid/content/Context;

    iput-object p2, p0, LR1/l;->d:LR1/m;

    iput-object p3, p0, LR1/l;->e:Ljava/lang/Class;

    iput-object p4, p0, LR1/l;->f:LZ1/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7

    new-instance v6, LR1/l;

    iget-object v3, p0, LR1/l;->e:Ljava/lang/Class;

    iget-object v4, p0, LR1/l;->f:LZ1/a;

    iget-object v1, p0, LR1/l;->c:Landroid/content/Context;

    iget-object v2, p0, LR1/l;->d:LR1/m;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LR1/l;-><init>(Landroid/content/Context;LR1/m;Ljava/lang/Class;LZ1/a;Lib/c;)V

    iput-object p1, v6, LR1/l;->b:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc2/w;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LR1/l;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LR1/l;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LR1/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LR1/l;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LR1/l;->b:Ljava/lang/Object;

    check-cast p1, Lc2/w;

    new-instance v1, LZ1/p;

    iget-object v3, p0, LR1/l;->f:LZ1/a;

    iget v4, v3, LZ1/a;->a:I

    iget-object v5, p0, LR1/l;->d:LR1/m;

    iget-object v6, p0, LR1/l;->e:Ljava/lang/Class;

    iget v3, v3, LZ1/a;->b:I

    invoke-direct {v1, v5, v6, v4, v3}, LZ1/p;-><init>(LR1/m;Ljava/lang/Class;II)V

    iput v2, p0, LR1/l;->a:I

    iget-object v2, p0, LR1/l;->c:Landroid/content/Context;

    invoke-interface {p1, v2, v1, p0}, Lc2/w;->c(Landroid/content/Context;Lc2/m;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
