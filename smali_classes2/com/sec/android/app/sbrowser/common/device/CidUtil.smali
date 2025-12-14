.class public Lcom/sec/android/app/sbrowser/common/device/CidUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;
    }
.end annotation


# static fields
.field static final CID_RULES_ASSET_PATH:Ljava/lang/String; = "cid_rule/cid_rules.json"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CID_RULES_FILE_NAME:Ljava/lang/String; = "cid_rules.json"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static sIsEEA:Ljava/lang/Boolean;

.field private static sRSARules:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static applyNewRSARules(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cid_rules.json"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->loadRules(Landroid/content/Context;)V

    return-void
.end method

.method public static closeCursor(Ljava/io/Closeable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IOException when closing closeable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "CidUtil"

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->z(Ljava/io/IOException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getCidPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "ro.build.characteristics"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "tablet-"

    if-nez v1, :cond_0

    const-string p0, "tablet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "ms-"

    :goto_0
    return-object v2
.end method

.method public static getClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getClientId(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getClientId(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 16
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "value"

    const-string v1, "content://com.google.settings/partner"

    const-string v2, "CidUtil"

    const-string v3, "getClientId- base : "

    const-string v4, "getClientId- search : "

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getCidPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v5

    const-string v13, "android-google"

    if-nez v5, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSer()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "android-samsung-ss"

    invoke-static {v12, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_1
    const/4 v14, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "name=\'search_client_id\'"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x0

    if-eqz v15, :cond_2

    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->sanitizeSearchCid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "name=\'client_id\'"

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object v5, v11

    move v1, v10

    move-object v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    invoke-static {v14}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->closeCursor(Ljava/io/Closeable;)V

    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->closeCursor(Ljava/io/Closeable;)V

    move-object v0, v13

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v15, v14

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v15, v14

    :goto_1
    :try_start_2
    const-string v1, "RuntimeException : while getClientId "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    if-eqz p1, :cond_5

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getConvertedClientIDNewRSA(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getClientId- converted : "

    invoke-static {v1, v0, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :goto_3
    invoke-static {v14}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->closeCursor(Ljava/io/Closeable;)V

    invoke-static {v15}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->closeCursor(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    :goto_4
    invoke-static {v12, v13}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_5
    return-object v0
.end method

.method public static getClientIdForEarlyAccess(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android-google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getClientIdFromSystemProperty(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getClientIdFromSystemProperty(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getCidPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v1

    const-string v2, "android-google"

    if-nez v1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSer()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "android-samsung-ss"

    invoke-static {v0, p0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getClientBaseMs()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getClientBase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CidUtil"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getClientIdFromSystemProperty- cid_ms: "

    invoke-static {v0, v2, v4}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0, v3}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getClientIdFromSystemProperty- cid_base: "

    invoke-static {v0, v2, v4}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getConvertedClientIDNewRSA(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getClientIdFromSystemProperty- converted: "

    invoke-static {v0, p0, v4}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v0, v2}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static getConvertedClientIDNewRSA(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->sRSARules:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->loadRules(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->sRSARules:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->c(Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->b(Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->isEEADevice(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->d(Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method

.method public static getMatchedNewRSARuleName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->sRSARules:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->loadRules(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->sRSARules:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->c(Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->b(Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->isEEADevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;->a(Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static isEEADevice(Landroid/content/Context;)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->sIsEEA:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    iget-object v3, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const-string v4, "com.google.android.feature.EEA_DEVICE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "com.google.android.feature.EEA_V2_DEVICE"

    iget-object v2, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p0, "CidUtil"

    const-string v0, "EEA or EEA_V2 device"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->sIsEEA:Ljava/lang/Boolean;

    const/4 p0, 0x1

    return p0

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->sIsEEA:Ljava/lang/Boolean;

    :cond_3
    sget-object p0, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->sIsEEA:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static loadRules(Landroid/content/Context;)V
    .locals 11

    const-string v0, "cid_rules.json"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->isExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "cid_rule/cid_rules.json"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "CidUtil"

    const-string v0, "Cannot read file in remote or asset"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->sRSARules:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void

    :cond_2
    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_6

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const-string v4, "regex"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    const-string v5, "replacement"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "needToCheckEEA"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v3, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/common/device/CidUtil$RSARule;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;ZI)V

    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    sput-object p0, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->sRSARules:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static resetValueForIsEEA()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->sIsEEA:Ljava/lang/Boolean;

    return-void
.end method

.method public static sanitizeSearchCid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "ms-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tablet-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method
