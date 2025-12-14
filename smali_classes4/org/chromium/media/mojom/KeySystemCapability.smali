.class public final Lorg/chromium/media/mojom/KeySystemCapability;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public hwSecureCapability:Lorg/chromium/media/mojom/CdmCapability;

.field public hwSecureCapabilityQueryStatus:Ljava/lang/Integer;

.field public swSecureCapability:Lorg/chromium/media/mojom/CdmCapability;

.field public swSecureCapabilityQueryStatus:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/KeySystemCapability;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/KeySystemCapability;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/KeySystemCapability;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/media/mojom/KeySystemCapability;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/media/mojom/KeySystemCapability;

    invoke-direct {v2, v1}, Lorg/chromium/media/mojom/KeySystemCapability;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/media/mojom/CdmCapability;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/CdmCapability;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/media/mojom/KeySystemCapability;->swSecureCapability:Lorg/chromium/media/mojom/CdmCapability;

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/media/mojom/CdmCapability;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/CdmCapability;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/media/mojom/KeySystemCapability;->hwSecureCapability:Lorg/chromium/media/mojom/CdmCapability;

    const/4 v1, 0x0

    const/16 v4, 0x18

    invoke-virtual {p0, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    const/16 v5, 0x1c

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v2, Lorg/chromium/media/mojom/KeySystemCapability;->swSecureCapabilityQueryStatus:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iput-object v0, v2, Lorg/chromium/media/mojom/KeySystemCapability;->swSecureCapabilityQueryStatus:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lorg/chromium/media/mojom/KeySystemCapability;->hwSecureCapabilityQueryStatus:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    iput-object v0, v2, Lorg/chromium/media/mojom/KeySystemCapability;->hwSecureCapabilityQueryStatus:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/media/mojom/KeySystemCapability;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/media/mojom/KeySystemCapability;->swSecureCapability:Lorg/chromium/media/mojom/CdmCapability;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/KeySystemCapability;->hwSecureCapability:Lorg/chromium/media/mojom/CdmCapability;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/KeySystemCapability;->swSecureCapabilityQueryStatus:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/16 v4, 0x18

    invoke-virtual {p1, v3, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v3, 0x1c

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/media/mojom/KeySystemCapability;->hwSecureCapabilityQueryStatus:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    invoke-virtual {p1, v0, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 p0, 0x20

    invoke-virtual {p1, v1, p0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
