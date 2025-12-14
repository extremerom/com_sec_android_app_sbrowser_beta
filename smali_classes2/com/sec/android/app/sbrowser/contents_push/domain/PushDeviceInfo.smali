.class public Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;
    }
.end annotation


# static fields
.field private static sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    return-void
.end method

.method public static bridge synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->isTablet()Z

    move-result v0

    return v0
.end method

.method private static appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "="

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appendQuery: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PushDeviceInfo"

    invoke-static {v1, p2}, Lcom/sec/sbrowser/spl/wrapper/MajoLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createJsonBytes()[B
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getPushType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ty"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getPushToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "to"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "av"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getInternetVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getLocale()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getInternetRelease()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ir"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ma"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tz"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ui"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static createParams()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getPushType()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "ty"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getPushToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "to"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "av"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mo"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dt"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "oc"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getInternetVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "iv"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cc"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getLocale()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lo"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getInternetRelease()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ir"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ma"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tz"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->appendQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-static {v1, v0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGetter()Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    return-object v0
.end method

.method private static isTablet()Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "ro.build.characteristics"

    const-string v2, "phone"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static setGetter(Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo;->sGetter:Lcom/sec/android/app/sbrowser/contents_push/domain/PushDeviceInfo$Getter;

    return-void
.end method
