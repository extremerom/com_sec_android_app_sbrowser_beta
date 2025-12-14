.class public final Landroidx/glance/appwidget/protobuf/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/glance/appwidget/protobuf/f0;


# instance fields
.field public final a:Landroidx/glance/appwidget/protobuf/y;

.field public final b:Landroidx/glance/appwidget/protobuf/j0;

.field public final c:Landroidx/glance/appwidget/protobuf/o;


# direct methods
.method public constructor <init>(Landroidx/glance/appwidget/protobuf/j0;Landroidx/glance/appwidget/protobuf/o;Landroidx/glance/appwidget/protobuf/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/glance/appwidget/protobuf/W;->b:Landroidx/glance/appwidget/protobuf/j0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/glance/appwidget/protobuf/W;->c:Landroidx/glance/appwidget/protobuf/o;

    iput-object p3, p0, Landroidx/glance/appwidget/protobuf/W;->a:Landroidx/glance/appwidget/protobuf/y;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/glance/appwidget/protobuf/y;
    .locals 1

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/W;->a:Landroidx/glance/appwidget/protobuf/y;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/y;->j()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Landroidx/glance/appwidget/protobuf/x;->NEW_BUILDER:Landroidx/glance/appwidget/protobuf/x;

    invoke-virtual {p0, v0}, Landroidx/glance/appwidget/protobuf/y;->d(Landroidx/glance/appwidget/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/glance/appwidget/protobuf/v;

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/v;->b()Landroidx/glance/appwidget/protobuf/y;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/glance/appwidget/protobuf/W;->b:Landroidx/glance/appwidget/protobuf/j0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/glance/appwidget/protobuf/j0;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/W;->c:Landroidx/glance/appwidget/protobuf/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/W;->c:Landroidx/glance/appwidget/protobuf/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/W;->b:Landroidx/glance/appwidget/protobuf/j0;

    invoke-static {p0, p1, p2}, Landroidx/glance/appwidget/protobuf/g0;->B(Landroidx/glance/appwidget/protobuf/j0;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;LN/h;Landroidx/glance/appwidget/protobuf/n;)V
    .locals 0

    iget-object p2, p0, Landroidx/glance/appwidget/protobuf/W;->b:Landroidx/glance/appwidget/protobuf/j0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/glance/appwidget/protobuf/j0;->a(Ljava/lang/Object;)Landroidx/glance/appwidget/protobuf/i0;

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/W;->c:Landroidx/glance/appwidget/protobuf/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final f(Landroidx/glance/appwidget/protobuf/y;)I
    .locals 0

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/W;->b:Landroidx/glance/appwidget/protobuf/j0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    invoke-virtual {p0}, Landroidx/glance/appwidget/protobuf/i0;->hashCode()I

    move-result p0

    return p0
.end method

.method public final g(Landroidx/glance/appwidget/protobuf/y;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/W;->b:Landroidx/glance/appwidget/protobuf/j0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    check-cast p2, Landroidx/glance/appwidget/protobuf/y;

    iget-object p1, p2, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    invoke-virtual {p0, p1}, Landroidx/glance/appwidget/protobuf/i0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final h(Landroidx/glance/appwidget/protobuf/y;)I
    .locals 6

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/W;->b:Landroidx/glance/appwidget/protobuf/j0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/glance/appwidget/protobuf/y;->unknownFields:Landroidx/glance/appwidget/protobuf/i0;

    iget p1, p0, Landroidx/glance/appwidget/protobuf/i0;->d:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Landroidx/glance/appwidget/protobuf/i0;->a:I

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Landroidx/glance/appwidget/protobuf/i0;->b:[I

    aget v1, v1, p1

    const/4 v2, 0x3

    ushr-int/2addr v1, v2

    iget-object v3, p0, Landroidx/glance/appwidget/protobuf/i0;->c:[Ljava/lang/Object;

    aget-object v3, v3, p1

    check-cast v3, Landroidx/glance/appwidget/protobuf/g;

    const/4 v4, 0x1

    invoke-static {v4}, Landroidx/glance/appwidget/protobuf/k;->B(I)I

    move-result v4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    invoke-static {v5, v1}, Landroidx/glance/appwidget/protobuf/k;->C(II)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v2, v3}, Landroidx/glance/appwidget/protobuf/k;->k(ILandroidx/glance/appwidget/protobuf/g;)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Landroidx/glance/appwidget/protobuf/i0;->d:I

    move p1, v0

    :goto_1
    return p1
.end method

.method public final i(Ljava/lang/Object;Landroidx/glance/appwidget/protobuf/O;)V
    .locals 0

    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/W;->c:Landroidx/glance/appwidget/protobuf/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
