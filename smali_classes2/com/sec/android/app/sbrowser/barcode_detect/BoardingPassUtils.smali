.class public Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final BARCODE_FORMAT_QR:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_BPD_ADDITION_METHOD:Ljava/lang/String; = "extra_bdp_addition_method"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_KEY_QR_DATA:Ljava/lang/String; = "extra_key_qr_data"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_KEY_QR_DATA_MAP:Ljava/lang/String; = "extra_key_qr_data_map"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_KEY_REFERRER:Ljava/lang/String; = "extra_key_referrer"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SI_BOARDING_PASS_REFERRER_STRING_FOR_WALLET:Ljava/lang/String; = "samsung_internet"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final URI_STRING_FOR_BOARDING_PASS_INTENT:Ljava/lang/String; = "samsungpay://launch?action=usbpc_add"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final sBDPRegex:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->BARCODE_FORMAT_QR:Ljava/lang/Integer;

    const-string v0, "^[m|M]1[\\w/&., -]{20}[a-zA-Z ]\\w{6}[\\w ][a-zA-Z]{3}[a-zA-Z]{3}\\w{2}[\\w ]\\d{4}[\\w ]\\d{3}[a-zA-Z](\\d{3}[a-zA-Z]|[ ]{4})(\\d{4}[\\d ]|[ ]{5})\\d\\w{2}[.]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->sBDPRegex:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static fireBoardingPassIntent(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "BoardingPassUtils"

    const-string p1, "Activity is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "samsungpay://launch?action=usbpc_add"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->getBundleForWallet(Ljava/util/List;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static getBundleForWallet(Ljava/util/List;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->BARCODE_FORMAT_QR:Ljava/lang/Integer;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "extra_key_referrer"

    const-string v3, "samsung_internet"

    const-string v4, "extra_bdp_addition_method"

    invoke-static {v2, v3, v4, p1}, LB/e;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "extra_key_qr_data_map"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "extra_key_qr_data"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->BARCODE_FORMAT_QR:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v0, "extra_key_qr_format"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public static isBoardingPass(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u00a0"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassUtils;->sBDPRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static isBoardingPassDetectionSupported()Z
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BoardingPassUtils"

    if-nez v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isCnApk()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfig;->isBoardingPassDetectionSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Boarding pass detection is not supported from Global Config"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v3, "com.samsung.android.spay"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v5, 0x2015ced9

    if-ge v3, v5, :cond_2

    const-string v0, "Korea Wallet App Version not supported"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v5, 0x209f237e

    if-ge v3, v5, :cond_3

    const-string v0, "India Wallet App Version not supported"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v3, 0x208cd3fe

    if-ge v0, v3, :cond_4

    const-string v0, "Global Wallet App Version not supported"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_4
    return v4

    :catch_0
    const-string v0, "Samsung Wallet is not installed"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    :goto_0
    const-string v0, "Not supported in GED device and China App"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isDataImageURL(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "data:image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDomainAllowed(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getInstance()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getAllowListedDomains()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getInstance()Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassData;->getAllowListedDomains()Ljava/util/HashSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/sbrowser/barcode_detect/d;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/barcode_detect/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPngDataImageURL(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "data:image/png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
