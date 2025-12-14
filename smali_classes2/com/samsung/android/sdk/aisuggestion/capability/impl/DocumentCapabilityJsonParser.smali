.class public final Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;,
        Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;,
        Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u0014\u0015\u0016B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001c\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;",
        "",
        "()V",
        "fromJson",
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;",
        "jsonString",
        "",
        "readAppDomainSchemaCapabilities",
        "",
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "readCapability",
        "readCoreSchemaCapability",
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;",
        "readLongArray",
        "",
        "",
        "jsonArray",
        "Lorg/json/JSONArray;",
        "AppDomainCapability",
        "CoreSchemaCapability",
        "DocumentCapability",
        "deepsky-sdk-aisuggestion-1.6.13_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;

    invoke-direct {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readAppDomainSchemaCapabilities(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "jsonObject.keys()"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "key"

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;

    invoke-direct {v3, v2}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;->readCapability(Lorg/json/JSONObject;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private final readCapability(Lorg/json/JSONObject;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;
    .locals 11

    const-string p0, "versionTarget"

    const-wide/16 v0, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string p0, "versionMin"

    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string p0, "versionExcluded"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;->readLongArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v7, p0

    goto :goto_2

    :cond_1
    :goto_1
    sget-object p0, Lfb/v;->a:Lfb/v;

    goto :goto_0

    :goto_2
    const-string p0, "oneUiVersionMin"

    const-wide/32 v0, 0x11170

    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string p0, "killSwitch"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-instance p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;-><init>(JJLjava/util/List;JLjava/lang/Boolean;)V

    return-object p1
.end method

.method private final readCoreSchemaCapability(Lorg/json/JSONObject;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;
    .locals 8

    const-string p0, "versionTarget"

    const-wide/16 v0, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string p0, "versionMin"

    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string p0, "versionExcluded"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;->readLongArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v7, p0

    goto :goto_2

    :cond_1
    :goto_1
    sget-object p0, Lfb/v;->a:Lfb/v;

    goto :goto_0

    :goto_2
    new-instance p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;-><init>(JJLjava/util/List;)V

    return-object p0
.end method

.method private final readLongArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "jsonString"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "version"

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string p1, "coreSchemaCapability"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;

    invoke-direct {v3, p1}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;->readCoreSchemaCapability(Lorg/json/JSONObject;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v4, "appDomainSchemaCapabilities"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;->readAppDomainSchemaCapabilities(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;

    invoke-direct {v2, v0, v1, p1, p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;-><init>(JLcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;Ljava/util/Map;)V

    :cond_0
    return-object v2
.end method
