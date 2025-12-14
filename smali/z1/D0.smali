.class public final Lz1/D0;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lz1/E0;


# direct methods
.method public constructor <init>(Lz1/E0;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lz1/D0;->b:Lz1/E0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lz1/D0;

    iget-object p0, p0, Lz1/D0;->b:Lz1/E0;

    invoke-direct {v0, p0, p2}, Lz1/D0;-><init>(Lz1/E0;Lib/c;)V

    iput-object p1, v0, Lz1/D0;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LF1/f;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lz1/D0;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lz1/D0;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lz1/D0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lz1/D0;->a:Ljava/lang/Object;

    check-cast p1, LF1/f;

    sget-object v0, Landroidx/glance/appwidget/protobuf/x;->NEW_BUILDER:Landroidx/glance/appwidget/protobuf/x;

    invoke-virtual {p1, v0}, LF1/f;->d(Landroidx/glance/appwidget/protobuf/x;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/glance/appwidget/protobuf/v;

    iget-object v1, v0, Landroidx/glance/appwidget/protobuf/v;->a:Landroidx/glance/appwidget/protobuf/y;

    invoke-virtual {v1, p1}, Landroidx/glance/appwidget/protobuf/y;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v1, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    invoke-static {v1, p1}, Landroidx/glance/appwidget/protobuf/v;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    check-cast v0, LF1/e;

    iget-object p1, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast p1, LF1/f;

    invoke-virtual {p1}, LF1/f;->r()I

    move-result p1

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v1, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v1, LF1/f;

    invoke-static {v1, p1}, LF1/f;->o(LF1/f;I)V

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object p1, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast p1, LF1/f;

    invoke-static {p1}, LF1/f;->n(LF1/f;)V

    iget-object p0, p0, Lz1/D0;->b:Lz1/E0;

    iget-object p1, p0, Lz1/E0;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF1/j;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v4, p0, Lz1/E0;->e:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, LF1/h;->q()LF1/g;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v4, v3, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v4, LF1/h;

    invoke-static {v4, v2}, LF1/h;->m(LF1/h;LF1/j;)V

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v2, v3, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v2, LF1/h;

    invoke-static {v2, v1}, LF1/h;->n(LF1/h;I)V

    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->c()V

    iget-object v1, v0, Landroidx/glance/appwidget/protobuf/v;->b:Landroidx/glance/appwidget/protobuf/y;

    check-cast v1, LF1/f;

    invoke-virtual {v3}, Landroidx/glance/appwidget/protobuf/v;->a()Landroidx/glance/appwidget/protobuf/y;

    move-result-object v2

    check-cast v2, LF1/h;

    invoke-static {v1, v2}, LF1/f;->m(LF1/f;LF1/h;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/glance/appwidget/protobuf/v;->a()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p0

    return-object p0
.end method
