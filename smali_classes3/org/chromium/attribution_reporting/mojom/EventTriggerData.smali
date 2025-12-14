.class public final Lorg/chromium/attribution_reporting/mojom/EventTriggerData;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public data:J

.field public dedupKey:Ljava/lang/Long;

.field public filters:Lorg/chromium/attribution_reporting/mojom/FilterPair;

.field public priority:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->data:J

    iput-wide v0, p0, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->priority:J

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/EventTriggerData;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;

    invoke-direct {v2, v1}, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;-><init>(I)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->data:J

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->priority:J

    const/16 v1, 0x18

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/Long;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, v2, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->dedupKey:Ljava/lang/Long;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iput-object v0, v2, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->dedupKey:Ljava/lang/Long;

    :goto_0
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/attribution_reporting/mojom/FilterPair;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/FilterPair;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->filters:Lorg/chromium/attribution_reporting/mojom/FilterPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->data:J

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->priority:J

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->dedupKey:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    :goto_1
    const/16 v0, 0x18

    invoke-virtual {p1, v2, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v0, 0x20

    invoke-virtual {p1, v3, v4, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object p0, p0, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->filters:Lorg/chromium/attribution_reporting/mojom/FilterPair;

    const/16 v0, 0x28

    invoke-virtual {p1, p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
