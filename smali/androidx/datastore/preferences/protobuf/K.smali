.class public final Landroidx/datastore/preferences/protobuf/K;
.super Landroidx/datastore/preferences/protobuf/L;
.source "SourceFile"


# virtual methods
.method public final a(JLjava/lang/Object;)V
    .locals 0

    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/C;

    check-cast p0, Landroidx/datastore/preferences/protobuf/b;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/b;->a:Z

    return-void
.end method

.method public final b(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;J)V
    .locals 3

    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, p3, p4, p1}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/C;

    invoke-virtual {p0, p3, p4, p2}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/C;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez p2, :cond_1

    if-lez v1, :cond_1

    move-object v2, v0

    check-cast v2, Landroidx/datastore/preferences/protobuf/b;

    iget-boolean v2, v2, Landroidx/datastore/preferences/protobuf/b;->a:Z

    if-nez v2, :cond_0

    add-int/2addr v1, p2

    invoke-interface {v0, v1}, Landroidx/datastore/preferences/protobuf/C;->a(I)Landroidx/datastore/preferences/protobuf/C;

    move-result-object v0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez p2, :cond_2

    move-object p0, v0

    :cond_2
    invoke-static {p3, p4, p1, p0}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(JLjava/lang/Object;)Ljava/util/List;
    .locals 1

    sget-object p0, Landroidx/datastore/preferences/protobuf/x0;->d:Landroidx/datastore/preferences/protobuf/w0;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/w0;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/C;

    move-object v0, p0

    check-cast v0, Landroidx/datastore/preferences/protobuf/b;

    iget-boolean v0, v0, Landroidx/datastore/preferences/protobuf/b;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-interface {p0, v0}, Landroidx/datastore/preferences/protobuf/C;->a(I)Landroidx/datastore/preferences/protobuf/C;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Landroidx/datastore/preferences/protobuf/x0;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method
