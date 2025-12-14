.class public final Lorg/chromium/attribution_reporting/mojom/SourceRegistration;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public aggregatableDebugReportingConfig:Lorg/chromium/attribution_reporting/mojom/SourceAggregatableDebugReportingConfig;

.field public aggregatableNamedBudgetDefs:Lorg/chromium/attribution_reporting/mojom/AggregatableNamedBudgetDefs;

.field public aggregatableReportWindow:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public aggregationKeys:Lorg/chromium/attribution_reporting/mojom/AggregationKeys;

.field public attributionScopesData:Lorg/chromium/attribution_reporting/mojom/AttributionScopesData;

.field public debugKey:Ljava/lang/Long;

.field public debugReporting:Z

.field public destinationLimitPriority:J

.field public destinations:Lorg/chromium/attribution_reporting/mojom/DestinationSet;

.field public eventLevelEpsilon:D

.field public expiry:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public filterData:Lorg/chromium/attribution_reporting/mojom/FilterData;

.field public priority:J

.field public sourceEventId:J

.field public triggerDataMatching:I

.field public triggerSpecs:Lorg/chromium/attribution_reporting/mojom/TriggerSpecs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->sourceEventId:J

    iput-wide v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->priority:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->debugReporting:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/SourceRegistration;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;

    invoke-direct {v2, v1}, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/attribution_reporting/mojom/DestinationSet;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/DestinationSet;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->destinations:Lorg/chromium/attribution_reporting/mojom/DestinationSet;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->sourceEventId:J

    const/16 v1, 0x18

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->expiry:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v1, 0x20

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/attribution_reporting/mojom/TriggerSpecs;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/TriggerSpecs;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->triggerSpecs:Lorg/chromium/attribution_reporting/mojom/TriggerSpecs;

    const/16 v1, 0x28

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->aggregatableReportWindow:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->priority:J

    const/16 v1, 0x38

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Ljava/lang/Long;

    const/16 v4, 0x40

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->debugKey:Ljava/lang/Long;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iput-object v0, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->debugKey:Ljava/lang/Long;

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    iput-boolean v1, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->debugReporting:Z

    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    iput v1, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->triggerDataMatching:I

    invoke-static {v1}, Lorg/chromium/attribution_reporting/mojom/TriggerDataMatching;->validate(I)V

    iget v1, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->triggerDataMatching:I

    invoke-static {v1}, Lorg/chromium/attribution_reporting/mojom/TriggerDataMatching;->toKnownValue(I)I

    move-result v1

    iput v1, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->triggerDataMatching:I

    const/16 v1, 0x48

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/attribution_reporting/mojom/FilterData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/FilterData;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->filterData:Lorg/chromium/attribution_reporting/mojom/FilterData;

    const/16 v1, 0x50

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/attribution_reporting/mojom/AggregationKeys;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/AggregationKeys;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->aggregationKeys:Lorg/chromium/attribution_reporting/mojom/AggregationKeys;

    const/16 v1, 0x58

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v4

    iput-wide v4, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->eventLevelEpsilon:D

    const/16 v1, 0x60

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/attribution_reporting/mojom/SourceAggregatableDebugReportingConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/SourceAggregatableDebugReportingConfig;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->aggregatableDebugReportingConfig:Lorg/chromium/attribution_reporting/mojom/SourceAggregatableDebugReportingConfig;

    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->destinationLimitPriority:J

    const/16 v1, 0x70

    invoke-virtual {p0, v1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/attribution_reporting/mojom/AttributionScopesData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/AttributionScopesData;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->attributionScopesData:Lorg/chromium/attribution_reporting/mojom/AttributionScopesData;

    const/16 v0, 0x78

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/attribution_reporting/mojom/AggregatableNamedBudgetDefs;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/AggregatableNamedBudgetDefs;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->aggregatableNamedBudgetDefs:Lorg/chromium/attribution_reporting/mojom/AggregatableNamedBudgetDefs;
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
    .locals 6

    sget-object v0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->destinations:Lorg/chromium/attribution_reporting/mojom/DestinationSet;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->sourceEventId:J

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->expiry:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->triggerSpecs:Lorg/chromium/attribution_reporting/mojom/TriggerSpecs;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->aggregatableReportWindow:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->priority:J

    const/16 v3, 0x30

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->debugKey:Ljava/lang/Long;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    :goto_1
    const/16 v0, 0x38

    invoke-virtual {p1, v3, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v3, 0x40

    invoke-virtual {p1, v4, v5, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-boolean v3, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->debugReporting:Z

    invoke-virtual {p1, v3, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->triggerDataMatching:I

    const/16 v3, 0x3c

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->filterData:Lorg/chromium/attribution_reporting/mojom/FilterData;

    const/16 v3, 0x48

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->aggregationKeys:Lorg/chromium/attribution_reporting/mojom/AggregationKeys;

    const/16 v3, 0x50

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v3, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->eventLevelEpsilon:D

    const/16 v0, 0x58

    invoke-virtual {p1, v3, v4, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->aggregatableDebugReportingConfig:Lorg/chromium/attribution_reporting/mojom/SourceAggregatableDebugReportingConfig;

    const/16 v3, 0x60

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-wide v3, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->destinationLimitPriority:J

    const/16 v0, 0x68

    invoke-virtual {p1, v3, v4, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->attributionScopesData:Lorg/chromium/attribution_reporting/mojom/AttributionScopesData;

    const/16 v3, 0x70

    invoke-virtual {p1, v0, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/attribution_reporting/mojom/SourceRegistration;->aggregatableNamedBudgetDefs:Lorg/chromium/attribution_reporting/mojom/AggregatableNamedBudgetDefs;

    const/16 v0, 0x78

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
