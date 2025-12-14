.class public final Lorg/chromium/blink/mojom/AiPageContentAttributes;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public anchorData:Lorg/chromium/blink/mojom/AiPageContentAnchorData;

.field public annotatedRoles:[I

.field public attributeType:I

.field public domNodeId:Ljava/lang/Integer;

.field public formControlData:Lorg/chromium/blink/mojom/AiPageContentFormControlData;

.field public formData:Lorg/chromium/blink/mojom/AiPageContentFormData;

.field public geometry:Lorg/chromium/blink/mojom/AiPageContentGeometry;

.field public iframeData:Lorg/chromium/blink/mojom/AiPageContentIframeData;

.field public imageInfo:Lorg/chromium/blink/mojom/AiPageContentImageInfo;

.field public nodeInteractionInfo:Lorg/chromium/blink/mojom/AiPageContentNodeInteractionInfo;

.field public tableData:Lorg/chromium/blink/mojom/AiPageContentTableData;

.field public tableRowData:Lorg/chromium/blink/mojom/AiPageContentTableRowData;

.field public textInfo:Lorg/chromium/blink/mojom/AiPageContentTextInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiPageContentAttributes;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/AiPageContentAttributes;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/AiPageContentAttributes;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->domNodeId:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    iput-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->domNodeId:Ljava/lang/Integer;

    :goto_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->attributeType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AiPageContentAttributeType;->validate(I)V

    iget v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->attributeType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AiPageContentAttributeType;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->attributeType:I

    const/16 v0, 0x18

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AiPageContentGeometry;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiPageContentGeometry;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->geometry:Lorg/chromium/blink/mojom/AiPageContentGeometry;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AiPageContentNodeInteractionInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiPageContentNodeInteractionInfo;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->nodeInteractionInfo:Lorg/chromium/blink/mojom/AiPageContentNodeInteractionInfo;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AiPageContentTextInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiPageContentTextInfo;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->textInfo:Lorg/chromium/blink/mojom/AiPageContentTextInfo;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AiPageContentImageInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiPageContentImageInfo;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->imageInfo:Lorg/chromium/blink/mojom/AiPageContentImageInfo;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AiPageContentAnchorData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiPageContentAnchorData;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->anchorData:Lorg/chromium/blink/mojom/AiPageContentAnchorData;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AiPageContentFormData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiPageContentFormData;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->formData:Lorg/chromium/blink/mojom/AiPageContentFormData;

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AiPageContentFormControlData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiPageContentFormControlData;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->formControlData:Lorg/chromium/blink/mojom/AiPageContentFormControlData;

    const/16 v0, 0x50

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AiPageContentTableData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiPageContentTableData;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->tableData:Lorg/chromium/blink/mojom/AiPageContentTableData;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AiPageContentIframeData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiPageContentIframeData;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->iframeData:Lorg/chromium/blink/mojom/AiPageContentIframeData;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AiPageContentTableRowData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AiPageContentTableRowData;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->tableRowData:Lorg/chromium/blink/mojom/AiPageContentTableRowData;

    const/16 v0, 0x68

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->annotatedRoles:[I

    :goto_1
    iget-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->annotatedRoles:[I

    array-length v1, v0

    if-ge v3, v1, :cond_2

    aget v0, v0, v3

    invoke-static {v0}, Lorg/chromium/blink/mojom/AiPageContentAnnotatedRole;->validate(I)V

    iget-object v0, v2, Lorg/chromium/blink/mojom/AiPageContentAttributes;->annotatedRoles:[I

    aget v1, v0, v3

    invoke-static {v1}, Lorg/chromium/blink/mojom/AiPageContentAnnotatedRole;->toKnownValue(I)I

    move-result v1

    aput v1, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->domNodeId:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

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
    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v3, 0xc

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->attributeType:I

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->geometry:Lorg/chromium/blink/mojom/AiPageContentGeometry;

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->nodeInteractionInfo:Lorg/chromium/blink/mojom/AiPageContentNodeInteractionInfo;

    const/16 v3, 0x20

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->textInfo:Lorg/chromium/blink/mojom/AiPageContentTextInfo;

    const/16 v3, 0x28

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->imageInfo:Lorg/chromium/blink/mojom/AiPageContentImageInfo;

    const/16 v3, 0x30

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->anchorData:Lorg/chromium/blink/mojom/AiPageContentAnchorData;

    const/16 v3, 0x38

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->formData:Lorg/chromium/blink/mojom/AiPageContentFormData;

    const/16 v3, 0x40

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->formControlData:Lorg/chromium/blink/mojom/AiPageContentFormControlData;

    const/16 v3, 0x48

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->tableData:Lorg/chromium/blink/mojom/AiPageContentTableData;

    const/16 v3, 0x50

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->iframeData:Lorg/chromium/blink/mojom/AiPageContentIframeData;

    const/16 v3, 0x58

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->tableRowData:Lorg/chromium/blink/mojom/AiPageContentTableRowData;

    const/16 v3, 0x60

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/AiPageContentAttributes;->annotatedRoles:[I

    const/16 v0, 0x68

    const/4 v2, -0x1

    invoke-virtual {p1, p0, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    return-void
.end method
