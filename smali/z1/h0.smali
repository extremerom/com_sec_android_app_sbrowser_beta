.class public final Lz1/h0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lz1/h0;->b:Ljava/lang/String;

    iput-object p2, p0, Lz1/h0;->c:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, Lz1/h0;

    iget-object v1, p0, Lz1/h0;->b:Ljava/lang/String;

    iget-object p0, p0, Lz1/h0;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lz1/h0;-><init>(Ljava/lang/String;Ljava/lang/String;Lib/c;)V

    iput-object p1, v0, Lz1/h0;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lp1/b;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lz1/h0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lz1/h0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lz1/h0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lz1/h0;->a:Ljava/lang/Object;

    check-cast p1, Lp1/b;

    invoke-virtual {p1}, Lp1/b;->d()Lp1/b;

    move-result-object v0

    sget-object v1, Lz1/i0;->g:Lp1/f;

    invoke-virtual {p1, v1}, Lp1/b;->a(Lp1/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    sget-object p1, Lfb/x;->a:Lfb/x;

    :cond_0
    iget-object v2, p0, Lz1/h0;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Lfb/F;->f(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lp1/b;->c(Lp1/f;Ljava/lang/Object;)V

    sget-object p1, Lz1/i0;->d:Lz1/Y;

    invoke-static {p1, v2}, Lz1/Y;->a(Lz1/Y;Ljava/lang/String;)Lp1/f;

    move-result-object p1

    iget-object p0, p0, Lz1/h0;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lp1/b;->c(Lp1/f;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lp1/b;->e()Lp1/b;

    move-result-object p0

    return-object p0
.end method
