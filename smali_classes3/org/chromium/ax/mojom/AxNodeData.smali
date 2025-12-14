.class public final Lorg/chromium/ax/mojom/AxNodeData;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public actions:J

.field public boolAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public childIds:[I

.field public floatAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public htmlAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public intAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public intlistAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field public relativeBounds:Lorg/chromium/ax/mojom/AxRelativeBounds;

.field public role:I

.field public state:I

.field public stringAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public stringlistAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/ax/mojom/AxNodeData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/ax/mojom/AxNodeData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x68

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ax/mojom/AxNodeData;
    .locals 15

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/ax/mojom/AxNodeData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/ax/mojom/AxNodeData;

    invoke-direct {v1, v0}, Lorg/chromium/ax/mojom/AxNodeData;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxNodeData;->id:I

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxNodeData;->role:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/Role;->validate(I)V

    iget v2, v1, Lorg/chromium/ax/mojom/AxNodeData;->role:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/Role;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxNodeData;->role:I

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/ax/mojom/AxNodeData;->state:I

    const/16 v3, 0x18

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lorg/chromium/ax/mojom/AxNodeData;->actions:J

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    const/4 v5, -0x1

    invoke-virtual {v3, v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v6

    move v7, v4

    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_1

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/ax/mojom/StringAttribute;->validate(I)V

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/ax/mojom/StringAttribute;->toKnownValue(I)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_1
    invoke-virtual {v3, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    array-length v7, v6

    invoke-virtual {v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Ljava/lang/String;

    move v9, v4

    :goto_1
    iget v10, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_2

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v3, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/ax/mojom/AxNodeData;->stringAttributes:Ljava/util/Map;

    move v3, v4

    :goto_2
    array-length v7, v6

    if-ge v3, v7, :cond_3

    iget-object v7, v1, Lorg/chromium/ax/mojom/AxNodeData;->stringAttributes:Ljava/util/Map;

    aget v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v8, v3

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/16 v3, 0x28

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v6

    move v7, v4

    :goto_3
    array-length v8, v6

    if-ge v7, v8, :cond_4

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/ax/mojom/IntAttribute;->validate(I)V

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/ax/mojom/IntAttribute;->toKnownValue(I)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    array-length v7, v6

    invoke-virtual {v3, v2, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v3

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lorg/chromium/ax/mojom/AxNodeData;->intAttributes:Ljava/util/Map;

    move v7, v4

    :goto_4
    array-length v8, v6

    if-ge v7, v8, :cond_5

    iget-object v8, v1, Lorg/chromium/ax/mojom/AxNodeData;->intAttributes:Ljava/util/Map;

    aget v9, v6, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget v10, v3, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    const/16 v3, 0x30

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v6

    move v7, v4

    :goto_5
    array-length v8, v6

    if-ge v7, v8, :cond_6

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/ax/mojom/FloatAttribute;->validate(I)V

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/ax/mojom/FloatAttribute;->toKnownValue(I)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    array-length v7, v6

    invoke-virtual {v3, v2, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readFloats(III)[F

    move-result-object v3

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lorg/chromium/ax/mojom/AxNodeData;->floatAttributes:Ljava/util/Map;

    move v7, v4

    :goto_6
    array-length v8, v6

    if-ge v7, v8, :cond_7

    iget-object v8, v1, Lorg/chromium/ax/mojom/AxNodeData;->floatAttributes:Ljava/util/Map;

    aget v9, v6, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget v10, v3, v7

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    const/16 v3, 0x38

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v6

    move v7, v4

    :goto_7
    array-length v8, v6

    if-ge v7, v8, :cond_8

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/ax/mojom/BoolAttribute;->validate(I)V

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/ax/mojom/BoolAttribute;->toKnownValue(I)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_8
    array-length v7, v6

    invoke-virtual {v3, v2, v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBooleans(III)[Z

    move-result-object v3

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v1, Lorg/chromium/ax/mojom/AxNodeData;->boolAttributes:Ljava/util/Map;

    move v7, v4

    :goto_8
    array-length v8, v6

    if-ge v7, v8, :cond_9

    iget-object v8, v1, Lorg/chromium/ax/mojom/AxNodeData;->boolAttributes:Ljava/util/Map;

    aget v9, v6, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-boolean v10, v3, v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_9
    const/16 v3, 0x40

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v6

    move v7, v4

    :goto_9
    array-length v8, v6

    if-ge v7, v8, :cond_a

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/ax/mojom/IntListAttribute;->validate(I)V

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/ax/mojom/IntListAttribute;->toKnownValue(I)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {v3, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    array-length v7, v6

    invoke-virtual {v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [[I

    move v9, v4

    :goto_a
    iget v10, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_b

    mul-int/lit8 v10, v9, 0x8

    add-int/2addr v10, v0

    invoke-virtual {v3, v10, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_b
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/ax/mojom/AxNodeData;->intlistAttributes:Ljava/util/Map;

    move v3, v4

    :goto_b
    array-length v7, v6

    if-ge v3, v7, :cond_c

    iget-object v7, v1, Lorg/chromium/ax/mojom/AxNodeData;->intlistAttributes:Ljava/util/Map;

    aget v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v8, v3

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_c
    const/16 v3, 0x48

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v6

    move v7, v4

    :goto_c
    array-length v8, v6

    if-ge v7, v8, :cond_d

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/ax/mojom/StringListAttribute;->validate(I)V

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/ax/mojom/StringListAttribute;->toKnownValue(I)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_d
    invoke-virtual {v3, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    array-length v7, v6

    invoke-virtual {v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [[Ljava/lang/String;

    move v9, v4

    :goto_d
    iget v10, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_f

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v3, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v11

    iget v12, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v12, v12, [Ljava/lang/String;

    aput-object v12, v8, v9

    move v12, v4

    :goto_e
    iget v13, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v12, v13, :cond_e

    aget-object v13, v8, v9

    const/16 v14, 0x8

    invoke-static {v12, v14, v0, v10, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_f
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/ax/mojom/AxNodeData;->stringlistAttributes:Ljava/util/Map;

    move v3, v4

    :goto_f
    array-length v7, v6

    if-ge v3, v7, :cond_10

    iget-object v7, v1, Lorg/chromium/ax/mojom/AxNodeData;->stringlistAttributes:Ljava/util/Map;

    aget v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v8, v3

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_10
    const/16 v3, 0x50

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v9, v8, [Ljava/lang/String;

    move v10, v4

    :goto_10
    iget v11, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v10, v11, :cond_11

    const/16 v11, 0x8

    invoke-static {v10, v11, v0, v6, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_11
    invoke-virtual {v3, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v3

    iget v6, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Ljava/lang/String;

    move v7, v4

    :goto_11
    iget v10, v3, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v10, :cond_12

    const/16 v10, 0x8

    invoke-static {v7, v10, v0, v2, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/chromium/ax/mojom/AxNodeData;->htmlAttributes:Ljava/util/Map;

    move v0, v4

    :goto_12
    if-ge v0, v8, :cond_13

    iget-object v2, v1, Lorg/chromium/ax/mojom/AxNodeData;->htmlAttributes:Ljava/util/Map;

    aget-object v3, v9, v0

    aget-object v7, v6, v0

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_13
    const/16 v0, 0x58

    invoke-virtual {p0, v0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/ax/mojom/AxNodeData;->childIds:[I

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ax/mojom/AxRelativeBounds;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ax/mojom/AxRelativeBounds;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/ax/mojom/AxNodeData;->relativeBounds:Lorg/chromium/ax/mojom/AxRelativeBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_13
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/ax/mojom/AxNodeData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget v2, v0, Lorg/chromium/ax/mojom/AxNodeData;->id:I

    const/16 v10, 0x8

    invoke-virtual {v1, v2, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/ax/mojom/AxNodeData;->role:I

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/ax/mojom/AxNodeData;->state:I

    const/16 v11, 0x10

    invoke-virtual {v1, v2, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-wide v2, v0, Lorg/chromium/ax/mojom/AxNodeData;->actions:J

    const/16 v4, 0x18

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v2, v0, Lorg/chromium/ax/mojom/AxNodeData;->stringAttributes:Ljava/util/Map;

    const/16 v3, 0x20

    const/4 v12, -0x1

    const/4 v13, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/ax/mojom/AxNodeData;->stringAttributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v14

    new-array v3, v14, [I

    new-array v15, v14, [Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/ax/mojom/AxNodeData;->stringAttributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v13

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v15, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3, v10, v13, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    invoke-virtual {v2, v14, v11, v12}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v8, v13

    :goto_1
    if-ge v8, v14, :cond_2

    aget-object v6, v15, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    move v4, v10

    move-object v5, v2

    move v7, v13

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v2, v0, Lorg/chromium/ax/mojom/AxNodeData;->intAttributes:Ljava/util/Map;

    const/16 v3, 0x28

    if-nez v2, :cond_3

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_4

    :cond_3
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/ax/mojom/AxNodeData;->intAttributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v4, v3, [I

    new-array v3, v3, [I

    iget-object v5, v0, Lorg/chromium/ax/mojom/AxNodeData;->intAttributes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v13

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v4, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v4, v10, v13, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    invoke-virtual {v2, v3, v11, v13, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    :goto_4
    iget-object v2, v0, Lorg/chromium/ax/mojom/AxNodeData;->floatAttributes:Ljava/util/Map;

    const/16 v3, 0x30

    if-nez v2, :cond_5

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_6

    :cond_5
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/ax/mojom/AxNodeData;->floatAttributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v4, v3, [I

    new-array v3, v3, [F

    iget-object v5, v0, Lorg/chromium/ax/mojom/AxNodeData;->floatAttributes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v13

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v4, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v2, v4, v10, v13, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    invoke-virtual {v2, v3, v11, v13, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode([FIII)V

    :goto_6
    iget-object v2, v0, Lorg/chromium/ax/mojom/AxNodeData;->boolAttributes:Ljava/util/Map;

    const/16 v3, 0x38

    if-nez v2, :cond_7

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_8

    :cond_7
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/ax/mojom/AxNodeData;->boolAttributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v4, v3, [I

    new-array v3, v3, [Z

    iget-object v5, v0, Lorg/chromium/ax/mojom/AxNodeData;->boolAttributes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v13

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v4, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    aput-boolean v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {v2, v4, v10, v13, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    invoke-virtual {v2, v3, v11, v13, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode([ZIII)V

    :goto_8
    iget-object v2, v0, Lorg/chromium/ax/mojom/AxNodeData;->intlistAttributes:Ljava/util/Map;

    const/16 v3, 0x40

    if-nez v2, :cond_9

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_b

    :cond_9
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/ax/mojom/AxNodeData;->intlistAttributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v4, v3, [I

    new-array v5, v3, [[I

    iget-object v6, v0, Lorg/chromium/ax/mojom/AxNodeData;->intlistAttributes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v13

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v4, v7

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_a
    invoke-virtual {v2, v4, v10, v13, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    invoke-virtual {v2, v3, v11, v12}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v4, v13

    :goto_a
    if-ge v4, v3, :cond_b

    aget-object v6, v5, v4

    mul-int/lit8 v7, v4, 0x8

    add-int/2addr v7, v10

    invoke-virtual {v2, v6, v7, v13, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    iget-object v2, v0, Lorg/chromium/ax/mojom/AxNodeData;->stringlistAttributes:Ljava/util/Map;

    const/16 v3, 0x48

    if-nez v2, :cond_c

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_10

    :cond_c
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/ax/mojom/AxNodeData;->stringlistAttributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v14

    new-array v3, v14, [I

    new-array v15, v14, [[Ljava/lang/String;

    iget-object v4, v0, Lorg/chromium/ax/mojom/AxNodeData;->stringlistAttributes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v13

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aput-object v6, v15, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_d
    invoke-virtual {v2, v3, v10, v13, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    invoke-virtual {v2, v14, v11, v12}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v9, v13

    :goto_d
    if-ge v9, v14, :cond_10

    aget-object v3, v15, v9

    if-nez v3, :cond_f

    mul-int/lit8 v3, v9, 0x8

    add-int/2addr v3, v10

    invoke-virtual {v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    :cond_e
    move/from16 v18, v9

    goto :goto_f

    :cond_f
    array-length v3, v3

    mul-int/lit8 v4, v9, 0x8

    add-int/2addr v4, v10

    invoke-virtual {v2, v3, v4, v12}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v8, v13

    :goto_e
    aget-object v3, v15, v9

    array-length v4, v3

    if-ge v8, v4, :cond_e

    aget-object v6, v3, v8

    mul-int/lit8 v3, v8, 0x8

    const/16 v17, 0x1

    move v4, v10

    move-object/from16 v5, v16

    move v7, v13

    move/from16 v18, v9

    move/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    move/from16 v9, v18

    goto :goto_e

    :goto_f
    add-int/lit8 v9, v18, 0x1

    goto :goto_d

    :cond_10
    :goto_10
    iget-object v2, v0, Lorg/chromium/ax/mojom/AxNodeData;->htmlAttributes:Ljava/util/Map;

    const/16 v3, 0x50

    if-nez v2, :cond_11

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_14

    :cond_11
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/ax/mojom/AxNodeData;->htmlAttributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v14

    new-array v15, v14, [Ljava/lang/String;

    new-array v9, v14, [Ljava/lang/String;

    iget-object v3, v0, Lorg/chromium/ax/mojom/AxNodeData;->htmlAttributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v13

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v15, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_12
    invoke-virtual {v2, v14, v10, v12}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v8, v13

    :goto_12
    if-ge v8, v14, :cond_13

    aget-object v6, v15, v8

    mul-int/lit8 v3, v8, 0x8

    const/16 v17, 0x1

    move v4, v10

    move-object/from16 v5, v16

    move v7, v13

    move-object/from16 v18, v9

    move/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    move-object/from16 v9, v18

    goto :goto_12

    :cond_13
    move-object/from16 v18, v9

    invoke-virtual {v2, v14, v11, v12}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v8, v13

    :goto_13
    if-ge v8, v14, :cond_14

    aget-object v6, v18, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    move v4, v10

    move-object v5, v2

    move v7, v13

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    goto :goto_13

    :cond_14
    :goto_14
    iget-object v2, v0, Lorg/chromium/ax/mojom/AxNodeData;->childIds:[I

    const/16 v3, 0x58

    invoke-virtual {v1, v2, v3, v13, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, v0, Lorg/chromium/ax/mojom/AxNodeData;->relativeBounds:Lorg/chromium/ax/mojom/AxRelativeBounds;

    const/16 v2, 0x60

    invoke-virtual {v1, v0, v2, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
