.class public abstract Lic/m;
.super Lic/p;
.source "SourceFile"


# instance fields
.field public final a:Lic/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    new-instance v0, Lic/i;

    invoke-direct {v0}, Lic/i;-><init>()V

    iput-object v0, p0, Lic/m;->a:Lic/i;

    return-void
.end method

.method public constructor <init>(Lic/l;)V
    .locals 1

    invoke-direct {p0}, Lic/b;-><init>()V

    iget-object v0, p1, Lic/l;->b:Lic/i;

    invoke-virtual {v0}, Lic/i;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lic/l;->c:Z

    iget-object p1, p1, Lic/l;->b:Lic/i;

    iput-object p1, p0, Lic/m;->a:Lic/i;

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lic/m;->a:Lic/i;

    iget-object v2, v2, Lic/i;->a:Lic/C;

    iget-object v3, v2, Lic/C;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lic/C;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lic/i;->e(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lic/C;->c()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lic/i;->e(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final h()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lic/m;->a:Lic/i;

    iget-object v2, v2, Lic/i;->a:Lic/C;

    iget-object v3, v2, Lic/C;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v2, v2, Lic/C;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/n;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lic/i;->d(Lic/n;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lic/C;->c()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lic/n;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lic/i;->d(Lic/n;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final i(Lic/o;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lic/m;->m(Lic/o;)V

    iget-object p0, p0, Lic/m;->a:Lic/i;

    iget-object p0, p0, Lic/i;->a:Lic/C;

    iget-object v0, p1, Lic/o;->d:Lic/n;

    invoke-virtual {p0, v0}, Lic/C;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lic/o;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-boolean v1, v0, Lic/n;->c:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lic/n;->b:Lic/M;

    invoke-virtual {v0}, Lic/M;->a()Lic/N;

    move-result-object v0

    sget-object v1, Lic/N;->ENUM:Lic/N;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lic/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, Lic/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public final j(Lic/o;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lic/m;->m(Lic/o;)V

    iget-object p0, p0, Lic/m;->a:Lic/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lic/o;->d:Lic/n;

    iget-boolean v0, p1, Lic/n;->c:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lic/i;->a:Lic/C;

    invoke-virtual {p0, p1}, Lic/C;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hasField() can only be called on non-repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Lic/m;->a:Lic/i;

    invoke-virtual {p0}, Lic/i;->f()V

    return-void
.end method

.method public final l(Lcom/google/crypto/tink/shaded/protobuf/i;LK6/q;Lic/g;I)Z
    .locals 8

    invoke-interface {p0}, Lic/x;->getDefaultInstanceForType()Lic/b;

    move-result-object v0

    and-int/lit8 v1, p4, 0x7

    ushr-int/lit8 v2, p4, 0x3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lic/f;

    invoke-direct {v3, v2, v0}, Lic/f;-><init>(ILic/b;)V

    iget-object v0, p3, Lic/g;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/o;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    :cond_0
    move v5, v3

    move v1, v4

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lic/o;->d:Lic/n;

    iget-object v6, v5, Lic/n;->b:Lic/M;

    sget-object v7, Lic/i;->c:Lic/i;

    invoke-virtual {v6}, Lic/M;->c()I

    move-result v6

    if-ne v1, v6, :cond_2

    move v1, v3

    move v5, v1

    goto :goto_0

    :cond_2
    iget-boolean v6, v5, Lic/n;->c:Z

    if-eqz v6, :cond_0

    iget-object v5, v5, Lic/n;->b:Lic/M;

    invoke-virtual {v5}, Lic/M;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v1, v2, :cond_0

    move v1, v3

    move v5, v4

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p1, p4, p2}, Lcom/google/crypto/tink/shaded/protobuf/i;->v(ILK6/q;)Z

    move-result v4

    goto/16 :goto_5

    :cond_3
    const/4 p2, 0x0

    iget-object p0, p0, Lic/m;->a:Lic/i;

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result p3

    iget-object p4, v0, Lic/o;->d:Lic/n;

    iget-object v0, p4, Lic/n;->b:Lic/M;

    sget-object v1, Lic/M;->ENUM:Lic/M;

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result p0

    if-gtz p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    throw p2

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->d()I

    move-result p2

    if-lez p2, :cond_6

    iget-object p2, p4, Lic/n;->b:Lic/M;

    invoke-static {p1, p2}, Lic/i;->h(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/M;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Lic/i;->a(Lic/n;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/i;->g(I)V

    goto/16 :goto_5

    :cond_7
    sget-object p4, Lic/j;->a:[I

    iget-object v1, v0, Lic/o;->d:Lic/n;

    iget-object v1, v1, Lic/n;->b:Lic/M;

    invoke-virtual {v1}, Lic/M;->a()Lic/N;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p4, p4, v1

    iget-object v1, v0, Lic/o;->d:Lic/n;

    if-eq p4, v4, :cond_9

    if-eq p4, v2, :cond_8

    iget-object p2, v1, Lic/n;->b:Lic/M;

    invoke-static {p1, p2}, Lic/i;->h(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/M;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p2

    :cond_9
    iget-boolean p4, v1, Lic/n;->c:Z

    if-nez p4, :cond_a

    iget-object p4, p0, Lic/i;->a:Lic/C;

    invoke-virtual {p4, v1}, Lic/C;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lic/b;

    if-eqz p4, :cond_a

    invoke-virtual {p4}, Lic/b;->c()Lic/k;

    move-result-object p2

    :cond_a
    if-nez p2, :cond_b

    iget-object p2, v0, Lic/o;->c:Lic/p;

    invoke-virtual {p2}, Lic/b;->b()Lic/k;

    move-result-object p2

    :cond_b
    sget-object p4, Lic/M;->GROUP:Lic/M;

    const-string v2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    iget-object v5, v1, Lic/n;->b:Lic/M;

    const/16 v6, 0x40

    if-ne v5, p4, :cond_d

    iget p4, p1, Lcom/google/crypto/tink/shaded/protobuf/i;->i:I

    if-ge p4, v6, :cond_c

    add-int/2addr p4, v4

    iput p4, p1, Lcom/google/crypto/tink/shaded/protobuf/i;->i:I

    invoke-virtual {p2, p1, p3}, Lic/k;->b(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)Lic/k;

    iget p3, v1, Lic/n;->a:I

    shl-int/lit8 p3, p3, 0x3

    or-int/lit8 p3, p3, 0x4

    invoke-virtual {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/i;->a(I)V

    iget p3, p1, Lcom/google/crypto/tink/shaded/protobuf/i;->i:I

    sub-int/2addr p3, v4

    iput p3, p1, Lcom/google/crypto/tink/shaded/protobuf/i;->i:I

    goto :goto_3

    :cond_c
    new-instance p0, Lic/t;

    invoke-direct {p0, v2}, Lic/t;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/i;->p()I

    move-result p4

    iget v5, p1, Lcom/google/crypto/tink/shaded/protobuf/i;->i:I

    if-ge v5, v6, :cond_f

    invoke-virtual {p1, p4}, Lcom/google/crypto/tink/shaded/protobuf/i;->h(I)I

    move-result p4

    iget v2, p1, Lcom/google/crypto/tink/shaded/protobuf/i;->i:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/google/crypto/tink/shaded/protobuf/i;->i:I

    invoke-virtual {p2, p1, p3}, Lic/k;->b(Lcom/google/crypto/tink/shaded/protobuf/i;Lic/g;)Lic/k;

    invoke-virtual {p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/i;->a(I)V

    iget p3, p1, Lcom/google/crypto/tink/shaded/protobuf/i;->i:I

    sub-int/2addr p3, v4

    iput p3, p1, Lcom/google/crypto/tink/shaded/protobuf/i;->i:I

    invoke-virtual {p1, p4}, Lcom/google/crypto/tink/shaded/protobuf/i;->g(I)V

    :goto_3
    invoke-virtual {p2}, Lic/k;->a()Lic/b;

    move-result-object p1

    :goto_4
    iget-boolean p2, v1, Lic/n;->c:Z

    if-eqz p2, :cond_e

    invoke-virtual {v0, p1}, Lic/o;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lic/i;->a(Lic/n;Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    invoke-virtual {v0, p1}, Lic/o;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lic/i;->i(Lic/n;Ljava/lang/Object;)V

    :goto_5
    return v4

    :cond_f
    new-instance p0, Lic/t;

    invoke-direct {p0, v2}, Lic/t;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m(Lic/o;)V
    .locals 0

    iget-object p1, p1, Lic/o;->a:Lic/m;

    invoke-interface {p0}, Lic/x;->getDefaultInstanceForType()Lic/b;

    move-result-object p0

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
