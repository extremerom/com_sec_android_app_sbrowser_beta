.class public final Lorg/chromium/blink/mojom/ViewTransitionElement;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public borderBoxRectInEnclosingLayerCssSpace:Lorg/chromium/gfx/mojom/RectF;

.field public capturedCssProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public capturedRectInLayoutSpace:Lorg/chromium/gfx/mojom/RectF;

.field public classList:[Ljava/lang/String;

.field public containingGroupName:Ljava/lang/String;

.field public layeredBoxProperties:Lorg/chromium/blink/mojom/ViewTransitionElementLayeredBoxProperties;

.field public overflowRectInLayoutSpace:Lorg/chromium/gfx/mojom/RectF;

.field public paintOrder:I

.field public snapshotId:Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;

.field public tagName:Ljava/lang/String;

.field public viewportMatrix:Lorg/chromium/gfx/mojom/Transform;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x60

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/ViewTransitionElement;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/ViewTransitionElement;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x60

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ViewTransitionElement;
    .locals 11

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/ViewTransitionElement;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/ViewTransitionElement;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/ViewTransitionElement;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/ViewTransitionElement;->tagName:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/gfx/mojom/RectF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/RectF;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/ViewTransitionElement;->borderBoxRectInEnclosingLayerCssSpace:Lorg/chromium/gfx/mojom/RectF;

    const/16 v4, 0x18

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/gfx/mojom/Transform;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Transform;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/ViewTransitionElement;->viewportMatrix:Lorg/chromium/gfx/mojom/Transform;

    const/16 v4, 0x20

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/gfx/mojom/RectF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/RectF;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/ViewTransitionElement;->overflowRectInLayoutSpace:Lorg/chromium/gfx/mojom/RectF;

    const/16 v4, 0x28

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/gfx/mojom/RectF;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/RectF;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/ViewTransitionElement;->capturedRectInLayoutSpace:Lorg/chromium/gfx/mojom/RectF;

    const/16 v4, 0x30

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/ViewTransitionElement;->snapshotId:Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;

    const/16 v4, 0x38

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v1, Lorg/chromium/blink/mojom/ViewTransitionElement;->paintOrder:I

    const/16 v4, 0x40

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    const/4 v6, -0x1

    invoke-virtual {v4, v0, v2, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v7

    move v8, v2

    :goto_0
    array-length v9, v7

    if-ge v8, v9, :cond_1

    aget v9, v7, v8

    invoke-static {v9}, Lorg/chromium/blink/mojom/ViewTransitionPropertyId;->validate(I)V

    aget v9, v7, v8

    invoke-static {v9}, Lorg/chromium/blink/mojom/ViewTransitionPropertyId;->toKnownValue(I)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    array-length v4, v7

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v8, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Ljava/lang/String;

    move v9, v2

    :goto_1
    iget v10, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_2

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/blink/mojom/ViewTransitionElement;->capturedCssProperties:Ljava/util/Map;

    move v3, v2

    :goto_2
    array-length v4, v7

    if-ge v3, v4, :cond_3

    iget-object v4, v1, Lorg/chromium/blink/mojom/ViewTransitionElement;->capturedCssProperties:Ljava/util/Map;

    aget v9, v7, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v8, v3

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/16 v3, 0x48

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v1, Lorg/chromium/blink/mojom/ViewTransitionElement;->classList:[Ljava/lang/String;

    move v6, v2

    :goto_3
    iget v7, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_4

    iget-object v7, v1, Lorg/chromium/blink/mojom/ViewTransitionElement;->classList:[Ljava/lang/String;

    const/16 v8, 0x8

    invoke-static {v6, v8, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/16 v0, 0x50

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ViewTransitionElement;->containingGroupName:Ljava/lang/String;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/ViewTransitionElementLayeredBoxProperties;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ViewTransitionElementLayeredBoxProperties;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/ViewTransitionElement;->layeredBoxProperties:Lorg/chromium/blink/mojom/ViewTransitionElementLayeredBoxProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 14

    sget-object v0, Lorg/chromium/blink/mojom/ViewTransitionElement;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->tagName:Ljava/lang/String;

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->borderBoxRectInEnclosingLayerCssSpace:Lorg/chromium/gfx/mojom/RectF;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->viewportMatrix:Lorg/chromium/gfx/mojom/Transform;

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v2, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->overflowRectInLayoutSpace:Lorg/chromium/gfx/mojom/RectF;

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->capturedRectInLayoutSpace:Lorg/chromium/gfx/mojom/RectF;

    const/16 v2, 0x28

    const/4 v10, 0x1

    invoke-virtual {p1, v0, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->snapshotId:Lorg/chromium/viz/mojom/ViewTransitionElementResourceId;

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v2, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->paintOrder:I

    const/16 v2, 0x38

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->capturedCssProperties:Ljava/util/Map;

    const/16 v2, 0x40

    const/4 v11, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->capturedCssProperties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v12

    new-array v2, v12, [I

    new-array v13, v12, [Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->capturedCssProperties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v9

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v13, v4

    add-int/2addr v4, v10

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, v8, v9, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    invoke-virtual {v0, v12, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_1
    if-ge v6, v12, :cond_2

    aget-object v4, v13, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->classList:[Ljava/lang/String;

    const/16 v1, 0x48

    if-nez v0, :cond_3

    invoke-virtual {p1, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_4

    :cond_3
    array-length v0, v0

    invoke-virtual {p1, v0, v1, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v9

    :goto_3
    iget-object v1, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->classList:[Ljava/lang/String;

    array-length v2, v1

    if-ge v6, v2, :cond_4

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->containingGroupName:Ljava/lang/String;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/ViewTransitionElement;->layeredBoxProperties:Lorg/chromium/blink/mojom/ViewTransitionElementLayeredBoxProperties;

    const/16 v0, 0x58

    invoke-virtual {p1, p0, v0, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
