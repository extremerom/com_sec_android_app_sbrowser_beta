.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$ConsentStatusCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.sec.android.app.sbrowser.artificial_intelligence.utils.WebAssistUtil"

.field public static sBrowsingAssistAnimationShown:Z = false

.field private static sIgnoreConsent:Z = false

.field private static sIsConsentListReceived:Z = false

.field private static sIsRequestInProgress:Z = false

.field private static final sNormalizeCountry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNormalizeLanguage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    :try_start_0
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sNormalizeLanguage:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    :try_start_1
    new-instance v6, Ljava/util/Locale;

    const-string v7, ""

    invoke-direct {v6, v7, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sNormalizeCountry:Ljava/util/Map;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sSharedPrefs:Landroid/content/SharedPreferences;

    sput-boolean v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sIgnoreConsent:Z

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic b()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static bridge synthetic c(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sIsConsentListReceived:Z

    return-void
.end method

.method public static bridge synthetic d()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sIsRequestInProgress:Z

    return-void
.end method

.method private static getClickAbleSpan(Landroid/app/Activity;Ljava/lang/String;II)Landroid/text/style/ClickableSpan;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$3;-><init>(IILandroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Failed to convert "

    const-string v3, ""

    if-nez v0, :cond_2

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    array-length v5, v0

    const/4 v6, 0x3

    if-le v5, v6, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to a valid Locale object. Too many separators"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object v0, v3

    move-object v3, v4

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    sget-object v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sNormalizeLanguage:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v3, v4

    :cond_3
    sget-object v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sNormalizeCountry:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object v0, v4

    :cond_4
    sget-object v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "parseLocalePref("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to a valid Locale object."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "%1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "%2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-string v2, ""

    filled-new-array {v2, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-gez v0, :cond_0

    return-object v2

    :cond_0
    const/4 p1, 0x1

    invoke-static {p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getClickAbleSpan(Landroid/app/Activity;Ljava/lang/String;II)Landroid/text/style/ClickableSpan;

    move-result-object p0

    const/16 p1, 0x21

    invoke-virtual {v2, p0, v0, v1, p1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method public static getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/Spannable;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "%1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "%2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-string v2, "%3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    const-string v3, "%4"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0xc

    const-string v4, ""

    filled-new-array {v4, v4, v4, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-ltz v0, :cond_1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p2, p4, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getClickAbleSpan(Landroid/app/Activity;Ljava/lang/String;II)Landroid/text/style/ClickableSpan;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p3, p4, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getClickAbleSpan(Landroid/app/Activity;Ljava/lang/String;II)Landroid/text/style/ClickableSpan;

    move-result-object p0

    const/16 p2, 0x21

    invoke-virtual {v4, p1, v0, v1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, p0, v2, v3, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    :goto_0
    return-object v4
.end method

.method public static isPreventOnlineProcessingTurnedOn(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "prevent_online_processing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isSamsungAccountLogin()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->hasAccount()Z

    move-result v0

    return v0
.end method

.method public static isTnCVersionSupported(Landroid/app/Activity;)Z
    .locals 4

    const-string v0, "TNC_SYS_VER version : "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.osp.app.signin"

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string v2, "TNC_SYS_VER"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    sget-object v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception p0

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    const-string v2, "Error : "

    invoke-static {p0, v2, v0}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public static loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    if-lez v1, :cond_0

    new-instance p0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z
    .locals 3
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->skipUserConsent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;->onResult(Z)V

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->showBrowsingAssistDialogIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-interface {p2, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;->onResult(Z)V

    :cond_2
    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    const-string p1, "Web assist is blocked by ParentalControl"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRetailMode()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    invoke-interface {p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;->onResult(Z)V

    :cond_4
    return v1

    :cond_5
    if-nez p1, :cond_7

    if-eqz p2, :cond_6

    invoke-interface {p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;->onResult(Z)V

    :cond_6
    return v1

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConsentActivity(Landroid/app/Activity;)V

    if-eqz p2, :cond_8

    invoke-interface {p2, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;->onResult(Z)V

    :cond_8
    return v2

    :cond_9
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isUserConsentRequired(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConsentActivity(Landroid/app/Activity;)V

    if-eqz p2, :cond_a

    invoke-interface {p2, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;->onResult(Z)V

    :cond_a
    return v2

    :cond_b
    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$1;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;Landroid/app/Activity;)V

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->startConsentAgreement(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)V

    return v1
.end method

.method public static setIgnoreConsent()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sIgnoreConsent:Z

    return-void
.end method

.method public static startAddSamsungAccountActivity(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.samsungaccount.SIGNIN_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "client_id"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->getSamsungAccountClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_secret"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mypackage"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "OSP_VER"

    const-string v2, "OSP_02"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v2, "ADD_ACCOUNT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x947

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    const-string v0, "Failed to start AddSamsungAccountActivity!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static startConfirmPasswordSamsungAccountActivity(Landroid/app/Activity;)V
    .locals 3

    const-string v0, ""

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "client_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "client_secret"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mypackage"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "OSP_VER"

    const-string v2, "OSP_02"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "MODE"

    const-string v2, "ADD_ACCOUNT"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x947

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    const-string v0, "Failed to start startConfirmPasswordSamsungAccountActivity!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static startConsentActivity(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    const-string v1, "[startConsentActivity] intelligent features"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.action.INTELLIGENT_FEATURES_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    const-string v1, "[startConsentActivity] intelligence service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.settings.action.INTELLIGENCE_SERVICE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_calling_package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "full_screen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x946

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    const-string v0, "Failed to start ConsentActivity!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static startConsentAgreement(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isAISupportedByRegionAndAge()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isTnCVersionSupported(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;->onResult(Z)V

    :cond_2
    return-void

    :cond_3
    sget-boolean p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sIgnoreConsent:Z

    if-eqz p0, :cond_5

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    const-string v0, "checking consent is passed, because its already passed in this process"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;->onResult(Z)V

    :cond_4
    return-void

    :cond_5
    sget-boolean p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sIsRequestInProgress:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    const-string v0, "ConsentList request already in progress"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;->onResult(Z)V

    :cond_6
    return-void

    :cond_7
    sput-boolean v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sIsRequestInProgress:Z

    sget-boolean p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sIsConsentListReceived:Z

    if-nez p0, :cond_9

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    const-string v0, "Consent requested"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;->onResult(Z)V

    :cond_8
    const/4 p1, 0x0

    :cond_9
    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$2;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$2;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)V

    sget-boolean p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sIsConsentListReceived:Z

    xor-int/2addr p1, v1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService;->getAccessToken(Lcom/sec/android/app/sbrowser/common/account/SamsungAccountService$SAAccessTokenCallback;Z)V

    return-void
.end method

.method public static startConsentAgreementActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->getNetworkCountryCodeISO3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    :cond_0
    const-string v1, "com.samsung.android.samsungaccount.action.REQUEST_CONSENT_AGREEMENT"

    const-string v2, "com.osp.app.signin"

    invoke-static {v1, v2}, LV0/c;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "client_id"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/account/SamsungAccountUtil;->getSamsungAccountClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "application_region"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_version"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p1

    const-string v0, "language"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "region"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    const-string p2, "starting ConsentAgreementActivity"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x948

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    const-string p1, "Activity not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static startIntelligenceGlobalSettings(Landroid/app/Activity;)V
    .locals 6

    const-string v0, "[startIntelligenceGlobalSettings] isSecureFolderMode: "

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.samsung.android.settings.action.INTELLIGENT_FEATURES_GLOBAL_SETTINGS"

    goto :goto_0

    :cond_0
    const-string v2, "com.samsung.android.settings.action.INTELLIGENCE_SERVICE_GLOBAL_SETTINGS"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, ":settings:fragment_args_key"

    const-string v4, "prevent_online_processing"

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettingsManager;->isSecureFolderMode()Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ":settings:show_fragment_tab"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string v0, ":settings:show_fragment_args"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->TAG:Ljava/lang/String;

    const-string v0, "Failed to start IntelligenceGlobalSettings!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static updateConsentStatus(I)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->sSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ConsentResult"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
