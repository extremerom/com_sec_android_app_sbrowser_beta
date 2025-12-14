.class public Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sCallback:Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;

.field private static sRecorder:Lcom/sec/android/app/sbrowser/common/extensions/SixAppLogRecorderCallback;


# direct methods
.method public static synthetic a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->lambda$showTurnOnMsgInSecretMode$0(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static checkAndShowTrunOnMsgInSecretMode(ZLandroid/app/Activity;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getSecretModeState(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showTurnOnMsgInSecretMode(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static compareExtVersions(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "[0-9]+(\\.[0-9]+)*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_1

    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    if-ge v3, v4, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    if-le v3, v4, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ver2 invalid format: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ver2 empty. not comparable."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ver1 invalid format: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ver1 empty. not comparable."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static detectSixOrigin(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "detectSixOrigin - running for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SixUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixFirstPartyListData;->getFirstPartyList(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/extensions/SixFirstPartyListData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "detectSixOrigin - False. No 1st party list found."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixFirstPartyListData;->showFirstPartyListData()V

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixFirstPartyListData;->isInFirstPartyList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->storeSIXOrigin(Ljava/lang/String;I)V

    return p1
.end method

.method public static getActionStatus(ZLandroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getSecretModeState(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getAppStatusLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->sRecorder:Lcom/sec/android/app/sbrowser/common/extensions/SixAppLogRecorderCallback;

    if-nez v0, :cond_0

    const-string p0, "SixUtil"

    const-string v0, "getAppStatusLog - abort. null callback"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppLogRecorderCallback;->getAppStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNativeExtVer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstalledExtVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isEnabledInNative(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->isEnabledInNative(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEnabledTrans()Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/six/SixConstants;->LogIDs:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isEnabledInNative(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFirstPartySix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SixUtil"

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "isFirstPartySix - False. extId and pkgName empty."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->readSIXOrigin(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->detectSixOrigin(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "isFirstPartySix - returning "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-ne v0, p0, :cond_2

    move v1, p0

    :cond_2
    return v1
.end method

.method public static isFocused(Landroid/app/Activity;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->sCallback:Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;->isFocused(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isInstalledInNative(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->isInstalledInNative(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isTransBarShowing(Landroid/app/Activity;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->sCallback:Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTransBarTranslated(Landroid/app/Activity;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->sCallback:Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;->isTransBarTranslated(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$showTurnOnMsgInSecretMode$0(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->updateSecretModeState(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAppLogRecorder(Lcom/sec/android/app/sbrowser/common/extensions/SixAppLogRecorderCallback;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->sRecorder:Lcom/sec/android/app/sbrowser/common/extensions/SixAppLogRecorderCallback;

    return-void
.end method

.method public static setTargetLang(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->sCallback:Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;->setTargetLang(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setTransBarCallback(Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;)V
    .locals 0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->sCallback:Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;

    return-void
.end method

.method public static showAllowedMsgForOIOW(Landroid/app/Activity;ZZLjava/lang/String;)V
    .locals 6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140fa8

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showSnackBar(Landroid/app/Activity;ILjava/lang/String;IILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140fba

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showSnackBar(Landroid/app/Activity;ILjava/lang/String;IILandroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static showAppStatusLog(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->sRecorder:Lcom/sec/android/app/sbrowser/common/extensions/SixAppLogRecorderCallback;

    if-nez v0, :cond_0

    const-string p0, "SixUtil"

    const-string v0, "showAppStatusLog - abort. null callback"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppLogRecorderCallback;->printAppStatus(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    return-void
.end method

.method public static showMsgInSecretMode(Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 12

    if-eqz p0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->canBeSecretModeEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getSecretModeState(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const v1, 0x7f140f97

    const-string v2, ""

    const/4 v3, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showSnackBar(Landroid/app/Activity;ILjava/lang/String;IILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showTurnOnMsgInSecretMode(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v10, -0x1

    const/4 v11, 0x0

    const v7, 0x7f140f95

    const-string v8, ""

    const/4 v9, -0x1

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showSnackBar(Landroid/app/Activity;ILjava/lang/String;IILandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    const/4 v5, 0x0

    const v1, 0x7f140f94

    const-string v2, ""

    const/4 v3, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showSnackBar(Landroid/app/Activity;ILjava/lang/String;IILandroid/view/View$OnClickListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static showSnackBar(Landroid/app/Activity;ILjava/lang/String;IILandroid/view/View$OnClickListener;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;

    move-result-object p1

    if-eq p4, v0, :cond_2

    if-eqz p5, :cond_2

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, LH6/o;->k(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    const p2, 0x7f060223

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    iget-object p2, p1, LH6/m;->i:LH6/l;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {p2}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const/16 p0, 0x1f4

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showWithDelay(LH6/o;I)V

    return-void
.end method

.method private static showTurnOnMsgInSecretMode(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    new-instance v5, LK6/a;

    const/4 v0, 0x6

    invoke-direct {v5, v0, p1}, LK6/a;-><init>(ILjava/lang/Object;)V

    const/4 v3, -0x1

    const v4, 0x7f140f98

    const v1, 0x7f140f96

    const-string v2, ""

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showSnackBar(Landroid/app/Activity;ILjava/lang/String;IILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static showWebTransErrMsg(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140fb5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140fb6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140fb7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140fb8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v2, -0x1

    const/4 v4, -0x1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showSnackBar(Landroid/app/Activity;ILjava/lang/String;IILandroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Mode"

    invoke-virtual {p0, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "Result"

    if-nez p1, :cond_4

    const-string p1, "NotSupport"

    invoke-virtual {p0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const-string p1, "NoLanguage"

    invoke-virtual {p0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string p1, "201"

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method private static showWithDelay(LH6/o;I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil$1;-><init>(LH6/o;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static updateAppStatusLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->sRecorder:Lcom/sec/android/app/sbrowser/common/extensions/SixAppLogRecorderCallback;

    if-nez v0, :cond_0

    const-string p0, "SixUtil"

    const-string p1, "updateAppStatusLog - abort. null callback"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppLogRecorderCallback;->recordAppStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateTransMode()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->sCallback:Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixTransBarCallback;->updateTransMode()V

    :cond_0
    return-void
.end method
