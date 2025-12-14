.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010%\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\"B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ-\u0010\r\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013H\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0017\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0003J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001aR \u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;",
        "",
        "<init>",
        "()V",
        "Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;",
        "requestType",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;",
        "callback",
        "Ldb/r;",
        "createAppInfo",
        "(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;)V",
        "",
        "expiredToken",
        "requestAccessToken",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Ljava/lang/String;)V",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;",
        "getCache",
        "(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;",
        "appInfoWrapper",
        "",
        "tokenExpired",
        "updateCache",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;Z)V",
        "clearCache",
        "(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)V",
        "getHashedApiKey",
        "()Ljava/lang/String;",
        "source",
        "getLongHash",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "getHashesSigningKey",
        "",
        "cache",
        "Ljava/util/Map;",
        "AppInfoCreateCallback",
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


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->cache:Ljava/util/Map;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$clearCache(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->clearCache(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)V

    return-void
.end method

.method public static final synthetic access$getHashedApiKey(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->getHashedApiKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHashesSigningKey(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->getHashesSigningKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final declared-synchronized clearCache()V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    const-string v2, "CLOUD"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBrowsingAssistAppInfoLastCachedTime(Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    const-string v2, "ONDEVICE"

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBrowsingAssistAppInfoLastCachedTime(Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    const-string v2, "ONDEVICE_EXTERNAL"

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBrowsingAssistAppInfoLastCachedTime(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final declared-synchronized clearCache(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBrowsingAssistAppInfoLastCachedTime(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static final createAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;)V
    .locals 10
    .param p0    # Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "requestType"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRetailMode()Z

    move-result v0

    const-string v1, "AppInfoUtils"

    if-eqz v0, :cond_0

    const-string v0, "createAppInfo#RetailMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setRequestType(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setAccountType(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->getSamsungAccountClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->getHashedApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setApiKey(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->getHashesSigningKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setSigningKey(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->build()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;ZILtb/f;)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;->onCreated(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)V

    return-void

    :cond_0
    sget-object v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->getCache(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->isTokenExpired()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cached appInfo token was expired"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->getAppInfo()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p1, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->requestAccessToken(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getBrowsingAssistAppInfoLastCachedTime(Ljava/lang/String;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    const-wide/32 v5, 0x1b7740

    cmp-long v2, v2, v5

    if-lez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cache expired, so request it ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    move-object v6, p0

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->requestAccessToken$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_2
    const-string p0, "use cached AppInfo"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;->onCreated(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)V

    return-void

    :cond_3
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    move-object v6, p0

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->requestAccessToken$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final declared-synchronized getCache(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final getHashedApiKey()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "beta"

    goto :goto_0

    :cond_0
    const-string v0, "stable"

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "scs_api_key.properties"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->getLongHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getHashesSigningKey()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "scs_platform_signing_key.properties"

    const-string v1, "hash_signing_key"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getProperty(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getLongHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF_8"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v1, "getBytes(...)"

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    invoke-static {}, LA2/q;->p()Ljava/util/HexFormat;

    move-result-object v0

    invoke-static {v0, p1}, LA2/q;->o(Ljava/util/HexFormat;[B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :goto_1
    const-string v0, "AppInfoUtils"

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private final requestAccessToken(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p3, "AppInfoUtils"

    const-string v0, "[requestAccessToken] requestType ONDEVICE and network unavailable"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    invoke-direct {p3}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;-><init>()V

    invoke-virtual {p3, p2}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setRequestType(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->getAccountType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setAccountType(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->getSamsungAccountClientId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->getHashedApiKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setApiKey(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->getHashesSigningKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->setSigningKey(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$Builder;->build()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object p0

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-direct {p2, p0, v1, p3, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;ZILtb/f;)V

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;->onCreated(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$requestAccessToken$1;-><init>(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;)V

    invoke-static {p0, v1, p3}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->getAccessToken(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic requestAccessToken$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->requestAccessToken(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Ljava/lang/String;)V

    return-void
.end method

.method public static final declared-synchronized updateCache(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;Z)V
    .locals 5
    .param p0    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "updateCache : type : "

    const-class v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;

    monitor-enter v1

    :try_start_0
    const-string v2, "appInfoWrapper"

    invoke-static {p0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->setTokenExpired(Z)V

    sget-object v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->cache:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->getAppInfo()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getRequestType()Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AppInfoUtils"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->getAppInfo()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getRequestType()Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isExpired :  "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->getAppInfo()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/language/AppInfo;->getRequestType()Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, p0, v2, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBrowsingAssistAppInfoLastCachedTime(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic updateCache$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->updateCache(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;Z)V

    return-void
.end method
