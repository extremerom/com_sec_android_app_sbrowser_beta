.class public final Lz1/o0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lz1/q0;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:[I


# direct methods
.method public constructor <init>(Lz1/q0;Landroid/content/Context;[ILib/c;)V
    .locals 0

    iput-object p1, p0, Lz1/o0;->c:Lz1/q0;

    iput-object p2, p0, Lz1/o0;->d:Landroid/content/Context;

    iput-object p3, p0, Lz1/o0;->e:[I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, Lz1/o0;

    iget-object v1, p0, Lz1/o0;->d:Landroid/content/Context;

    iget-object v2, p0, Lz1/o0;->e:[I

    iget-object p0, p0, Lz1/o0;->c:Lz1/q0;

    invoke-direct {v0, p0, v1, v2, p2}, Lz1/o0;-><init>(Lz1/q0;Landroid/content/Context;[ILib/c;)V

    iput-object p1, v0, Lz1/o0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lz1/o0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lz1/o0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lz1/o0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lz1/o0;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lz1/o0;->b:Ljava/lang/Object;

    check-cast p1, LNc/B;

    iget-object v1, p0, Lz1/o0;->c:Lz1/q0;

    iget-object v3, p0, Lz1/o0;->d:Landroid/content/Context;

    invoke-static {v1, p1, v3}, Lz1/q0;->access$updateManager(Lz1/q0;LNc/B;Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v9, p0, Lz1/o0;->e:[I

    array-length v3, v9

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v10, v9

    const/4 v3, 0x0

    move v11, v3

    :goto_0
    if-ge v11, v10, :cond_2

    aget v6, v9, v11

    new-instance v12, Lz1/n0;

    iget-object v4, p0, Lz1/o0;->c:Lz1/q0;

    iget-object v5, p0, Lz1/o0;->d:Landroid/content/Context;

    const/4 v8, 0x0

    move-object v3, v12

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lz1/n0;-><init>(Lz1/q0;Landroid/content/Context;I[ILib/c;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {p1, v4, v12, v3}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    iput v2, p0, Lz1/o0;->a:I

    invoke-static {v1, p0}, LNc/E;->g(Ljava/util/ArrayList;Lkb/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
