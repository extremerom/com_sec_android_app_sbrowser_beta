.class public final Landroidx/datastore/preferences/protobuf/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/h0;


# instance fields
.field public final a:Landroidx/datastore/preferences/protobuf/A;

.field public final b:Landroidx/datastore/preferences/protobuf/p0;

.field public final c:Landroidx/datastore/preferences/protobuf/o;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/A;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Y;->b:Landroidx/datastore/preferences/protobuf/p0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/Y;->c:Landroidx/datastore/preferences/protobuf/o;

    iput-object p3, p0, Landroidx/datastore/preferences/protobuf/Y;->a:Landroidx/datastore/preferences/protobuf/A;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/z;->NEW_BUILDER:Landroidx/datastore/preferences/protobuf/z;

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/Y;->a:Landroidx/datastore/preferences/protobuf/A;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/A;->d(Landroidx/datastore/preferences/protobuf/z;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/x;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/x;->b()Landroidx/datastore/preferences/protobuf/A;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Y;->b:Landroidx/datastore/preferences/protobuf/p0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/A;

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/datastore/preferences/protobuf/o0;->e:Z

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/Y;->c:Landroidx/datastore/preferences/protobuf/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/Y;->c:Landroidx/datastore/preferences/protobuf/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/O;)V
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/Y;->c:Landroidx/datastore/preferences/protobuf/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Landroidx/datastore/preferences/protobuf/a;)I
    .locals 6

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/Y;->b:Landroidx/datastore/preferences/protobuf/p0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/datastore/preferences/protobuf/A;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/o0;->d:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Landroidx/datastore/preferences/protobuf/o0;->a:I

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/o0;->b:[I

    aget v1, v1, p1

    const/4 v2, 0x3

    ushr-int/2addr v1, v2

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/o0;->c:[Ljava/lang/Object;

    aget-object v3, v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/g;

    const/4 v4, 0x1

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/k;->K(I)I

    move-result v4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    invoke-static {v5, v1}, Landroidx/datastore/preferences/protobuf/k;->L(II)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/k;->t(ILandroidx/datastore/preferences/protobuf/g;)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Landroidx/datastore/preferences/protobuf/o0;->d:I

    move p1, v0

    :goto_1
    return p1
.end method

.method public final f(Ljava/lang/Object;LN/h;Landroidx/datastore/preferences/protobuf/n;)V
    .locals 1

    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/Y;->b:Landroidx/datastore/preferences/protobuf/p0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p2, p1

    check-cast p2, Landroidx/datastore/preferences/protobuf/A;

    iget-object p3, p2, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    sget-object v0, Landroidx/datastore/preferences/protobuf/o0;->f:Landroidx/datastore/preferences/protobuf/o0;

    if-ne p3, v0, :cond_0

    invoke-static {}, Landroidx/datastore/preferences/protobuf/o0;->b()Landroidx/datastore/preferences/protobuf/o0;

    move-result-object p3

    iput-object p3, p2, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    :cond_0
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/Y;->c:Landroidx/datastore/preferences/protobuf/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final g(Landroidx/datastore/preferences/protobuf/A;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/Y;->b:Landroidx/datastore/preferences/protobuf/p0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    check-cast p2, Landroidx/datastore/preferences/protobuf/A;

    iget-object p1, p2, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/o0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final h(Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;)V
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/Y;->b:Landroidx/datastore/preferences/protobuf/p0;

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/i0;->B(Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/A;Landroidx/datastore/preferences/protobuf/A;)V

    return-void
.end method

.method public final i(Landroidx/datastore/preferences/protobuf/A;)I
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/Y;->b:Landroidx/datastore/preferences/protobuf/p0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/A;->unknownFields:Landroidx/datastore/preferences/protobuf/o0;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/o0;->hashCode()I

    move-result p0

    return p0
.end method
