.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 /2\u00020\u0001:\u0001/B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010JS\u0010\u0017\u001a*\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00040\u0015j\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u0004`\u00162\u001a\u0010\u0014\u001a\u0016\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011j\n\u0012\u0004\u0012\u00020\u0012\u0018\u0001`\u0013H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001d\u0010\u001c\u001a\u00020\u001b2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0004H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J,\u0010(\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040%2\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#H\u0086@\u00a2\u0006\u0004\u0008&\u0010\'JL\u0010+\u001a0\u0012,\u0012*\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00040\u0015j\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u0004`\u00160%2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0086@\u00a2\u0006\u0004\u0008)\u0010*J$\u0010.\u001a\u0008\u0012\u0004\u0012\u00020,0%2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0004H\u0086@\u00a2\u0006\u0004\u0008-\u0010*\u00a8\u00060"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;",
        "",
        "<init>",
        "()V",
        "",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
        "descriptors",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;",
        "generateThreatListUpdatesRequestBody",
        "(Ljava/util/List;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;",
        "",
        "threatType",
        "platformType",
        "threatEntryType",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;",
        "generateListUpdateRequest",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;",
        "Ljava/util/ArrayList;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateResponse;",
        "Lkotlin/collections/ArrayList;",
        "listUpdateResponses",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "generateThreatListDescriptorMap",
        "(Ljava/util/ArrayList;)Ljava/util/HashMap;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;",
        "collisions",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;",
        "generateFullHashesFindRequestBody",
        "(Ljava/util/List;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApiService;",
        "getApiClientService",
        "()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApiService;",
        "",
        "isKidsMode",
        "",
        "protectLevel",
        "Ldb/m;",
        "getThreatListDescriptors-0E7RQCE",
        "(ZILib/c;)Ljava/lang/Object;",
        "getThreatListDescriptors",
        "getThreatListDescriptorPrefixHashes-gIAlu-s",
        "(Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "getThreatListDescriptorPrefixHashes",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindResponse;",
        "findFullHashes-gIAlu-s",
        "findFullHashes",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final generateFullHashesFindRequestBody(Ljava/util/List;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;"
        }
    .end annotation

    new-instance p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;Ljava/util/List;Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;ILtb/f;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;-><init>(Ljava/lang/String;Ljava/lang/String;ILtb/f;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->setClient(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->getClient()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const-string v2, "SAMSUNG"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;->setClientId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->getClient()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const-string v2, "1.0.0"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;->setClientVersion(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->setClientStates(Ljava/util/List;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILtb/f;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->setThreatInfo(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->getThreatListDescriptor()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getThreatType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->getThreatListDescriptor()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getThreatEntryType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->getThreatListDescriptor()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getPlatformType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v7, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;-><init>(Ljava/lang/String;ILtb/f;)V

    sget-object v7, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;->getPrefixHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;->getEncodeBase64ByHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntry;->setHash(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->getThreatInfo()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;->setThreatTypes(Ljava/util/Set;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->getThreatInfo()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;->setThreatEntryTypes(Ljava/util/Set;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->getThreatInfo()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;->setPlatformTypes(Ljava/util/Set;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;->getThreatInfo()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatInfo;->setThreatEntries(Ljava/util/Set;)V

    return-object p0
.end method

.method private final generateListUpdateRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;
    .locals 9

    new-instance v7, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;ILtb/f;)V

    invoke-virtual {v7, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->setThreatType(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->setPlatformType(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->setThreatEntryType(Ljava/lang/String;)V

    new-instance v8, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;ILtb/f;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getMaxUpdateEntries(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;->setMaxUpdateEntries(Ljava/lang/Integer;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getMaxDatabaseEntries(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;->setMaxDatabaseEntries(Ljava/lang/Integer;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;->setRegion(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;->setSupportedCompressions(Ljava/util/List;)V

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;->getSupportedCompressions()Ljava/util/List;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.util.ArrayList<kotlin.String>"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "RAW"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;->setConstraints(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Constraint;)V

    return-object v7
.end method

.method private final generateThreatListDescriptorMap(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateResponse;",
            ">;)",
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateResponse;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateResponse;->getResponseType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "FULL_UPDATE"

    invoke-static {v1, v3, v2}, LKc/r;->i(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateResponse;->getThreatType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateResponse;->getPlatformType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateResponse;->getThreatEntryType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateResponse;->getAdditions()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Addition;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Addition;->getCompressionType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RAW"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Addition;->getRawHashes()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/RawHashes;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/RawHashes;->getRawHashes()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v5

    :goto_2
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Addition;->getRawHashes()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/RawHashes;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/RawHashes;->getPrefixSize()Ljava/lang/Integer;

    move-result-object v5

    :cond_3
    sget-object v3, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;->getPrefixHashes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-object p0
.end method

.method private final generateThreatListUpdatesRequestBody(Ljava/util/List;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;Ljava/util/List;ILtb/f;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;

    invoke-direct {v3, v1, v1, v2, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;-><init>(Ljava/lang/String;Ljava/lang/String;ILtb/f;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;->setClient(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;->getClient()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    const-string v2, "SAMSUNG"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;->setClientId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;->getClient()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    const-string v2, "1.0.0"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/Client;->setClientVersion(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;->setListUpdateRequests(Ljava/util/List;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;->getListUpdateRequests()Ljava/util/List;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type java.util.ArrayList<com.sec.android.app.sbrowser.safe_browsing.v4.pojo.ListUpdateRequest>"

    invoke-static {v2, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getThreatType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getPlatformType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getThreatEntryType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v3, v4, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;->generateListUpdateRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ListUpdateRequest;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final findFullHashes-gIAlu-s(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$findFullHashes$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$findFullHashes$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$findFullHashes$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$findFullHashes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$findFullHashes$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$findFullHashes$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$findFullHashes$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$findFullHashes$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;->getApiClientService()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApiService;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;->generateFullHashesFindRequestBody(Ljava/util/List;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;

    move-result-object p0

    iput v3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$findFullHashes$1;->label:I

    invoke-interface {p2, p0, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApiService;->findFullHashes(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lretrofit2/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/Exception;

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0

    :goto_2
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0
.end method

.method public final getApiClientService()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApiService;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApi;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApi;->getRetrofitService()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApiService;

    move-result-object p0

    return-object p0
.end method

.method public final getThreatListDescriptorPrefixHashes-gIAlu-s(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptorPrefixHashes$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptorPrefixHashes$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptorPrefixHashes$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptorPrefixHashes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptorPrefixHashes$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptorPrefixHashes$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptorPrefixHashes$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptorPrefixHashes$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptorPrefixHashes$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;

    :try_start_0
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;->generateThreatListUpdatesRequestBody(Ljava/util/List;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;

    move-result-object p1

    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;->getApiClientService()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApiService;

    move-result-object p2

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptorPrefixHashes$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptorPrefixHashes$1;->label:I

    invoke-interface {p2, p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApiService;->fetchThreatListUpdates(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lretrofit2/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesResponse;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesResponse;->getListUpdateResponses()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;->generateThreatListDescriptorMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/Exception;

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0

    :goto_2
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0
.end method

.method public final getThreatListDescriptors-0E7RQCE(ZILib/c;)Ljava/lang/Object;
    .locals 4
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lib/c<",
            "-",
            "Ldb/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p3, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptors$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptors$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptors$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptors$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptors$1;

    invoke-direct {v0, p0, p3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptors$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lib/c;)V

    :goto_0
    iget-object p3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptors$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptors$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;->getApiClientService()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApiService;

    move-result-object p0

    const-string p3, "ANDROID"

    iput v3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient$getThreatListDescriptors$1;->label:I

    invoke-interface {p0, p3, p1, p2, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApiService;->getThreatLists(Ljava/lang/String;ZILib/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lretrofit2/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p3}, Lretrofit2/Response;->isSuccessful()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListsResponse;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListsResponse;->getThreatLists()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptorDto;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptorKt;->toDomain(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptorDto;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/Exception;

    invoke-virtual {p3}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0

    :goto_3
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0
.end method
