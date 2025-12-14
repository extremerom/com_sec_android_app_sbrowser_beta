.class public final Lorg/chromium/blink/mojom/NotificationData;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field public static final MAXIMUM_ACTIONS:J = 0x2L

.field public static final MAXIMUM_DEVELOPER_DATA_SIZE:J = 0x100000L

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public actions:[Lorg/chromium/blink/mojom/NotificationAction;

.field public badge:Lorg/chromium/url/mojom/Url;

.field public body:Lorg/chromium/mojo_base/mojom/String16;

.field public data:[B

.field public direction:I

.field public icon:Lorg/chromium/url/mojom/Url;

.field public image:Lorg/chromium/url/mojom/Url;

.field public lang:Ljava/lang/String;

.field public renotify:Z

.field public requireInteraction:Z

.field public scenario:I

.field public showTriggerTimestamp:Lorg/chromium/mojo_base/mojom/Time;

.field public silent:Z

.field public tag:Ljava/lang/String;

.field public timestamp:D

.field public title:Lorg/chromium/mojo_base/mojom/String16;

.field public vibrationPattern:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x78

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/NotificationData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/NotificationData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/16 v0, 0x78

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/blink/mojom/NotificationData;->direction:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/blink/mojom/NotificationData;->timestamp:D

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/NotificationData;->renotify:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/NotificationData;->silent:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/NotificationData;->requireInteraction:Z

    iput p1, p0, Lorg/chromium/blink/mojom/NotificationData;->scenario:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/NotificationData;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/NotificationData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/NotificationData;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/NotificationData;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/NotificationData;->title:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/blink/mojom/NotificationData;->direction:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/NotificationDirection;->validate(I)V

    iget v4, v2, Lorg/chromium/blink/mojom/NotificationData;->direction:I

    invoke-static {v4}, Lorg/chromium/blink/mojom/NotificationDirection;->toKnownValue(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/blink/mojom/NotificationData;->direction:I

    const/16 v4, 0x14

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v2, Lorg/chromium/blink/mojom/NotificationData;->renotify:Z

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    iput-boolean v6, v2, Lorg/chromium/blink/mojom/NotificationData;->silent:Z

    const/4 v6, 0x2

    invoke-virtual {p0, v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/blink/mojom/NotificationData;->requireInteraction:Z

    const/16 v4, 0x18

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/NotificationData;->lang:Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/NotificationData;->body:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v4, 0x28

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/NotificationData;->tag:Ljava/lang/String;

    const/16 v4, 0x30

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/NotificationData;->image:Lorg/chromium/url/mojom/Url;

    const/16 v4, 0x38

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/NotificationData;->icon:Lorg/chromium/url/mojom/Url;

    const/16 v4, 0x40

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/NotificationData;->badge:Lorg/chromium/url/mojom/Url;

    const/16 v4, 0x48

    const/4 v6, -0x1

    invoke-virtual {p0, v4, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/NotificationData;->vibrationPattern:[I

    const/16 v4, 0x50

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v7

    iput-wide v7, v2, Lorg/chromium/blink/mojom/NotificationData;->timestamp:D

    const/16 v4, 0x58

    invoke-virtual {p0, v4, v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/NotificationData;->data:[B

    const/16 v4, 0x60

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_1

    iput-object v0, v2, Lorg/chromium/blink/mojom/NotificationData;->actions:[Lorg/chromium/blink/mojom/NotificationAction;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v6, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/blink/mojom/NotificationAction;

    iput-object v6, v2, Lorg/chromium/blink/mojom/NotificationData;->actions:[Lorg/chromium/blink/mojom/NotificationAction;

    move v6, v3

    :goto_0
    iget v7, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v7, :cond_2

    const/16 v7, 0x8

    invoke-static {v6, v7, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    iget-object v8, v2, Lorg/chromium/blink/mojom/NotificationData;->actions:[Lorg/chromium/blink/mojom/NotificationAction;

    invoke-static {v7}, Lorg/chromium/blink/mojom/NotificationAction;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/NotificationAction;

    move-result-object v7

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v0, 0x68

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/NotificationData;->showTriggerTimestamp:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/NotificationData;->scenario:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/NotificationScenario;->validate(I)V

    iget v0, v2, Lorg/chromium/blink/mojom/NotificationData;->scenario:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/NotificationScenario;->toKnownValue(I)I

    move-result v0

    iput v0, v2, Lorg/chromium/blink/mojom/NotificationData;->scenario:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8

    sget-object v0, Lorg/chromium/blink/mojom/NotificationData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/NotificationData;->title:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/NotificationData;->direction:I

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/NotificationData;->renotify:Z

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/NotificationData;->silent:Z

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/NotificationData;->requireInteraction:Z

    const/4 v5, 0x2

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/NotificationData;->lang:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/NotificationData;->body:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v3, 0x20

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/NotificationData;->tag:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/NotificationData;->image:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x30

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/NotificationData;->icon:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x38

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/NotificationData;->badge:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x40

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/NotificationData;->vibrationPattern:[I

    const/16 v3, 0x48

    const/4 v5, -0x1

    invoke-virtual {p1, v0, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-wide v6, p0, Lorg/chromium/blink/mojom/NotificationData;->timestamp:D

    const/16 v0, 0x50

    invoke-virtual {p1, v6, v7, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/NotificationData;->data:[B

    const/16 v3, 0x58

    invoke-virtual {p1, v0, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/NotificationData;->actions:[Lorg/chromium/blink/mojom/NotificationAction;

    const/16 v3, 0x60

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_0
    iget-object v5, p0, Lorg/chromium/blink/mojom/NotificationData;->actions:[Lorg/chromium/blink/mojom/NotificationAction;

    array-length v6, v5

    if-ge v3, v6, :cond_1

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/blink/mojom/NotificationData;->showTriggerTimestamp:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget p0, p0, Lorg/chromium/blink/mojom/NotificationData;->scenario:I

    const/16 v0, 0x70

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
