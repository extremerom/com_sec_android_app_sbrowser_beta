.class public final Lorg/chromium/blink/mojom/InnerTextParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public greedilyAggregateSiblingNodes:Ljava/lang/Boolean;

.field public maxPassages:I

.field public maxWordsPerAggregatePassage:Ljava/lang/Integer;

.field public minWordsPerPassage:Ljava/lang/Integer;

.field public nodeId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/InnerTextParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/InnerTextParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/InnerTextParams;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/InnerTextParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/InnerTextParams;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/InnerTextParams;-><init>(I)V

    const/4 v1, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v2, Lorg/chromium/blink/mojom/InnerTextParams;->nodeId:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    iput-object v0, v2, Lorg/chromium/blink/mojom/InnerTextParams;->nodeId:Ljava/lang/Integer;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v2, Lorg/chromium/blink/mojom/InnerTextParams;->maxWordsPerAggregatePassage:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    iput-object v0, v2, Lorg/chromium/blink/mojom/InnerTextParams;->maxWordsPerAggregatePassage:Ljava/lang/Integer;

    :goto_1
    const/4 v1, 0x2

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Boolean;

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, v2, Lorg/chromium/blink/mojom/InnerTextParams;->greedilyAggregateSiblingNodes:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    iput-object v0, v2, Lorg/chromium/blink/mojom/InnerTextParams;->greedilyAggregateSiblingNodes:Ljava/lang/Boolean;

    :goto_2
    const/4 v1, 0x4

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lorg/chromium/blink/mojom/InnerTextParams;->minWordsPerPassage:Ljava/lang/Integer;

    goto :goto_3

    :cond_4
    iput-object v0, v2, Lorg/chromium/blink/mojom/InnerTextParams;->minWordsPerPassage:Ljava/lang/Integer;

    :goto_3
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/InnerTextParams;->maxPassages:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 6

    sget-object v0, Lorg/chromium/blink/mojom/InnerTextParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/InnerTextParams;->nodeId:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v3, 0xc

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InnerTextParams;->maxWordsPerAggregatePassage:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    invoke-virtual {p1, v3, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InnerTextParams;->greedilyAggregateSiblingNodes:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    const/4 v5, 0x2

    invoke-virtual {p1, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/InnerTextParams;->minWordsPerPassage:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_7
    const/4 v0, 0x4

    invoke-virtual {p1, v1, v4, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v0, 0x18

    invoke-virtual {p1, v2, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget p0, p0, Lorg/chromium/blink/mojom/InnerTextParams;->maxPassages:I

    const/16 v0, 0x14

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
