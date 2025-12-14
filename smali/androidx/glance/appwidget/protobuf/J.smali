.class public final Landroidx/glance/appwidget/protobuf/J;
.super Landroidx/glance/appwidget/protobuf/L;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/glance/appwidget/protobuf/J;->c:Ljava/lang/Class;

    return-void
.end method

.method public static d(JILjava/lang/Object;)Ljava/util/List;
    .locals 3

    sget-object v0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {v0, p0, p1, p3}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroidx/glance/appwidget/protobuf/I;

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/glance/appwidget/protobuf/H;

    invoke-direct {v0, p2}, Landroidx/glance/appwidget/protobuf/H;-><init>(I)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroidx/glance/appwidget/protobuf/a0;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroidx/glance/appwidget/protobuf/C;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/glance/appwidget/protobuf/C;

    invoke-interface {v0, p2}, Landroidx/glance/appwidget/protobuf/C;->a(I)Landroidx/glance/appwidget/protobuf/C;

    move-result-object p2

    move-object v0, p2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-static {p0, p1, p3, v0}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Landroidx/glance/appwidget/protobuf/J;->c:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p1, p3, v1}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_3
    instance-of v1, v0, Landroidx/glance/appwidget/protobuf/m0;

    if-eqz v1, :cond_4

    new-instance v1, Landroidx/glance/appwidget/protobuf/H;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Landroidx/glance/appwidget/protobuf/H;-><init>(I)V

    check-cast v0, Landroidx/glance/appwidget/protobuf/m0;

    invoke-virtual {v1, v0}, Landroidx/glance/appwidget/protobuf/H;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, p1, p3, v1}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Landroidx/glance/appwidget/protobuf/a0;

    if-eqz v1, :cond_5

    instance-of v1, v0, Landroidx/glance/appwidget/protobuf/C;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Landroidx/glance/appwidget/protobuf/C;

    move-object v2, v1

    check-cast v2, Landroidx/glance/appwidget/protobuf/b;

    iget-boolean v2, v2, Landroidx/glance/appwidget/protobuf/b;->a:Z

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {v1, v0}, Landroidx/glance/appwidget/protobuf/C;->a(I)Landroidx/glance/appwidget/protobuf/C;

    move-result-object v0

    invoke-static {p0, p1, p3, v0}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final a(JLjava/lang/Object;)V
    .locals 2

    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    instance-of v0, p0, Landroidx/glance/appwidget/protobuf/I;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/glance/appwidget/protobuf/I;

    invoke-interface {p0}, Landroidx/glance/appwidget/protobuf/I;->c()Landroidx/glance/appwidget/protobuf/I;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroidx/glance/appwidget/protobuf/J;->c:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p0, Landroidx/glance/appwidget/protobuf/a0;

    if-eqz v0, :cond_3

    instance-of v0, p0, Landroidx/glance/appwidget/protobuf/C;

    if-eqz v0, :cond_3

    check-cast p0, Landroidx/glance/appwidget/protobuf/C;

    check-cast p0, Landroidx/glance/appwidget/protobuf/b;

    iget-boolean p1, p0, Landroidx/glance/appwidget/protobuf/b;->a:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/glance/appwidget/protobuf/b;->a:Z

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-static {p1, p2, p3, p0}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    sget-object p0, Landroidx/glance/appwidget/protobuf/r0;->c:Landroidx/glance/appwidget/protobuf/q0;

    invoke-virtual {p0, p1, p2, p4}, Landroidx/glance/appwidget/protobuf/q0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {p1, p2, p4, p3}, Landroidx/glance/appwidget/protobuf/J;->d(JILjava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    invoke-interface {p4, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-lez v0, :cond_1

    move-object p0, p4

    :cond_1
    invoke-static {p1, p2, p3, p0}, Landroidx/glance/appwidget/protobuf/r0;->s(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(JLjava/lang/Object;)Ljava/util/List;
    .locals 0

    const/16 p0, 0xa

    invoke-static {p1, p2, p0, p3}, Landroidx/glance/appwidget/protobuf/J;->d(JILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
