.class public final Lv2/k0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public synthetic a:Lv2/G;

.field public synthetic b:Lv2/G;

.field public final synthetic c:Lv2/P;


# direct methods
.method public constructor <init>(Lv2/P;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/k0;->c:Lv2/P;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lv2/G;

    check-cast p2, Lv2/G;

    check-cast p3, Lib/c;

    new-instance v0, Lv2/k0;

    iget-object p0, p0, Lv2/k0;->c:Lv2/P;

    invoke-direct {v0, p0, p3}, Lv2/k0;-><init>(Lv2/P;Lib/c;)V

    iput-object p1, v0, Lv2/k0;->a:Lv2/G;

    iput-object p2, v0, Lv2/k0;->b:Lv2/G;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, Lv2/k0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lv2/k0;->a:Lv2/G;

    iget-object v0, p0, Lv2/k0;->b:Lv2/G;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "previous"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv2/k0;->c:Lv2/P;

    const-string v1, "loadType"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Lv2/G;->a:I

    iget v2, p1, Lv2/G;->a:I

    if-le v1, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v2, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lv2/G;->b:Lv2/C1;

    iget-object v2, p1, Lv2/G;->b:Lv2/C1;

    invoke-static {v1, v2, p0}, Lv2/F;->b(Lv2/C1;Lv2/C1;Lv2/P;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_2

    move-object p1, v0

    :cond_2
    return-object p1
.end method
