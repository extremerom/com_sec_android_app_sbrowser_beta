.class public Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SCAFE_AMERICANO:Z

.field public static final SCAFE_LATTE:Z

.field public static final SCAFE_MOCHA:Z

.field public static final SEARCH_ENGINES_CHINA:[Ljava/lang/String;

.field public static final SEARCH_ENGINES_RUSSIA:[Ljava/lang/String;

.field public static final SETTING_FRAGMENT_SEARCHABLE_XML_LIST:[I

.field public static final SETTING_SEARCH_GROUP_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "nano360"

    const-string v1, "so360"

    const-string v2, "baidu"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SEARCH_ENGINES_CHINA:[Ljava/lang/String;

    const-string v5, "youtube"

    const-string v6, "mail_ru"

    const-string v1, "yandex_ru"

    const-string v2, "google"

    const-string v3, "bing"

    const-string v4, "DuckDuckGo"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SEARCH_ENGINES_RUSSIA:[Ljava/lang/String;

    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->getTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "americano"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SCAFE_AMERICANO:Z

    const-string v1, "mocha"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->getTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SCAFE_MOCHA:Z

    const-string v1, "latte"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->getTypeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SCAFE_LATTE:Z

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SETTING_FRAGMENT_SEARCHABLE_XML_LIST:[I

    array-length v0, v0

    sput v0, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SETTING_SEARCH_GROUP_COUNT:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f180071
        0x7f180025
        0x7f180052
        0x7f180051
        0x7f180076
        0x7f180084
        0x7f180040
        0x7f180043
        0x7f180013
        0x7f180075
        0x7f18007b
        0x7f18005f
        0x7f180009
        0x7f180061
        0x7f180080
        0x7f180045
    .end array-data
.end method

.method private static getTypeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
