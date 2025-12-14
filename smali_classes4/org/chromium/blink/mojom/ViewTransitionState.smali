.class public final Lorg/chromium/blink/mojom/ViewTransitionState;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public devicePixelRatio:F

.field public elements:[Lorg/chromium/blink/mojom/ViewTransitionElement;

.field public idToAutoNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public nextElementResourceId:I

.field public snapshotRootSizeAtCapture:Lorg/chromium/gfx/mojom/Size;

.field public subframeSnapshotId:Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;

.field public transitionToken:Lorg/chromium/blink/mojom/ViewTransitionToken;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/ViewTransitionState;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/ViewTransitionState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ViewTransitionState;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/ViewTransitionState;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/ViewTransitionState;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/ViewTransitionState;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/blink/mojom/ViewTransitionElement;

    iput-object v6, v1, Lorg/chromium/blink/mojom/ViewTransitionState;->elements:[Lorg/chromium/blink/mojom/ViewTransitionElement;

    move v6, v2

    :goto_0
    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_1

    const/16 v7, 0x8

    invoke-static {v6, v7, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v1, Lorg/chromium/blink/mojom/ViewTransitionState;->elements:[Lorg/chromium/blink/mojom/ViewTransitionElement;

    invoke-static {v7}, Lorg/chromium/blink/mojom/ViewTransitionElement;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ViewTransitionElement;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/blink/mojom/ViewTransitionToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ViewTransitionToken;

    move-result-object v5

    iput-object v5, v1, Lorg/chromium/blink/mojom/ViewTransitionState;->transitionToken:Lorg/chromium/blink/mojom/ViewTransitionToken;

    const/16 v5, 0x18

    invoke-virtual {p0, v5, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/gfx/mojom/Size;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Size;

    move-result-object v5

    iput-object v5, v1, Lorg/chromium/blink/mojom/ViewTransitionState;->snapshotRootSizeAtCapture:Lorg/chromium/gfx/mojom/Size;

    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readFloat(I)F

    move-result v5

    iput v5, v1, Lorg/chromium/blink/mojom/ViewTransitionState;->devicePixelRatio:F

    const/16 v5, 0x24

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v5

    iput v5, v1, Lorg/chromium/blink/mojom/ViewTransitionState;->nextElementResourceId:I

    const/16 v5, 0x28

    invoke-virtual {p0, v5, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;

    move-result-object v5

    iput-object v5, v1, Lorg/chromium/blink/mojom/ViewTransitionState;->subframeSnapshotId:Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;

    const/16 v5, 0x30

    invoke-virtual {p0, v5, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v5, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v7, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v7, [Ljava/lang/String;

    move v9, v2

    :goto_1
    iget v10, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_2

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v6, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    move v6, v2

    :goto_2
    iget v9, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v9, :cond_3

    const/16 v9, 0x8

    invoke-static {v6, v9, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/chromium/blink/mojom/ViewTransitionState;->idToAutoNameMap:Ljava/util/Map;

    :goto_3
    if-ge v2, v7, :cond_4

    iget-object v0, v1, Lorg/chromium/blink/mojom/ViewTransitionState;->idToAutoNameMap:Ljava/util/Map;

    aget-object v3, v8, v2

    aget-object v4, v5, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 14

    sget-object v0, Lorg/chromium/blink/mojom/ViewTransitionState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionState;->elements:[Lorg/chromium/blink/mojom/ViewTransitionElement;

    const/4 v1, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v9, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v9, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v2, v10

    :goto_0
    iget-object v3, p0, Lorg/chromium/blink/mojom/ViewTransitionState;->elements:[Lorg/chromium/blink/mojom/ViewTransitionElement;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    mul-int/lit8 v4, v2, 0x8

    add-int/2addr v4, v9

    invoke-virtual {v0, v3, v4, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionState;->transitionToken:Lorg/chromium/blink/mojom/ViewTransitionToken;

    const/16 v11, 0x10

    invoke-virtual {p1, v0, v11, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionState;->snapshotRootSizeAtCapture:Lorg/chromium/gfx/mojom/Size;

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/ViewTransitionState;->devicePixelRatio:F

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(FI)V

    iget v0, p0, Lorg/chromium/blink/mojom/ViewTransitionState;->nextElementResourceId:I

    const/16 v2, 0x24

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionState;->subframeSnapshotId:Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;

    const/16 v2, 0x28

    invoke-virtual {p1, v0, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionState;->idToAutoNameMap:Ljava/util/Map;

    const/16 v2, 0x30

    if-nez v0, :cond_2

    invoke-virtual {p1, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_2
    invoke-virtual {p1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionState;->idToAutoNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v12, v0, [Ljava/lang/String;

    new-array v13, v0, [Ljava/lang/String;

    iget-object p0, p0, Lorg/chromium/blink/mojom/ViewTransitionState;->idToAutoNameMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v10

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v12, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0, v9, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    move v7, v10

    :goto_3
    if-ge v7, v0, :cond_4

    aget-object v5, v12, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v9

    move-object v4, p0

    move v6, v10

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v7

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v0, v11, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    move v7, v10

    :goto_4
    if-ge v7, v0, :cond_5

    aget-object v5, v13, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v9

    move-object v4, p0

    move v6, v10

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v7

    goto :goto_4

    :cond_5
    :goto_5
    return-void
.end method
