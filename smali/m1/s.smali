.class public final Lm1/s;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lm1/H;


# direct methods
.method public constructor <init>(Lm1/H;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lm1/s;->b:Lm1/H;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lm1/s;

    iget-object p0, p0, Lm1/s;->b:Lm1/H;

    invoke-direct {v0, p0, p2}, Lm1/s;-><init>(Lm1/H;Lib/c;)V

    iput-object p1, v0, Lm1/s;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lm1/H;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lm1/s;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lm1/s;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lm1/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lm1/s;->a:Ljava/lang/Object;

    check-cast p1, Lm1/H;

    iget-object p0, p0, Lm1/s;->b:Lm1/H;

    instance-of v0, p0, Lm1/c;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p0, Lm1/i;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
