.class public final Lorg/chromium/network/mojom/TrustTokenKeyCommitmentResult;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/TrustTokenKeyCommitmentResult$UnavailableLocalOperationFallback;,
        Lorg/chromium/network/mojom/TrustTokenKeyCommitmentResult$Os;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public batchSize:I

.field public id:I

.field public keys:[Lorg/chromium/network/mojom/TrustTokenVerificationKey;

.field public protocolVersion:I

.field public requestIssuanceLocallyOn:[I

.field public unavailableLocalOperationFallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/TrustTokenKeyCommitmentResult;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/TrustTokenKeyCommitmentResult;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    sget-object v0, Lorg/chromium/network/mojom/TrustTokenKeyCommitmentResult;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/network/mojom/TrustTokenKeyCommitmentResult;->protocolVersion:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/TrustTokenKeyCommitmentResult;->id:I

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/TrustTokenKeyCommitmentResult;->batchSize:I

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/network/mojom/TrustTokenKeyCommitmentResult;->unavailableLocalOperationFallback:I

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/TrustTokenKeyCommitmentResult;->keys:[Lorg/chromium/network/mojom/TrustTokenVerificationKey;

    const/4 v2, -0x1

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v4

    :goto_0
    iget-object v5, p0, Lorg/chromium/network/mojom/TrustTokenKeyCommitmentResult;->keys:[Lorg/chromium/network/mojom/TrustTokenVerificationKey;

    array-length v6, v5

    if-ge v3, v6, :cond_1

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lorg/chromium/network/mojom/TrustTokenKeyCommitmentResult;->requestIssuanceLocallyOn:[I

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    return-void
.end method
