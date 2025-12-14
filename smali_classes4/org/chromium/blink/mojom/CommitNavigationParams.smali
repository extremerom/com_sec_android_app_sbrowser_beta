.class public final Lorg/chromium/blink/mojom/CommitNavigationParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public ancestorOrSelfHasCspee:Z

.field public browsingContextGroupInfo:Lorg/chromium/blink/mojom/BrowsingContextGroupInfo;

.field public canLoadLocalResources:Z

.field public commitSent:Lorg/chromium/mojo_base/mojom/TimeTicks;

.field public contentSettings:Lorg/chromium/blink/mojom/RendererContentSettings;

.field public cookieDeprecationLabel:Ljava/lang/String;

.field public currentHistoryListIndex:I

.field public currentHistoryListLength:I

.field public dataUrlAsString:Ljava/lang/String;

.field public documentUkmSourceId:J

.field public earlyHintsPreloadedResources:[Lorg/chromium/url/mojom/Url;

.field public enabledClientHints:[I

.field public fencedFrameProperties:Lorg/chromium/blink/mojom/FencedFrameProperties;

.field public forceEnabledOriginTrials:[Ljava/lang/String;

.field public forceNewDocumentSequenceNumber:Z

.field public framePolicy:Lorg/chromium/blink/mojom/FramePolicy;

.field public hasUaVisualTransition:Z

.field public httpResponseCode:I

.field public initialPermissionStatuses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public intendedAsNewEntry:Z

.field public isBrowserInitiated:Z

.field public isCrossSiteCrossBrowsingContextGroup:Z

.field public isLoadDataWithBaseUrl:Z

.field public isOverridingUserAgent:Z

.field public isViewSource:Z

.field public lcppHint:Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;

.field public loadWithStorageAccess:I

.field public localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

.field public modifiedRuntimeFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public navEntryId:I

.field public navigationApiHistoryEntryArrays:Lorg/chromium/blink/mojom/NavigationApiHistoryEntryArrays;

.field public navigationDeliveryType:I

.field public navigationTiming:Lorg/chromium/blink/mojom/NavigationTiming;

.field public navigationToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public notRestoredReasons:Lorg/chromium/blink/mojom/BackForwardCacheNotRestoredReasons;

.field public oldPageInfo:Lorg/chromium/blink/mojom/OldPageInfo;

.field public originAgentCluster:Z

.field public originAgentClusterLeftAsDefault:Z

.field public originToCommit:Lorg/chromium/url/internal/mojom/Origin;

.field public originalMethod:Ljava/lang/String;

.field public originalUrl:Lorg/chromium/url/mojom/Url;

.field public pageState:Lorg/chromium/mojo_base/mojom/ByteString;

.field public pendingHistoryListIndex:I

.field public postContentType:Ljava/lang/String;

.field public prefetchedSignedExchanges:[Lorg/chromium/blink/mojom/PrefetchedSignedExchangeInfo;

.field public redirectInfos:[Lorg/chromium/network/mojom/UrlRequestRedirectInfo;

.field public redirectResponse:[Lorg/chromium/network/mojom/UrlResponseHead;

.field public redirects:[Lorg/chromium/url/mojom/Url;

.field public reducedAcceptLanguage:Ljava/lang/String;

.field public shouldClearHistoryList:Z

.field public shouldHaveStickyUserActivation:Z

.field public shouldSkipScreenshot:Z

.field public softNavigationHeuristicsTaskId:Lorg/chromium/blink/mojom/TaskAttributionId;

.field public srcdocValue:Ljava/lang/String;

.field public storageKey:Lorg/chromium/blink/mojom/StorageKey;

.field public subframeUniqueNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public viewTransitionState:Lorg/chromium/blink/mojom/ViewTransitionState;

.field public visitedLinkSalt:Ljava/lang/Long;

.field public wasActivated:I

.field public wasDiscarded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x150

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/blink/mojom/CommitNavigationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->originToCommit:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v10, 0x8

    const/4 v11, 0x1

    invoke-virtual {v1, v2, v10, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->storageKey:Lorg/chromium/blink/mojom/StorageKey;

    const/16 v12, 0x10

    const/4 v13, 0x0

    invoke-virtual {v1, v2, v12, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->isOverridingUserAgent:Z

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->canLoadLocalResources:Z

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->intendedAsNewEntry:Z

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->wasDiscarded:Z

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->isViewSource:Z

    const/4 v6, 0x4

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->shouldClearHistoryList:Z

    const/4 v7, 0x5

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->isBrowserInitiated:Z

    const/4 v8, 0x6

    invoke-virtual {v1, v2, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->hasUaVisualTransition:Z

    const/4 v9, 0x7

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->originAgentCluster:Z

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->originAgentClusterLeftAsDefault:Z

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->isCrossSiteCrossBrowsingContextGroup:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->shouldHaveStickyUserActivation:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->isLoadDataWithBaseUrl:Z

    invoke-virtual {v1, v2, v3, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->ancestorOrSelfHasCspee:Z

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->visitedLinkSalt:Ljava/lang/Long;

    if-eqz v2, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    move v4, v13

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    :goto_1
    invoke-virtual {v1, v4, v3, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v2, 0x138

    invoke-virtual {v1, v5, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->shouldSkipScreenshot:Z

    invoke-virtual {v1, v2, v3, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->forceNewDocumentSequenceNumber:Z

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->navEntryId:I

    const/16 v3, 0x1c

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->redirects:[Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x20

    const/4 v14, -0x1

    if-nez v2, :cond_2

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v8, v13

    :goto_2
    iget-object v3, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->redirects:[Lorg/chromium/url/mojom/Url;

    array-length v4, v3

    if-ge v8, v4, :cond_3

    aget-object v6, v3, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    move v4, v10

    move-object v5, v2

    move v7, v13

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->e(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/mojom/Url;ZII)I

    move-result v8

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->redirectResponse:[Lorg/chromium/network/mojom/UrlResponseHead;

    const/16 v3, 0x28

    if-nez v2, :cond_4

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v13

    :goto_4
    iget-object v4, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->redirectResponse:[Lorg/chromium/network/mojom/UrlResponseHead;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->redirectInfos:[Lorg/chromium/network/mojom/UrlRequestRedirectInfo;

    const/16 v3, 0x30

    if-nez v2, :cond_6

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_6
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v13

    :goto_6
    iget-object v4, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->redirectInfos:[Lorg/chromium/network/mojom/UrlRequestRedirectInfo;

    array-length v5, v4

    if-ge v3, v5, :cond_7

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->postContentType:Ljava/lang/String;

    const/16 v3, 0x38

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->originalUrl:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->originalMethod:Ljava/lang/String;

    const/16 v3, 0x48

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->pageState:Lorg/chromium/mojo_base/mojom/ByteString;

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->subframeUniqueNames:Ljava/util/Map;

    const/16 v3, 0x58

    if-nez v2, :cond_8

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_a

    :cond_8
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->subframeUniqueNames:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v15

    new-array v9, v15, [Ljava/lang/String;

    new-array v8, v15, [Z

    iget-object v3, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->subframeUniqueNames:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v13

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v9, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    aput-boolean v5, v8, v4

    add-int/2addr v4, v11

    goto :goto_8

    :cond_9
    invoke-virtual {v2, v15, v10, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v7, v13

    :goto_9
    if-ge v7, v15, :cond_a

    aget-object v6, v9, v7

    mul-int/lit8 v3, v7, 0x8

    const/16 v17, 0x1

    move v4, v10

    move-object/from16 v5, v16

    move/from16 v18, v7

    move v7, v13

    move-object v11, v8

    move/from16 v8, v18

    move-object/from16 v18, v9

    move/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v7

    move-object v8, v11

    move-object/from16 v9, v18

    const/4 v11, 0x1

    goto :goto_9

    :cond_a
    move-object v11, v8

    invoke-virtual {v2, v11, v12, v13, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode([ZIII)V

    :goto_a
    iget v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->pendingHistoryListIndex:I

    const/16 v3, 0x60

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->currentHistoryListIndex:I

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->currentHistoryListLength:I

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->wasActivated:I

    const/16 v3, 0x6c

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->navigationTiming:Lorg/chromium/blink/mojom/NavigationTiming;

    const/16 v3, 0x70

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->navigationToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v3, 0x78

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->prefetchedSignedExchanges:[Lorg/chromium/blink/mojom/PrefetchedSignedExchangeInfo;

    const/16 v3, 0x80

    if-nez v2, :cond_b

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_c

    :cond_b
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v13

    :goto_b
    iget-object v4, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->prefetchedSignedExchanges:[Lorg/chromium/blink/mojom/PrefetchedSignedExchangeInfo;

    array-length v5, v4

    if-ge v3, v5, :cond_c

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_c
    :goto_c
    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->dataUrlAsString:Ljava/lang/String;

    const/16 v3, 0x88

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-wide v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->documentUkmSourceId:J

    const/16 v4, 0x90

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->framePolicy:Lorg/chromium/blink/mojom/FramePolicy;

    const/16 v3, 0x98

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->forceEnabledOriginTrials:[Ljava/lang/String;

    const/16 v3, 0xa0

    if-nez v2, :cond_d

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_e

    :cond_d
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v8, v13

    :goto_d
    iget-object v3, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->forceEnabledOriginTrials:[Ljava/lang/String;

    array-length v4, v3

    if-ge v8, v4, :cond_e

    aget-object v6, v3, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    move v4, v10

    move-object v5, v2

    move v7, v13

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    goto :goto_d

    :cond_e
    :goto_e
    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->enabledClientHints:[I

    const/16 v3, 0xa8

    invoke-virtual {v1, v2, v3, v13, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->oldPageInfo:Lorg/chromium/blink/mojom/OldPageInfo;

    const/16 v3, 0xb0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->httpResponseCode:I

    const/16 v3, 0xb8

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->navigationDeliveryType:I

    const/16 v3, 0xbc

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->navigationApiHistoryEntryArrays:Lorg/chromium/blink/mojom/NavigationApiHistoryEntryArrays;

    const/16 v3, 0xc0

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->earlyHintsPreloadedResources:[Lorg/chromium/url/mojom/Url;

    const/16 v3, 0xc8

    if-nez v2, :cond_f

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_10

    :cond_f
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v8, v13

    :goto_f
    iget-object v3, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->earlyHintsPreloadedResources:[Lorg/chromium/url/mojom/Url;

    array-length v4, v3

    if-ge v8, v4, :cond_10

    aget-object v6, v3, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    move v4, v10

    move-object v5, v2

    move v7, v13

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->e(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/mojom/Url;ZII)I

    move-result v8

    goto :goto_f

    :cond_10
    :goto_10
    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->commitSent:Lorg/chromium/mojo_base/mojom/TimeTicks;

    const/16 v3, 0xd0

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->srcdocValue:Ljava/lang/String;

    const/16 v3, 0xd8

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->reducedAcceptLanguage:Ljava/lang/String;

    const/16 v3, 0xe0

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->viewTransitionState:Lorg/chromium/blink/mojom/ViewTransitionState;

    const/16 v3, 0xe8

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->softNavigationHeuristicsTaskId:Lorg/chromium/blink/mojom/TaskAttributionId;

    const/16 v3, 0xf0

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->modifiedRuntimeFeatures:Ljava/util/Map;

    const/16 v3, 0xf8

    if-nez v2, :cond_11

    invoke-virtual {v1, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    const/4 v7, 0x1

    goto :goto_12

    :cond_11
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->modifiedRuntimeFeatures:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v4, v3, [I

    new-array v3, v3, [Z

    iget-object v5, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->modifiedRuntimeFeatures:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v13

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

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

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_11

    :cond_12
    const/4 v7, 0x1

    invoke-virtual {v2, v4, v10, v13, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    invoke-virtual {v2, v3, v12, v13, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode([ZIII)V

    :goto_12
    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->fencedFrameProperties:Lorg/chromium/blink/mojom/FencedFrameProperties;

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->notRestoredReasons:Lorg/chromium/blink/mojom/BackForwardCacheNotRestoredReasons;

    const/16 v3, 0x108

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->loadWithStorageAccess:I

    const/16 v3, 0x110

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->browsingContextGroupInfo:Lorg/chromium/blink/mojom/BrowsingContextGroupInfo;

    const/16 v3, 0x118

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->lcppHint:Lorg/chromium/blink/mojom/LcpCriticalPathPredictorNavigationTimeHint;

    const/16 v3, 0x120

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->contentSettings:Lorg/chromium/blink/mojom/RendererContentSettings;

    const/16 v3, 0x128

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->cookieDeprecationLabel:Ljava/lang/String;

    const/16 v3, 0x130

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->localSurfaceId:Lorg/chromium/viz/mojom/LocalSurfaceId;

    const/16 v3, 0x140

    invoke-virtual {v1, v2, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->initialPermissionStatuses:Ljava/util/Map;

    const/16 v3, 0x148

    if-nez v2, :cond_13

    invoke-virtual {v1, v3, v7}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_14

    :cond_13
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->initialPermissionStatuses:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v3, v2, [I

    new-array v2, v2, [I

    iget-object v0, v0, Lorg/chromium/blink/mojom/CommitNavigationParams;->initialPermissionStatuses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v13

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v3, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_13

    :cond_14
    invoke-virtual {v1, v3, v10, v13, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    invoke-virtual {v1, v2, v12, v13, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    :goto_14
    return-void
.end method
