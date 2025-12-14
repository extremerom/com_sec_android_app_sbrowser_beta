.class public final LW6/f;
.super LJ2/i0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xa

    iput v0, p0, LW6/f;->e:I

    new-instance v0, LW6/d;

    const-class v1, LV6/i;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v0}, [LW6/d;

    move-result-object v0

    const-class v1, Lc7/e0;

    invoke-direct {p0, v1, v0}, LJ2/i0;-><init>(Ljava/lang/Class;[LW6/d;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Class;[LW6/d;I)V
    .locals 0

    iput p3, p0, LW6/f;->e:I

    invoke-direct {p0, p1, p2}, LJ2/i0;-><init>(Ljava/lang/Class;[LW6/d;)V

    return-void
.end method

.method public static w(Lc7/h;)V
    .locals 2

    invoke-virtual {p0}, Lc7/h;->n()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lc7/h;->n()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too long"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too short"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x(Lc7/i0;)V
    .locals 3

    invoke-virtual {p0}, Lc7/i0;->o()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_6

    sget-object v0, La7/b;->a:[I

    invoke-virtual {p0}, Lc7/i0;->n()Lc7/b0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "tag size too big"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lc7/i0;->o()I

    move-result p0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Lc7/i0;->o()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p0}, Lc7/i0;->o()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_5

    :goto_0
    return-void

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too small"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final h()Ljava/lang/String;
    .locals 0

    iget p0, p0, LW6/f;->e:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "type.googleapis.com/google.crypto.tink.HmacKey"

    return-object p0

    :pswitch_0
    const-string p0, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    return-object p0

    :pswitch_1
    const-string p0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    return-object p0

    :pswitch_2
    const-string p0, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    return-object p0

    :pswitch_3
    const-string p0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    return-object p0

    :pswitch_4
    const-string p0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    return-object p0

    :pswitch_5
    const-string p0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    return-object p0

    :pswitch_6
    const-string p0, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    return-object p0

    :pswitch_7
    const-string p0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    return-object p0

    :pswitch_8
    const-string p0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    return-object p0

    :pswitch_9
    const-string p0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final l()LF3/f;
    .locals 3

    iget v0, p0, LW6/f;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LW6/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LW6/e;-><init>(LW6/f;BS)V

    return-object v0

    :pswitch_0
    new-instance p0, La7/a;

    const-class v0, Lc7/f;

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, LF3/f;-><init>(ILjava/lang/Object;)V

    return-object p0

    :pswitch_1
    new-instance v0, LW6/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LW6/e;-><init>(LW6/f;BI)V

    return-object v0

    :pswitch_2
    new-instance v0, LW6/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LW6/e;-><init>(LW6/f;BC)V

    return-object v0

    :pswitch_3
    new-instance v0, LW6/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, LW6/e;-><init>(LW6/f;BB)V

    return-object v0

    :pswitch_4
    new-instance v0, LW6/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LW6/e;-><init>(LW6/f;BZ)V

    return-object v0

    :pswitch_5
    new-instance v0, LW6/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LW6/e;-><init>(LW6/f;S)V

    return-object v0

    :pswitch_6
    new-instance v0, LW6/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LW6/e;-><init>(LW6/f;I)V

    return-object v0

    :pswitch_7
    new-instance v0, LW6/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LW6/e;-><init>(LW6/f;C)V

    return-object v0

    :pswitch_8
    new-instance v0, LW6/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LW6/e;-><init>(LW6/f;B)V

    return-object v0

    :pswitch_9
    new-instance v0, LW6/e;

    invoke-direct {v0, p0}, LW6/e;-><init>(LW6/f;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final m()Lc7/l0;
    .locals 0

    iget p0, p0, LW6/f;->e:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lc7/l0;->SYMMETRIC:Lc7/l0;

    return-object p0

    :pswitch_0
    sget-object p0, Lc7/l0;->SYMMETRIC:Lc7/l0;

    return-object p0

    :pswitch_1
    sget-object p0, Lc7/l0;->SYMMETRIC:Lc7/l0;

    return-object p0

    :pswitch_2
    sget-object p0, Lc7/l0;->SYMMETRIC:Lc7/l0;

    return-object p0

    :pswitch_3
    sget-object p0, Lc7/l0;->REMOTE:Lc7/l0;

    return-object p0

    :pswitch_4
    sget-object p0, Lc7/l0;->REMOTE:Lc7/l0;

    return-object p0

    :pswitch_5
    sget-object p0, Lc7/l0;->SYMMETRIC:Lc7/l0;

    return-object p0

    :pswitch_6
    sget-object p0, Lc7/l0;->SYMMETRIC:Lc7/l0;

    return-object p0

    :pswitch_7
    sget-object p0, Lc7/l0;->SYMMETRIC:Lc7/l0;

    return-object p0

    :pswitch_8
    sget-object p0, Lc7/l0;->SYMMETRIC:Lc7/l0;

    return-object p0

    :pswitch_9
    sget-object p0, Lc7/l0;->SYMMETRIC:Lc7/l0;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final q(Lcom/google/crypto/tink/shaded/protobuf/h;)Lcom/google/crypto/tink/shaded/protobuf/a;
    .locals 0

    iget p0, p0, LW6/f;->e:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/e0;->u(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/e0;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/c;->t(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/c;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/O;->r(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/O;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/S0;->r(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/S0;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/K0;->r(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/K0;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/F0;->r(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/F0;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/V;->r(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/V;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/J;->r(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/J;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/D;->r(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/D;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/w;->t(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/w;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/k;->t(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/k;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final v(Lcom/google/crypto/tink/shaded/protobuf/a;)V
    .locals 7

    iget p0, p0, LW6/f;->e:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lc7/e0;

    invoke-virtual {p1}, Lc7/e0;->s()I

    move-result p0

    invoke-static {p0}, Ld7/q;->c(I)V

    invoke-virtual {p1}, Lc7/e0;->q()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    invoke-virtual {p1}, Lc7/e0;->r()Lc7/i0;

    move-result-object p0

    invoke-static {p0}, LW6/f;->x(Lc7/i0;)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "key too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Lc7/c;

    invoke-virtual {p1}, Lc7/c;->r()I

    move-result p0

    invoke-static {p0}, Ld7/q;->c(I)V

    invoke-virtual {p1}, Lc7/c;->p()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lc7/c;->q()Lc7/h;

    move-result-object p0

    invoke-static {p0}, LW6/f;->w(Lc7/h;)V

    return-void

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "AesCmacKey size wrong, must be 32 bytes"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    check-cast p1, Lc7/O;

    invoke-virtual {p1}, Lc7/O;->p()I

    move-result p0

    invoke-static {p0}, Ld7/q;->c(I)V

    invoke-virtual {p1}, Lc7/O;->o()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result p0

    const/16 v0, 0x40

    if-ne p0, v0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid key size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc7/O;->o()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Valid keys must have 64 bytes."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    check-cast p1, Lc7/S0;

    invoke-virtual {p1}, Lc7/S0;->p()I

    move-result p0

    invoke-static {p0}, Ld7/q;->c(I)V

    invoke-virtual {p1}, Lc7/S0;->o()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result p0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid XChaCha20Poly1305Key: incorrect key length"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    check-cast p1, Lc7/K0;

    invoke-virtual {p1}, Lc7/K0;->p()I

    move-result p0

    invoke-static {p0}, Ld7/q;->c(I)V

    return-void

    :pswitch_4
    check-cast p1, Lc7/F0;

    invoke-virtual {p1}, Lc7/F0;->p()I

    move-result p0

    invoke-static {p0}, Ld7/q;->c(I)V

    return-void

    :pswitch_5
    check-cast p1, Lc7/V;

    invoke-virtual {p1}, Lc7/V;->p()I

    move-result p0

    invoke-static {p0}, Ld7/q;->c(I)V

    invoke-virtual {p1}, Lc7/V;->o()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result p0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_4

    return-void

    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid ChaCha20Poly1305Key: incorrect key length"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    check-cast p1, Lc7/J;

    invoke-virtual {p1}, Lc7/J;->p()I

    move-result p0

    invoke-static {p0}, Ld7/q;->c(I)V

    invoke-virtual {p1}, Lc7/J;->o()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result p0

    invoke-static {p0}, Ld7/q;->a(I)V

    return-void

    :pswitch_7
    check-cast p1, Lc7/D;

    invoke-virtual {p1}, Lc7/D;->p()I

    move-result p0

    invoke-static {p0}, Ld7/q;->c(I)V

    invoke-virtual {p1}, Lc7/D;->o()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result p0

    invoke-static {p0}, Ld7/q;->a(I)V

    return-void

    :pswitch_8
    check-cast p1, Lc7/w;

    invoke-virtual {p1}, Lc7/w;->r()I

    move-result p0

    invoke-static {p0}, Ld7/q;->c(I)V

    invoke-virtual {p1}, Lc7/w;->p()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result p0

    invoke-static {p0}, Ld7/q;->a(I)V

    invoke-virtual {p1}, Lc7/w;->q()Lc7/A;

    move-result-object p0

    invoke-virtual {p0}, Lc7/A;->n()I

    move-result p0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_6

    invoke-virtual {p1}, Lc7/w;->q()Lc7/A;

    move-result-object p0

    invoke-virtual {p0}, Lc7/A;->n()I

    move-result p0

    const/16 p1, 0x10

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_0
    return-void

    :pswitch_9
    check-cast p1, Lc7/k;

    invoke-virtual {p1}, Lc7/k;->r()I

    move-result p0

    invoke-static {p0}, Ld7/q;->c(I)V

    new-instance p0, LW6/d;

    const-class v0, Ld7/m;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {p0}, [LW6/d;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x1

    const-string v4, "KeyTypeManager constructed with duplicate factories for primitive "

    if-ge v2, v3, :cond_8

    aget-object v3, p0, v2

    iget-object v5, v3, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v3, LW6/d;->a:Ljava/lang/Class;

    if-nez v5, :cond_7

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, p1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    aget-object p0, p0, v1

    iget-object p0, p0, LW6/d;->a:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p1}, Lc7/k;->p()Lc7/p;

    move-result-object p0

    invoke-virtual {p0}, Lc7/p;->s()I

    move-result v0

    invoke-static {v0}, Ld7/q;->c(I)V

    invoke-virtual {p0}, Lc7/p;->q()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result v0

    invoke-static {v0}, Ld7/q;->a(I)V

    invoke-virtual {p0}, Lc7/p;->r()Lc7/t;

    move-result-object p0

    invoke-virtual {p0}, Lc7/t;->n()I

    move-result v0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_b

    invoke-virtual {p0}, Lc7/t;->n()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_b

    new-instance p0, LW6/d;

    const-class v2, LV6/i;

    const/16 v3, 0xb

    invoke-direct {p0, v2, v3}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {p0}, [LW6/d;

    move-result-object p0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aget-object v3, p0, v1

    iget-object v5, v3, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v3, LW6/d;->a:Ljava/lang/Class;

    if-nez v5, :cond_a

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object p0, p0, v1

    iget-object p0, p0, LW6/d;->a:Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p1}, Lc7/k;->q()Lc7/e0;

    move-result-object p0

    invoke-virtual {p0}, Lc7/e0;->s()I

    move-result p1

    invoke-static {p1}, Ld7/q;->c(I)V

    invoke-virtual {p0}, Lc7/e0;->q()Lcom/google/crypto/tink/shaded/protobuf/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result p1

    if-lt p1, v0, :cond_9

    invoke-virtual {p0}, Lc7/e0;->r()Lc7/i0;

    move-result-object p0

    invoke-static {p0}, LW6/f;->x(Lc7/i0;)V

    return-void

    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "key too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, p1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid IV size"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
