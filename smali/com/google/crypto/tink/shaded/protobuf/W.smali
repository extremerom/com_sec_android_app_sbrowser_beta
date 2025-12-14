.class public final Lcom/google/crypto/tink/shaded/protobuf/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/f0;


# instance fields
.field public final a:Lcom/google/crypto/tink/shaded/protobuf/a;

.field public final b:Lcom/google/crypto/tink/shaded/protobuf/i0;

.field public final c:Lcom/google/crypto/tink/shaded/protobuf/p;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/i0;Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->b:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->c:Lcom/google/crypto/tink/shaded/protobuf/p;

    iput-object p3, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->a:Lcom/google/crypto/tink/shaded/protobuf/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->a:Lcom/google/crypto/tink/shaded/protobuf/a;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/z;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/y;->NEW_BUILDER:Lcom/google/crypto/tink/shaded/protobuf/y;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/z;->f(Lcom/google/crypto/tink/shaded/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/w;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/w;->b()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->b:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/crypto/tink/shaded/protobuf/h0;->e:Z

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->c:Lcom/google/crypto/tink/shaded/protobuf/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->c:Lcom/google/crypto/tink/shaded/protobuf/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/l;)V
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->c:Lcom/google/crypto/tink/shaded/protobuf/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Ljava/lang/Object;LN/h;Lcom/google/crypto/tink/shaded/protobuf/o;)V
    .locals 1

    iget-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->b:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p2, p1

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object p3, p2, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/h0;->f:Lcom/google/crypto/tink/shaded/protobuf/h0;

    if-ne p3, v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/h0;->b()Lcom/google/crypto/tink/shaded/protobuf/h0;

    move-result-object p3

    iput-object p3, p2, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    :cond_0
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->c:Lcom/google/crypto/tink/shaded/protobuf/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final f(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/A;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    sget-object p3, Lcom/google/crypto/tink/shaded/protobuf/h0;->f:Lcom/google/crypto/tink/shaded/protobuf/h0;

    if-ne p2, p3, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/h0;->b()Lcom/google/crypto/tink/shaded/protobuf/h0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    :cond_0
    invoke-static {p1}, LB/e;->l(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public final g(Lcom/google/crypto/tink/shaded/protobuf/z;)I
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->b:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h0;->hashCode()I

    move-result p0

    return p0
.end method

.method public final h(Lcom/google/crypto/tink/shaded/protobuf/a;)I
    .locals 6

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->b:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->d:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->a:I

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->b:[I

    aget v1, v1, p1

    const/4 v2, 0x3

    ushr-int/2addr v1, v2

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->c:[Ljava/lang/Object;

    aget-object v3, v3, p1

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/h;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->p0(I)I

    move-result v4

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    invoke-static {v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->q0(II)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->Y(ILcom/google/crypto/tink/shaded/protobuf/h;)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/h0;->d:I

    move p1, v0

    :goto_1
    return p1
.end method

.method public final i(Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;)V
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->b:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/g0;->B(Lcom/google/crypto/tink/shaded/protobuf/i0;Lcom/google/crypto/tink/shaded/protobuf/z;Lcom/google/crypto/tink/shaded/protobuf/z;)V

    return-void
.end method

.method public final j(Lcom/google/crypto/tink/shaded/protobuf/z;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/W;->b:Lcom/google/crypto/tink/shaded/protobuf/i0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget-object p1, p2, Lcom/google/crypto/tink/shaded/protobuf/z;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/h0;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/h0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
