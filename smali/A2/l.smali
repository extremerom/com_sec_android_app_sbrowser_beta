.class public final LA2/l;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:LA2/n;

.field public final synthetic c:LA2/m;


# direct methods
.method public constructor <init>(LA2/m;LA2/n;Lib/c;)V
    .locals 0

    iput-object p2, p0, LA2/l;->b:LA2/n;

    iput-object p1, p0, LA2/l;->c:LA2/m;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, LA2/l;

    iget-object v1, p0, LA2/l;->b:LA2/n;

    iget-object p0, p0, LA2/l;->c:LA2/m;

    invoke-direct {v0, p0, v1, p2}, LA2/l;-><init>(LA2/m;LA2/n;Lib/c;)V

    iput-object p1, v0, LA2/l;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LA2/l;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LA2/l;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LA2/l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LA2/l;->a:Ljava/lang/Object;

    check-cast p1, LNc/B;

    iget-object v0, p0, LA2/l;->b:LA2/n;

    iget-object v1, v0, LA2/n;->a:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    new-instance v3, LA2/k;

    iget-object v4, p0, LA2/l;->c:LA2/m;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v0, v5}, LA2/k;-><init>(LA2/m;Landroid/net/Uri;LA2/n;Lib/c;)V

    const/4 v2, 0x3

    invoke-static {p1, v5, v5, v3, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    goto :goto_0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
