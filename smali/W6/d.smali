.class public final LW6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    iput p2, p0, LW6/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW6/d;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/crypto/tink/shaded/protobuf/a;)Ljava/lang/Object;
    .locals 13

    iget p0, p0, LW6/d;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lc7/e0;

    invoke-virtual {p1}, Lc7/e0;->r()Lc7/i0;

    move-result-object p0

    invoke-virtual {p0}, Lc7/i0;->n()Lc7/b0;

    move-result-object p0

    invoke-virtual {p1}, Lc7/e0;->q()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->p()[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HMAC"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lc7/e0;->r()Lc7/i0;

    move-result-object p1

    invoke-virtual {p1}, Lc7/i0;->o()I

    move-result p1

    sget-object v0, La7/b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    new-instance p0, Ld7/o;

    new-instance v0, LZ4/i;

    const-string v2, "HMACSHA512"

    invoke-direct {v0, v2, v1}, LZ4/i;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    invoke-direct {p0, v0, p1}, Ld7/o;-><init>(Lb7/a;I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "unknown hash"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ld7/o;

    new-instance v0, LZ4/i;

    const-string v2, "HMACSHA256"

    invoke-direct {v0, v2, v1}, LZ4/i;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    invoke-direct {p0, v0, p1}, Ld7/o;-><init>(Lb7/a;I)V

    goto :goto_0

    :cond_2
    new-instance p0, Ld7/o;

    new-instance v0, LZ4/i;

    const-string v2, "HMACSHA1"

    invoke-direct {v0, v2, v1}, LZ4/i;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    invoke-direct {p0, v0, p1}, Ld7/o;-><init>(Lb7/a;I)V

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p1, Lc7/c;

    new-instance p0, Ld7/o;

    new-instance v0, LZ3/x;

    invoke-virtual {p1}, Lc7/c;->p()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/h;->p()[B

    move-result-object v1

    invoke-direct {v0, v1}, LZ3/x;-><init>([B)V

    invoke-virtual {p1}, Lc7/c;->q()Lc7/h;

    move-result-object p1

    invoke-virtual {p1}, Lc7/h;->n()I

    move-result p1

    invoke-direct {p0, v0, p1}, Ld7/o;-><init>(Lb7/a;I)V

    return-object p0

    :pswitch_1
    check-cast p1, Lc7/O;

    new-instance p0, Ld7/d;

    invoke-virtual {p1}, Lc7/O;->o()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->p()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ld7/d;-><init>([B)V

    return-object p0

    :pswitch_2
    check-cast p1, Lc7/S0;

    new-instance p0, Ld7/i;

    invoke-virtual {p1}, Lc7/S0;->o()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->p()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ld7/i;-><init>([BI)V

    return-object p0

    :pswitch_3
    check-cast p1, Lc7/K0;

    invoke-virtual {p1}, Lc7/K0;->o()Lc7/M0;

    move-result-object p0

    invoke-virtual {p0}, Lc7/M0;->o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LV6/h;->a(Ljava/lang/String;)LZ6/a;

    move-result-object v0

    invoke-virtual {v0, p0}, LZ6/a;->b(Ljava/lang/String;)LW6/b;

    move-result-object p0

    new-instance v0, LW6/g;

    invoke-virtual {p1}, Lc7/K0;->o()Lc7/M0;

    move-result-object p1

    invoke-virtual {p1}, Lc7/M0;->n()Lc7/q0;

    move-result-object p1

    invoke-direct {v0, p1, p0}, LW6/g;-><init>(Lc7/q0;LW6/b;)V

    return-object v0

    :pswitch_4
    check-cast p1, Lc7/F0;

    invoke-virtual {p1}, Lc7/F0;->o()Lc7/H0;

    move-result-object p0

    invoke-virtual {p0}, Lc7/H0;->n()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LV6/h;->a(Ljava/lang/String;)LZ6/a;

    move-result-object p1

    invoke-virtual {p1, p0}, LZ6/a;->b(Ljava/lang/String;)LW6/b;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lc7/V;

    new-instance p0, Ld7/i;

    invoke-virtual {p1}, Lc7/V;->o()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->p()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ld7/i;-><init>([BI)V

    return-object p0

    :pswitch_6
    check-cast p1, Lc7/J;

    new-instance p0, LX6/a;

    invoke-virtual {p1}, Lc7/J;->o()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->p()[B

    move-result-object p1

    invoke-direct {p0, p1}, LX6/a;-><init>([B)V

    return-object p0

    :pswitch_7
    check-cast p1, Lc7/D;

    new-instance p0, Ld7/c;

    invoke-virtual {p1}, Lc7/D;->o()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->p()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ld7/c;-><init>([B)V

    return-object p0

    :pswitch_8
    check-cast p1, Lc7/w;

    new-instance p0, Ld7/b;

    invoke-virtual {p1}, Lc7/w;->p()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->p()[B

    move-result-object v0

    invoke-virtual {p1}, Lc7/w;->q()Lc7/A;

    move-result-object p1

    invoke-virtual {p1}, Lc7/A;->n()I

    move-result p1

    invoke-direct {p0, v0, p1}, Ld7/b;-><init>([BI)V

    return-object p0

    :pswitch_9
    check-cast p1, Lc7/p;

    new-instance p0, Ld7/a;

    invoke-virtual {p1}, Lc7/p;->q()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->p()[B

    move-result-object v0

    invoke-virtual {p1}, Lc7/p;->r()Lc7/t;

    move-result-object p1

    invoke-virtual {p1}, Lc7/t;->n()I

    move-result p1

    invoke-direct {p0, v0, p1}, Ld7/a;-><init>([BI)V

    return-object p0

    :pswitch_a
    check-cast p1, Lc7/k;

    new-instance p0, Ld7/j;

    new-instance v0, LW6/d;

    const-class v1, Ld7/m;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v0}, [LW6/d;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    const-string v6, "KeyTypeManager constructed with duplicate factories for primitive "

    if-ge v5, v3, :cond_4

    aget-object v7, v0, v5

    iget-object v8, v7, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v7, LW6/d;->a:Ljava/lang/Class;

    if-nez v8, :cond_3

    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, p1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    array-length v3, v0

    if-lez v3, :cond_5

    aget-object v0, v0, v4

    iget-object v0, v0, LW6/d;->a:Ljava/lang/Class;

    :cond_5
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lc7/k;->p()Lc7/p;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW6/d;

    const-string v3, " not supported."

    const-string v5, "Requested primitive class "

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, LW6/d;->a(Lcom/google/crypto/tink/shaded/protobuf/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld7/m;

    new-instance v1, LW6/d;

    const-class v2, LV6/i;

    const/16 v7, 0xb

    invoke-direct {v1, v2, v7}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v1}, [LW6/d;

    move-result-object v1

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    array-length v8, v1

    move v9, v4

    :goto_2
    if-ge v9, v8, :cond_7

    aget-object v10, v1, v9

    iget-object v11, v10, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    iget-object v12, v10, LW6/d;->a:Ljava/lang/Class;

    if-nez v11, :cond_6

    invoke-virtual {v7, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, p1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    array-length v6, v1

    if-lez v6, :cond_8

    aget-object v1, v1, v4

    iget-object v1, v1, LW6/d;->a:Ljava/lang/Class;

    :cond_8
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lc7/k;->q()Lc7/e0;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW6/d;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v4}, LW6/d;->a(Lcom/google/crypto/tink/shaded/protobuf/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV6/i;

    invoke-virtual {p1}, Lc7/k;->q()Lc7/e0;

    move-result-object p1

    invoke-virtual {p1}, Lc7/e0;->r()Lc7/i0;

    move-result-object p1

    invoke-virtual {p1}, Lc7/i0;->o()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Ld7/j;-><init>(Ld7/m;LV6/i;I)V

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
