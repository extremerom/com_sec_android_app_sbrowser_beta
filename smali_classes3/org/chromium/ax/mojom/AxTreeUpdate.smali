.class public final Lorg/chromium/ax/mojom/AxTreeUpdate;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public eventFrom:I

.field public eventFromAction:I

.field public eventIntents:[Lorg/chromium/ax/mojom/EventIntent;

.field public hasTreeData:Z

.field public nodeIdToClear:I

.field public nodes:[Lorg/chromium/ax/mojom/AxNodeData;

.field public rootId:I

.field public treeChecks:Lorg/chromium/ax/mojom/AxTreeChecks;

.field public treeData:Lorg/chromium/ax/mojom/AxTreeData;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v2, 0x40

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0, v1}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/ax/mojom/AxTreeUpdate;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lorg/chromium/ax/mojom/AxTreeUpdate;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ax/mojom/AxTreeUpdate;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/ax/mojom/AxTreeUpdate;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/ax/mojom/AxTreeUpdate;

    invoke-direct {v1, v0}, Lorg/chromium/ax/mojom/AxTreeUpdate;-><init>(I)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->hasTreeData:Z

    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->nodeIdToClear:I

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/ax/mojom/AxTreeData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ax/mojom/AxTreeData;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->treeData:Lorg/chromium/ax/mojom/AxTreeData;

    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->rootId:I

    const/16 v4, 0x1c

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->eventFrom:I

    invoke-static {v4}, Lorg/chromium/ax/mojom/EventFrom;->validate(I)V

    iget v4, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->eventFrom:I

    invoke-static {v4}, Lorg/chromium/ax/mojom/EventFrom;->toKnownValue(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->eventFrom:I

    const/16 v4, 0x20

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/ax/mojom/AxNodeData;

    iput-object v7, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->nodes:[Lorg/chromium/ax/mojom/AxNodeData;

    move v7, v3

    :goto_0
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_1

    const/16 v8, 0x8

    invoke-static {v7, v8, v2, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->nodes:[Lorg/chromium/ax/mojom/AxNodeData;

    invoke-static {v8}, Lorg/chromium/ax/mojom/AxNodeData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ax/mojom/AxNodeData;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->eventFromAction:I

    invoke-static {v4}, Lorg/chromium/ax/mojom/Action;->validate(I)V

    iget v4, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->eventFromAction:I

    invoke-static {v4}, Lorg/chromium/ax/mojom/Action;->toKnownValue(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->eventFromAction:I

    const/16 v4, 0x30

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/ax/mojom/EventIntent;

    iput-object v6, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->eventIntents:[Lorg/chromium/ax/mojom/EventIntent;

    move v6, v3

    :goto_1
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_2

    const/16 v7, 0x8

    invoke-static {v6, v7, v2, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->eventIntents:[Lorg/chromium/ax/mojom/EventIntent;

    invoke-static {v7}, Lorg/chromium/ax/mojom/EventIntent;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ax/mojom/EventIntent;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    const/16 v0, 0x38

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ax/mojom/AxTreeChecks;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ax/mojom/AxTreeChecks;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/ax/mojom/AxTreeUpdate;->treeChecks:Lorg/chromium/ax/mojom/AxTreeChecks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    sget-object v0, Lorg/chromium/ax/mojom/AxTreeUpdate;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-boolean v0, p0, Lorg/chromium/ax/mojom/AxTreeUpdate;->hasTreeData:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxTreeUpdate;->nodeIdToClear:I

    const/16 v3, 0xc

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/ax/mojom/AxTreeUpdate;->treeData:Lorg/chromium/ax/mojom/AxTreeData;

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxTreeUpdate;->rootId:I

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxTreeUpdate;->eventFrom:I

    const/16 v3, 0x1c

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/ax/mojom/AxTreeUpdate;->nodes:[Lorg/chromium/ax/mojom/AxNodeData;

    const/4 v3, -0x1

    const/16 v4, 0x20

    if-nez v0, :cond_0

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v2

    :goto_0
    iget-object v5, p0, Lorg/chromium/ax/mojom/AxTreeUpdate;->nodes:[Lorg/chromium/ax/mojom/AxNodeData;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lorg/chromium/ax/mojom/AxTreeUpdate;->eventFromAction:I

    const/16 v4, 0x28

    invoke-virtual {p1, v0, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/ax/mojom/AxTreeUpdate;->eventIntents:[Lorg/chromium/ax/mojom/EventIntent;

    const/16 v4, 0x30

    if-nez v0, :cond_2

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_2
    iget-object v4, p0, Lorg/chromium/ax/mojom/AxTreeUpdate;->eventIntents:[Lorg/chromium/ax/mojom/EventIntent;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v1

    invoke-virtual {v0, v4, v5, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object p0, p0, Lorg/chromium/ax/mojom/AxTreeUpdate;->treeChecks:Lorg/chromium/ax/mojom/AxTreeChecks;

    const/16 v0, 0x38

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
