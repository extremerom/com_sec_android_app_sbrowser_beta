.class public final LZ1/d;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:LR1/m;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(LR1/m;Landroid/content/Context;Lib/c;)V
    .locals 0

    iput-object p1, p0, LZ1/d;->b:LR1/m;

    iput-object p2, p0, LZ1/d;->c:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, LZ1/d;

    iget-object v0, p0, LZ1/d;->b:LR1/m;

    iget-object p0, p0, LZ1/d;->c:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p2}, LZ1/d;-><init>(LR1/m;Landroid/content/Context;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LZ1/d;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LZ1/d;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LZ1/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LZ1/d;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iput v2, p0, LZ1/d;->a:I

    iget-object p1, p0, LZ1/d;->b:LR1/m;

    iget-object v1, p0, LZ1/d;->c:Landroid/content/Context;

    invoke-virtual {p1, v1, p0}, LR1/m;->providePreview$glance_oneui_template_release(Landroid/content/Context;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
