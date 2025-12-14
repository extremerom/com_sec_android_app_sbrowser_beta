.class public final Lorg/chromium/schema_org/mojom/Values;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/schema_org/mojom/Values$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBoolValues:[Z

.field private mEntityValues:[Lorg/chromium/schema_org/mojom/Entity;

.field private mLongValues:[J

.field private mStringValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/schema_org/mojom/Values;
    .locals 7

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/schema_org/mojom/Values;

    invoke-direct {v1}, Lorg/chromium/schema_org/mojom/Values;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v2, -0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    const/4 v5, 0x1

    if-eq v0, v5, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p1

    iget v0, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Lorg/chromium/schema_org/mojom/Entity;

    iput-object v0, v1, Lorg/chromium/schema_org/mojom/Values;->mEntityValues:[Lorg/chromium/schema_org/mojom/Entity;

    move v0, v4

    :goto_0
    iget v2, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v2, :cond_2

    const/16 v2, 0x8

    invoke-static {v0, v2, v3, p0, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    iget-object v6, v1, Lorg/chromium/schema_org/mojom/Values;->mEntityValues:[Lorg/chromium/schema_org/mojom/Entity;

    invoke-static {v2}, Lorg/chromium/schema_org/mojom/Entity;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/schema_org/mojom/Entity;

    move-result-object v2

    aput-object v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v5, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_2

    :cond_3
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p1

    iget v0, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v1, Lorg/chromium/schema_org/mojom/Values;->mStringValues:[Ljava/lang/String;

    move v0, v4

    :goto_1
    iget v2, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v2, :cond_4

    iget-object v2, v1, Lorg/chromium/schema_org/mojom/Values;->mStringValues:[Ljava/lang/String;

    const/16 v6, 0x8

    invoke-static {v0, v6, v3, p0, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iput v5, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_2

    :cond_5
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readLongs(III)[J

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/schema_org/mojom/Values;->mLongValues:[J

    iput v5, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_2

    :cond_6
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBooleans(III)[Z

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/schema_org/mojom/Values;->mBoolValues:[Z

    iput v4, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_2
    return-object v1
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;I)V
    .locals 11

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    const/4 v1, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/chromium/schema_org/mojom/Values;->mEntityValues:[Lorg/chromium/schema_org/mojom/Entity;

    if-nez v0, :cond_1

    add-int/2addr p2, v10

    invoke-virtual {p1, p2, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_2

    :cond_1
    array-length v0, v0

    add-int/2addr p2, v10

    invoke-virtual {p1, v0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move p2, v9

    :goto_0
    iget-object v0, p0, Lorg/chromium/schema_org/mojom/Values;->mEntityValues:[Lorg/chromium/schema_org/mojom/Entity;

    array-length v1, v0

    if-ge p2, v1, :cond_6

    aget-object v0, v0, p2

    mul-int/lit8 v1, p2, 0x8

    add-int/2addr v1, v10

    invoke-virtual {p1, v0, v1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/chromium/schema_org/mojom/Values;->mStringValues:[Ljava/lang/String;

    if-nez v0, :cond_3

    add-int/2addr p2, v10

    invoke-virtual {p1, p2, v9}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_2

    :cond_3
    array-length v0, v0

    add-int/2addr p2, v10

    invoke-virtual {p1, v0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v7, v9

    :goto_1
    iget-object p2, p0, Lorg/chromium/schema_org/mojom/Values;->mStringValues:[Ljava/lang/String;

    array-length v0, p2

    if-ge v7, v0, :cond_6

    aget-object v5, p2, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v10

    move-object v4, p1

    move v6, v9

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v7

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lorg/chromium/schema_org/mojom/Values;->mLongValues:[J

    add-int/2addr p2, v10

    invoke-virtual {p1, p0, p2, v9, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode([JIII)V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lorg/chromium/schema_org/mojom/Values;->mBoolValues:[Z

    add-int/2addr p2, v10

    invoke-virtual {p1, p0, p2, v9, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode([ZIII)V

    :cond_6
    :goto_2
    return-void
.end method
