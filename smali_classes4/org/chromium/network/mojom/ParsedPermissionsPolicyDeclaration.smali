.class public final Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allowedOrigins:[Lorg/chromium/network/mojom/OriginWithPossibleWildcards;

.field public feature:I

.field public matchesAllOrigins:Z

.field public matchesOpaqueSrc:Z

.field public reportingEndpoint:Ljava/lang/String;

.field public selfIfMatches:Lorg/chromium/url/internal/mojom/Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->feature:I

    invoke-static {v2}, Lorg/chromium/network/mojom/PermissionsPolicyFeature;->validate(I)V

    iget v2, v1, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->feature:I

    invoke-static {v2}, Lorg/chromium/network/mojom/PermissionsPolicyFeature;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->feature:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->matchesAllOrigins:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->matchesOpaqueSrc:Z

    const/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/network/mojom/OriginWithPossibleWildcards;

    iput-object v6, v1, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->allowedOrigins:[Lorg/chromium/network/mojom/OriginWithPossibleWildcards;

    move v6, v3

    :goto_0
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_1

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->allowedOrigins:[Lorg/chromium/network/mojom/OriginWithPossibleWildcards;

    invoke-static {v7}, Lorg/chromium/network/mojom/OriginWithPossibleWildcards;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/OriginWithPossibleWildcards;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x18

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->selfIfMatches:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->reportingEndpoint:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    sget-object v0, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->feature:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->matchesAllOrigins:Z

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->matchesOpaqueSrc:Z

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->allowedOrigins:[Lorg/chromium/network/mojom/OriginWithPossibleWildcards;

    const/16 v2, 0x10

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v5, -0x1

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v3

    :goto_0
    iget-object v5, p0, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->allowedOrigins:[Lorg/chromium/network/mojom/OriginWithPossibleWildcards;

    array-length v6, v5

    if-ge v2, v6, :cond_1

    aget-object v5, v5, v2

    mul-int/lit8 v6, v2, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->selfIfMatches:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->reportingEndpoint:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    return-void
.end method
