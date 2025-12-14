.class public final Landroidx/glance/appwidget/protobuf/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Landroidx/glance/appwidget/protobuf/i0;
    .locals 5

    check-cast p0, Landroidx/glance/appwidget/protobuf/y;

    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    sget-object v1, Landroidx/glance/appwidget/protobuf/i0;->f:Landroidx/glance/appwidget/protobuf/i0;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroidx/glance/appwidget/protobuf/i0;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v1, v3}, Landroidx/glance/appwidget/protobuf/i0;-><init>(I[I[Ljava/lang/Object;Z)V

    iput-object v0, p0, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1

    check-cast p0, Landroidx/glance/appwidget/protobuf/y;

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/glance/appwidget/protobuf/i0;->e:Z

    return-void
.end method

.method public static c(Ljava/lang/Object;LN/h;)Z
    .locals 8

    iget v0, p1, LN/h;->b:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    iget-object v5, p1, LN/h;->e:Ljava/lang/Object;

    check-cast v5, Landroidx/glance/appwidget/protobuf/j;

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    const/4 v6, 0x2

    if-eq v0, v6, :cond_6

    if-eq v0, v4, :cond_2

    const/4 v6, 0x4

    if-eq v0, v6, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v2}, LN/h;->d0(I)V

    invoke-virtual {v5}, Landroidx/glance/appwidget/protobuf/j;->j()I

    move-result p1

    check-cast p0, Landroidx/glance/appwidget/protobuf/i0;

    shl-int/lit8 v0, v1, 0x3

    or-int/2addr v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/i0;->c(ILjava/lang/Object;)V

    return v3

    :cond_0
    invoke-static {}, Landroidx/glance/appwidget/protobuf/F;->b()Landroidx/glance/appwidget/protobuf/E;

    move-result-object p0

    throw p0

    :cond_1
    return v2

    :cond_2
    new-instance v0, Landroidx/glance/appwidget/protobuf/i0;

    const/16 v5, 0x8

    new-array v6, v5, [I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v0, v2, v6, v5, v3}, Landroidx/glance/appwidget/protobuf/i0;-><init>(I[I[Ljava/lang/Object;Z)V

    shl-int/2addr v1, v4

    or-int/lit8 v5, v1, 0x4

    :cond_3
    invoke-virtual {p1}, LN/h;->b()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_4

    invoke-static {v0, p1}, Landroidx/glance/appwidget/protobuf/j0;->c(Ljava/lang/Object;LN/h;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_4
    iget p1, p1, LN/h;->b:I

    if-ne v5, p1, :cond_5

    iput-boolean v2, v0, Landroidx/glance/appwidget/protobuf/i0;->e:Z

    check-cast p0, Landroidx/glance/appwidget/protobuf/i0;

    or-int/lit8 p1, v1, 0x3

    invoke-virtual {p0, p1, v0}, Landroidx/glance/appwidget/protobuf/i0;->c(ILjava/lang/Object;)V

    return v3

    :cond_5
    new-instance p0, Landroidx/glance/appwidget/protobuf/F;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p1}, LN/h;->k()Landroidx/glance/appwidget/protobuf/g;

    move-result-object p1

    check-cast p0, Landroidx/glance/appwidget/protobuf/i0;

    shl-int/lit8 v0, v1, 0x3

    or-int/2addr v0, v6

    invoke-virtual {p0, v0, p1}, Landroidx/glance/appwidget/protobuf/i0;->c(ILjava/lang/Object;)V

    return v3

    :cond_7
    invoke-virtual {p1, v3}, LN/h;->d0(I)V

    invoke-virtual {v5}, Landroidx/glance/appwidget/protobuf/j;->k()J

    move-result-wide v5

    check-cast p0, Landroidx/glance/appwidget/protobuf/i0;

    shl-int/lit8 p1, v1, 0x3

    or-int/2addr p1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/glance/appwidget/protobuf/i0;->c(ILjava/lang/Object;)V

    return v3

    :cond_8
    invoke-virtual {p1, v2}, LN/h;->d0(I)V

    invoke-virtual {v5}, Landroidx/glance/appwidget/protobuf/j;->n()J

    move-result-wide v5

    check-cast p0, Landroidx/glance/appwidget/protobuf/i0;

    shl-int/lit8 p1, v1, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/glance/appwidget/protobuf/i0;->c(ILjava/lang/Object;)V

    return v3
.end method
