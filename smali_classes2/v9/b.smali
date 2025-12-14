.class public final Lv9/b;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Iterable;

.field public final synthetic c:Lsb/n;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lsb/n;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv9/b;->b:Ljava/lang/Iterable;

    iput-object p2, p0, Lv9/b;->c:Lsb/n;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance v0, Lv9/b;

    iget-object v1, p0, Lv9/b;->b:Ljava/lang/Iterable;

    iget-object p0, p0, Lv9/b;->c:Lsb/n;

    invoke-direct {v0, v1, p0, p2}, Lv9/b;-><init>(Ljava/lang/Iterable;Lsb/n;Lib/c;)V

    iput-object p1, v0, Lv9/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv9/b;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv9/b;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv9/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lv9/b;->a:Ljava/lang/Object;

    check-cast p1, LNc/B;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lv9/b;->b:Ljava/lang/Iterable;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lv9/a;

    iget-object v4, p0, Lv9/b;->c:Lsb/n;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lv9/a;-><init>(Ljava/lang/Object;Lsb/n;Lib/c;)V

    const/4 v2, 0x3

    invoke-static {p1, v5, v3, v2}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
