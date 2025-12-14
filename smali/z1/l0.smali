.class public final Lz1/l0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Lz1/q0;

.field public b:Landroid/content/Context;

.field public c:I

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lz1/q0;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:[I


# direct methods
.method public constructor <init>(Lz1/q0;Landroid/content/Context;[ILib/c;)V
    .locals 0

    iput-object p1, p0, Lz1/l0;->g:Lz1/q0;

    iput-object p2, p0, Lz1/l0;->h:Landroid/content/Context;

    iput-object p3, p0, Lz1/l0;->i:[I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, Lz1/l0;

    iget-object v1, p0, Lz1/l0;->h:Landroid/content/Context;

    iget-object v2, p0, Lz1/l0;->i:[I

    iget-object p0, p0, Lz1/l0;->g:Lz1/q0;

    invoke-direct {v0, p0, v1, v2, p2}, Lz1/l0;-><init>(Lz1/q0;Landroid/content/Context;[ILib/c;)V

    iput-object p1, v0, Lz1/l0;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lz1/l0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lz1/l0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lz1/l0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lz1/l0;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lz1/l0;->d:I

    iget v3, p0, Lz1/l0;->c:I

    iget-object v4, p0, Lz1/l0;->b:Landroid/content/Context;

    iget-object v5, p0, Lz1/l0;->a:Lz1/q0;

    iget-object v6, p0, Lz1/l0;->f:Ljava/lang/Object;

    check-cast v6, [I

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lz1/l0;->f:Ljava/lang/Object;

    check-cast p1, LNc/B;

    iget-object v1, p0, Lz1/l0;->g:Lz1/q0;

    iget-object v3, p0, Lz1/l0;->h:Landroid/content/Context;

    invoke-static {v1, p1, v3}, Lz1/q0;->access$updateManager(Lz1/q0;LNc/B;Landroid/content/Context;)V

    iget-object p1, p0, Lz1/l0;->i:[I

    array-length v4, p1

    const/4 v5, 0x0

    move-object v6, p1

    move v8, v5

    move-object v5, v1

    move v1, v4

    move-object v4, v3

    move v3, v8

    :goto_0
    if-ge v3, v1, :cond_3

    aget p1, v6, v3

    invoke-virtual {v5}, Lz1/q0;->getGlanceAppWidget()Lz1/V;

    move-result-object v7

    iput-object v6, p0, Lz1/l0;->f:Ljava/lang/Object;

    iput-object v5, p0, Lz1/l0;->a:Lz1/q0;

    iput-object v4, p0, Lz1/l0;->b:Landroid/content/Context;

    iput v3, p0, Lz1/l0;->c:I

    iput v1, p0, Lz1/l0;->d:I

    iput v2, p0, Lz1/l0;->e:I

    invoke-virtual {v7, v4, p1, p0}, Lz1/V;->deleted$glance_appwidget_release(Landroid/content/Context;ILib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    add-int/2addr v3, v2

    goto :goto_0

    :cond_3
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
