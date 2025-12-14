.class public final LV6/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc7/q0;


# direct methods
.method public constructor <init>(Lc7/q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV6/g;->a:Lc7/q0;

    return-void
.end method

.method public static a(Ljava/lang/String;[BLV6/f;)LV6/g;
    .locals 3

    new-instance v0, LV6/g;

    invoke-static {}, Lc7/q0;->t()Lc7/p0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v2, Lc7/q0;

    invoke-static {v2, p0}, Lc7/q0;->m(Lc7/q0;Ljava/lang/String;)V

    array-length p0, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p0

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p1, v1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p1, Lc7/q0;

    invoke-static {p1, p0}, Lc7/q0;->n(Lc7/q0;Lcom/google/crypto/tink/shaded/protobuf/g;)V

    sget-object p0, LV6/e;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    sget-object p0, Lc7/N0;->CRUNCHY:Lc7/N0;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown output prefix type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lc7/N0;->RAW:Lc7/N0;

    goto :goto_0

    :cond_2
    sget-object p0, Lc7/N0;->LEGACY:Lc7/N0;

    goto :goto_0

    :cond_3
    sget-object p0, Lc7/N0;->TINK:Lc7/N0;

    :goto_0
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p1, v1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p1, Lc7/q0;

    invoke-static {p1, p0}, Lc7/q0;->o(Lc7/q0;Lc7/N0;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/q0;

    invoke-direct {v0, p0}, LV6/g;-><init>(Lc7/q0;)V

    return-object v0
.end method
