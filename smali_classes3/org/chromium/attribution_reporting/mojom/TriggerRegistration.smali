.class public final Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public aggregatableDebugReportingConfig:Lorg/chromium/attribution_reporting/mojom/AggregatableDebugReportingConfig;

.field public aggregatableDedupKeys:[Lorg/chromium/attribution_reporting/mojom/AggregatableDedupKey;

.field public aggregatableFilteringIdMaxBytes:B

.field public aggregatableNamedBudgetCandidates:[Lorg/chromium/attribution_reporting/mojom/AggregatableNamedBudgetCandidate;

.field public aggregatableTriggerData:[Lorg/chromium/attribution_reporting/mojom/AggregatableTriggerData;

.field public aggregatableValues:[Lorg/chromium/attribution_reporting/mojom/AggregatableValues;

.field public aggregationCoordinatorOrigin:Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;

.field public attributionScopes:Lorg/chromium/attribution_reporting/mojom/AttributionScopesSet;

.field public debugKey:Ljava/lang/Long;

.field public debugReporting:Z

.field public eventTriggers:[Lorg/chromium/attribution_reporting/mojom/EventTriggerData;

.field public filters:Lorg/chromium/attribution_reporting/mojom/FilterPair;

.field public sourceRegistrationTimeConfig:I

.field public triggerContextId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x68

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->debugReporting:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;

    invoke-direct {v2, v1}, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/attribution_reporting/mojom/EventTriggerData;

    iput-object v7, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->eventTriggers:[Lorg/chromium/attribution_reporting/mojom/EventTriggerData;

    move v7, v3

    :goto_0
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_1

    const/16 v8, 0x8

    invoke-static {v7, v8, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->eventTriggers:[Lorg/chromium/attribution_reporting/mojom/EventTriggerData;

    invoke-static {v8}, Lorg/chromium/attribution_reporting/mojom/EventTriggerData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/EventTriggerData;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    const/16 v4, 0x10

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/attribution_reporting/mojom/FilterPair;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/FilterPair;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->filters:Lorg/chromium/attribution_reporting/mojom/FilterPair;

    const/16 v4, 0x18

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/attribution_reporting/mojom/AggregatableTriggerData;

    iput-object v7, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableTriggerData:[Lorg/chromium/attribution_reporting/mojom/AggregatableTriggerData;

    move v7, v3

    :goto_1
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_2

    const/16 v8, 0x8

    invoke-static {v7, v8, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableTriggerData:[Lorg/chromium/attribution_reporting/mojom/AggregatableTriggerData;

    invoke-static {v8}, Lorg/chromium/attribution_reporting/mojom/AggregatableTriggerData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/AggregatableTriggerData;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/16 v4, 0x20

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/attribution_reporting/mojom/AggregatableValues;

    iput-object v7, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableValues:[Lorg/chromium/attribution_reporting/mojom/AggregatableValues;

    move v7, v3

    :goto_2
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_3

    const/16 v8, 0x8

    invoke-static {v7, v8, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableValues:[Lorg/chromium/attribution_reporting/mojom/AggregatableValues;

    invoke-static {v8}, Lorg/chromium/attribution_reporting/mojom/AggregatableValues;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/AggregatableValues;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/16 v4, 0x28

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v0, Ljava/lang/Long;

    const/16 v6, 0x30

    invoke-virtual {p0, v6}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->debugKey:Ljava/lang/Long;

    goto :goto_3

    :cond_4
    iput-object v0, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->debugKey:Ljava/lang/Long;

    :goto_3
    const/4 v0, 0x1

    invoke-virtual {p0, v4, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->debugReporting:Z

    const/16 v4, 0x29

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result v4

    iput-byte v4, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableFilteringIdMaxBytes:B

    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->sourceRegistrationTimeConfig:I

    invoke-static {v4}, Lorg/chromium/attribution_reporting/mojom/SourceRegistrationTimeConfig;->validate(I)V

    iget v4, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->sourceRegistrationTimeConfig:I

    invoke-static {v4}, Lorg/chromium/attribution_reporting/mojom/SourceRegistrationTimeConfig;->toKnownValue(I)I

    move-result v4

    iput v4, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->sourceRegistrationTimeConfig:I

    const/16 v4, 0x38

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/attribution_reporting/mojom/AggregatableDedupKey;

    iput-object v7, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableDedupKeys:[Lorg/chromium/attribution_reporting/mojom/AggregatableDedupKey;

    move v7, v3

    :goto_4
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_5

    const/16 v8, 0x8

    invoke-static {v7, v8, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableDedupKeys:[Lorg/chromium/attribution_reporting/mojom/AggregatableDedupKey;

    invoke-static {v8}, Lorg/chromium/attribution_reporting/mojom/AggregatableDedupKey;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/AggregatableDedupKey;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    const/16 v4, 0x40

    invoke-virtual {p0, v4, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregationCoordinatorOrigin:Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;

    const/16 v4, 0x48

    invoke-virtual {p0, v4, v0}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->triggerContextId:Ljava/lang/String;

    const/16 v0, 0x50

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/attribution_reporting/mojom/AggregatableDebugReportingConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/AggregatableDebugReportingConfig;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableDebugReportingConfig:Lorg/chromium/attribution_reporting/mojom/AggregatableDebugReportingConfig;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/attribution_reporting/mojom/AttributionScopesSet;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/AttributionScopesSet;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->attributionScopes:Lorg/chromium/attribution_reporting/mojom/AttributionScopesSet;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/attribution_reporting/mojom/AggregatableNamedBudgetCandidate;

    iput-object v5, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableNamedBudgetCandidates:[Lorg/chromium/attribution_reporting/mojom/AggregatableNamedBudgetCandidate;

    move v5, v3

    :goto_5
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_6

    const/16 v6, 0x8

    invoke-static {v5, v6, v1, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v2, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableNamedBudgetCandidates:[Lorg/chromium/attribution_reporting/mojom/AggregatableNamedBudgetCandidate;

    invoke-static {v6}, Lorg/chromium/attribution_reporting/mojom/AggregatableNamedBudgetCandidate;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/AggregatableNamedBudgetCandidate;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_6
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 8

    sget-object v0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->eventTriggers:[Lorg/chromium/attribution_reporting/mojom/EventTriggerData;

    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->eventTriggers:[Lorg/chromium/attribution_reporting/mojom/EventTriggerData;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->filters:Lorg/chromium/attribution_reporting/mojom/FilterPair;

    const/16 v4, 0x10

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableTriggerData:[Lorg/chromium/attribution_reporting/mojom/AggregatableTriggerData;

    const/16 v4, 0x18

    if-nez v0, :cond_2

    invoke-virtual {p1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v3

    :goto_2
    iget-object v5, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableTriggerData:[Lorg/chromium/attribution_reporting/mojom/AggregatableTriggerData;

    array-length v6, v5

    if-ge v4, v6, :cond_3

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableValues:[Lorg/chromium/attribution_reporting/mojom/AggregatableValues;

    const/16 v4, 0x20

    if-nez v0, :cond_4

    invoke-virtual {p1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v3

    :goto_4
    iget-object v5, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableValues:[Lorg/chromium/attribution_reporting/mojom/AggregatableValues;

    array-length v6, v5

    if-ge v4, v6, :cond_5

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v2

    invoke-virtual {v0, v5, v6, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->debugKey:Ljava/lang/Long;

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    move v5, v4

    goto :goto_6

    :cond_6
    move v5, v3

    :goto_6
    if-eqz v5, :cond_7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_7

    :cond_7
    const-wide/16 v6, 0x0

    :goto_7
    const/16 v0, 0x28

    invoke-virtual {p1, v5, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v5, 0x30

    invoke-virtual {p1, v6, v7, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-boolean v5, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->debugReporting:Z

    invoke-virtual {p1, v5, v0, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-byte v0, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableFilteringIdMaxBytes:B

    const/16 v5, 0x29

    invoke-virtual {p1, v0, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(BI)V

    iget v0, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->sourceRegistrationTimeConfig:I

    const/16 v5, 0x2c

    invoke-virtual {p1, v0, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableDedupKeys:[Lorg/chromium/attribution_reporting/mojom/AggregatableDedupKey;

    const/16 v5, 0x38

    if-nez v0, :cond_8

    invoke-virtual {p1, v5, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_9

    :cond_8
    array-length v0, v0

    invoke-virtual {p1, v0, v5, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v5, v3

    :goto_8
    iget-object v6, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableDedupKeys:[Lorg/chromium/attribution_reporting/mojom/AggregatableDedupKey;

    array-length v7, v6

    if-ge v5, v7, :cond_9

    aget-object v6, v6, v5

    mul-int/lit8 v7, v5, 0x8

    add-int/2addr v7, v2

    invoke-virtual {v0, v6, v7, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregationCoordinatorOrigin:Lorg/chromium/attribution_reporting/mojom/SuitableOrigin;

    const/16 v5, 0x40

    invoke-virtual {p1, v0, v5, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->triggerContextId:Ljava/lang/String;

    const/16 v5, 0x48

    invoke-virtual {p1, v0, v5, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableDebugReportingConfig:Lorg/chromium/attribution_reporting/mojom/AggregatableDebugReportingConfig;

    const/16 v4, 0x50

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->attributionScopes:Lorg/chromium/attribution_reporting/mojom/AttributionScopesSet;

    const/16 v4, 0x58

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableNamedBudgetCandidates:[Lorg/chromium/attribution_reporting/mojom/AggregatableNamedBudgetCandidate;

    const/16 v4, 0x60

    if-nez v0, :cond_a

    invoke-virtual {p1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_b

    :cond_a
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v3

    :goto_a
    iget-object v1, p0, Lorg/chromium/attribution_reporting/mojom/TriggerRegistration;->aggregatableNamedBudgetCandidates:[Lorg/chromium/attribution_reporting/mojom/AggregatableNamedBudgetCandidate;

    array-length v4, v1

    if-ge v0, v4, :cond_b

    aget-object v1, v1, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v2

    invoke-virtual {p1, v1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    return-void
.end method
