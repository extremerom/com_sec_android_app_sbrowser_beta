.class public final Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapability;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;,
        Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00162\u00020\u0001:\u0002\u0015\u0016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008J\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\n\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J)\u0010\u000f\u001a\u00020\u000e2\u001a\u0010\u0010\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00080\u0011\"\u0006\u0012\u0002\u0008\u00030\u0008H\u0016\u00a2\u0006\u0002\u0010\u0012J\u0016\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl;",
        "Lcom/samsung/android/sdk/aisuggestion/capability/ContextualInsightCapability;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getAppDomainSchemaInfo",
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;",
        "appDomainClass",
        "Ljava/lang/Class;",
        "getDocumentCapabilityMetadata",
        "Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;",
        "getMetaData",
        "",
        "isAvailable",
        "",
        "isSchemaTypeAvailable",
        "documentClasses",
        "",
        "([Ljava/lang/Class;)Z",
        "adsInfoList",
        "",
        "AppDomainSchemaInfo",
        "Companion",
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
.field public static final Companion:Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FIELD_SCHEMA_TYPE:Ljava/lang/String; = "SCHEMA_TYPE"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FIELD_SCHEMA_TYPE_VERSION:Ljava/lang/String; = "SCHEMA_TYPE_VERSION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final META_NAME_DOCUMENT_SCHEMA:Ljava/lang/String; = "com.samsung.android.smartsuggestions.contextualinsight.document-schema-capability"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PACKAGE_NAME_SSS:Ljava/lang/String; = "com.samsung.android.smartsuggestions"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContextualInsightCapabilityImpl"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl;->Companion:Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl;->context:Landroid/content/Context;

    return-void
.end method

.method private final getMetaData()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.smartsuggestions"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const-string v0, "context.packageManager\n \u2026ageManager.GET_META_DATA)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.samsung.android.smartsuggestions.contextualinsight.document-schema-capability"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object p0

    :goto_1
    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    invoke-static {p0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, p0}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object p0

    invoke-interface {p0}, LAb/c;->w()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ContextualInsightCapabilityImpl"

    invoke-static {v1, p0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method private final isSchemaTypeAvailable(Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sdk/aisuggestion/schema/core/CoreSchemaVersion;->getCURRENT_VERSION()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSchemaTypeAvailable, core: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", adsInfoList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContextualInsightCapabilityImpl"

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl;->getDocumentCapabilityMetadata()Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string p0, "isSchemaTypeAvailable, Failed to get document capability from SSS. Returning false."

    invoke-static {v3, p0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isSchemaTypeAvailable. documentCapability: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->getCoreSchemaCapability()Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->getVersionMin()J

    move-result-wide v4

    cmp-long v4, v0, v4

    const-string v5, "). Returning false."

    const-string v6, ") is lower than min supported version("

    const-string v7, "isSchemaTypeAvailable, "

    if-gez v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->getCoreSchemaCapability()Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$CoreSchemaCapability;->getVersionMin()J

    move-result-wide p0

    const-string v4, "core version("

    invoke-static {v0, v1, v4, v6}, LB/e;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1, v5, v0}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;->getAppDomainCapability()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->getSchemaType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;

    const-string v4, "schema type("

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->getSchemaType()Ljava/lang/String;

    move-result-object p0

    const-string p1, ") is not supported by SSS. Returning false."

    invoke-static {v4, p0, p1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->getKillSwitch()Ljava/lang/Boolean;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->getSchemaType()Ljava/lang/String;

    move-result-object p0

    const-string p1, ") is disabled by kill switch. Returning false."

    invoke-static {v4, p0, p1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->getVersionExcluded()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->getSchemaTypeVersion()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, ") version("

    if-eqz v8, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->getSchemaType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->getSchemaTypeVersion()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") is excluded by SSS. Returning false."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->getSchemaTypeVersion()J

    move-result-wide v10

    invoke-virtual {v1}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->getVersionMin()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-gez v8, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->getSchemaType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->getSchemaTypeVersion()J

    move-result-wide v10

    invoke-virtual {v1}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$AppDomainCapability;->getVersionMin()J

    move-result-wide v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->getSchemaType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;->getSchemaTypeVersion()J

    move-result-wide v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") is available."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string p0, "isSchemaTypeAvailable, All schema types are available. Returning true."

    invoke-static {v3, p0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final getAppDomainSchemaInfo(Ljava/lang/Class;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;
    .locals 9
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, ""

    const-string v0, "appDomainClass"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SCHEMA_TYPE"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "appDomainClass.getDeclaredField(FIELD_SCHEMA_TYPE)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const-string v1, "SCHEMA_TYPE_VERSION"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "appDomainClass.getDeclar\u2026IELD_SCHEMA_TYPE_VERSION)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v5

    new-instance v1, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.samsung.android.sdk.aisuggestion.schema."

    invoke-static {p1, v2, p0}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LKc/k;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "."

    invoke-static {p1, v2, p0}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v1

    :goto_0
    instance-of p0, v1, Ldb/l;

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    check-cast v0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;

    return-object v0
.end method

.method public final getDocumentCapabilityMetadata()Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl;->getMetaData()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextualInsightCapabilityImpl"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "getDocumentCapabilityMetadata, Failed to get metadata from SSS. Returning false."

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "forName(charsetName)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    const-string v2, "decode(metaDataJsonBase6\u2026UTF-8\")), Base64.NO_WRAP)"

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, LKc/a;->a:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v3

    :goto_0
    instance-of p0, v3, Ldb/l;

    if-eqz p0, :cond_1

    move-object v3, v1

    :cond_1
    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    const-string p0, "getDocumentCapabilityMetadata, Failed to decode metadata from SSS. Returning false."

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    sget-object p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser;->fromJson(Ljava/lang/String;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/DocumentCapabilityJsonParser$DocumentCapability;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "getDocumentCapabilityMetadata, Failed to parse document capability. Returning false."

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    sget-object p0, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->INSTANCE:Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/Rune;->getAI_SUGGESTION_AVAILABLE()Z

    move-result p0

    const-string v0, "ContextualInsightCapabilityImpl"

    if-nez p0, :cond_0

    const-string p0, "isAvailable, Returning false because AI_SUGGESTION_AVAILABLE is false."

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "isAvailable, Returning true."

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/aisuggestion/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public varargs isSchemaTypeAvailable([Ljava/lang/Class;)Z
    .locals 5
    .param p1    # [Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "documentClasses"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl;->getAppDomainSchemaInfo(Ljava/lang/Class;)Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl$AppDomainSchemaInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move p0, v0

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/aisuggestion/capability/impl/ContextualInsightCapabilityImpl;->isSchemaTypeAvailable(Ljava/util/List;)Z

    move-result p0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    :goto_4
    instance-of p1, p0, Ldb/l;

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    :cond_3
    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_4
    return v0
.end method
