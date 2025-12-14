.class public final Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public actualSourceType:Ljava/lang/Integer;

.field public cacheLookupTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public evaluationWorkerStatus:Ljava/lang/Integer;

.field public matchedSourceType:Ljava/lang/Integer;

.field public routeRuleNum:J

.field public routerEvaluationTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public ruleIdMatched:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->ruleIdMatched:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->routeRuleNum:J

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;

    invoke-direct {v2, v1}, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;-><init>(I)V

    const/4 v1, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    iput-object v4, v2, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->ruleIdMatched:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    iput-object v0, v2, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->ruleIdMatched:Ljava/lang/Integer;

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    iput-object v4, v2, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->matchedSourceType:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    iput-object v0, v2, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->matchedSourceType:Ljava/lang/Integer;

    :goto_1
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0x14

    invoke-virtual {p0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    iput-object v4, v2, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->actualSourceType:Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    iput-object v0, v2, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->actualSourceType:Ljava/lang/Integer;

    :goto_2
    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Ljava/lang/Integer;

    const/16 v3, 0x30

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->evaluationWorkerStatus:Ljava/lang/Integer;

    goto :goto_3

    :cond_4
    iput-object v0, v2, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->evaluationWorkerStatus:Ljava/lang/Integer;

    :goto_3
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->routeRuleNum:J

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->routerEvaluationTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->cacheLookupTime:Lorg/chromium/mojo_base/mojom/TimeDelta;
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

    sget-object v0, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->ruleIdMatched:Ljava/lang/Integer;

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

    iget-object v0, p0, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->matchedSourceType:Ljava/lang/Integer;

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

    iget-object v0, p0, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->actualSourceType:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    const/4 v5, 0x2

    invoke-virtual {p1, v3, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->evaluationWorkerStatus:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    const/4 v3, 0x3

    invoke-virtual {p1, v1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-wide v0, p0, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->routeRuleNum:J

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v0, p0, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->routerEvaluationTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/network/mojom/ServiceWorkerRouterInfo;->cacheLookupTime:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v0, 0x28

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
