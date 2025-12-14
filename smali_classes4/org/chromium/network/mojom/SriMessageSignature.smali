.class public final Lorg/chromium/network/mojom/SriMessageSignature;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public components:[Lorg/chromium/network/mojom/SriMessageSignatureComponent;

.field public created:Ljava/lang/Long;

.field public expires:Ljava/lang/Long;

.field public keyid:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public nonce:Ljava/lang/String;

.field public serializedSignatureParams:Ljava/lang/String;

.field public signature:[B

.field public tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x58

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/SriMessageSignature;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/SriMessageSignature;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8

    sget-object v0, Lorg/chromium/network/mojom/SriMessageSignature;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/SriMessageSignature;->label:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/SriMessageSignature;->signature:[B

    const/16 v3, 0x10

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v3, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget-object v0, p0, Lorg/chromium/network/mojom/SriMessageSignature;->components:[Lorg/chromium/network/mojom/SriMessageSignatureComponent;

    const/16 v3, 0x18

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/chromium/network/mojom/SriMessageSignature;->components:[Lorg/chromium/network/mojom/SriMessageSignatureComponent;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v0, v4, v5, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/network/mojom/SriMessageSignature;->created:Ljava/lang/Long;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    const-wide/16 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_3

    :cond_3
    move-wide v6, v4

    :goto_3
    const/16 v0, 0x20

    invoke-virtual {p1, v3, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v3, 0x28

    invoke-virtual {p1, v6, v7, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v3, p0, Lorg/chromium/network/mojom/SriMessageSignature;->expires:Ljava/lang/Long;

    if-eqz v3, :cond_4

    move v6, v1

    goto :goto_4

    :cond_4
    move v6, v2

    :goto_4
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_5
    invoke-virtual {p1, v6, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v0, 0x30

    invoke-virtual {p1, v4, v5, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/network/mojom/SriMessageSignature;->keyid:Ljava/lang/String;

    const/16 v3, 0x38

    invoke-virtual {p1, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/SriMessageSignature;->nonce:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p1, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/SriMessageSignature;->tag:Ljava/lang/String;

    const/16 v3, 0x48

    invoke-virtual {p1, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object p0, p0, Lorg/chromium/network/mojom/SriMessageSignature;->serializedSignatureParams:Ljava/lang/String;

    const/16 v0, 0x50

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    return-void
.end method
