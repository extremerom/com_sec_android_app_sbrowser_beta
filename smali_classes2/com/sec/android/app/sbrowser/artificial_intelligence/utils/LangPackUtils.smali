.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000fH\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0015\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001c\u001a\u0010\u0012\u000c\u0012\n \u001b*\u0004\u0018\u00010\u00060\u00060\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;",
        "",
        "<init>",
        "()V",
        "Ljava/util/Locale;",
        "locale",
        "",
        "getDisplayNameWithCountry",
        "(Ljava/util/Locale;)Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "Ldb/r;",
        "updateSupportLangMap",
        "(Landroid/content/Context;)V",
        "languageCode",
        "",
        "withCountry",
        "getDisplayName",
        "(Ljava/lang/String;Z)Ljava/lang/String;",
        "getLocaleDefaultLanguageCode",
        "()Ljava/lang/String;",
        "",
        "getDefaultSupportLangMap",
        "()Ljava/util/Map;",
        "supportLangMap",
        "Ljava/util/Map;",
        "",
        "kotlin.jvm.PlatformType",
        "requiredCountryLanguages",
        "Ljava/util/List;",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final requiredCountryLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private supportLangMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getDefaultSupportLangMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->supportLangMap:Ljava/util/Map;

    const-string v0, "es"

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fr"

    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->requiredCountryLanguages:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->updateSupportLangMap$lambda$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;)V

    return-void
.end method

.method public static final synthetic access$setSupportLangMap$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->supportLangMap:Ljava/util/Map;

    return-void
.end method

.method private final getDisplayNameWithCountry(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6e72b6a

    if-eq v1, v2, :cond_6

    const v2, 0x6e72c02

    if-eq v1, v2, :cond_3

    const v2, 0x6e72d82

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "zh-TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f140665

    goto :goto_1

    :cond_2
    const v0, 0x7f140664

    goto :goto_1

    :cond_3
    const-string v1, "zh-HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f140663

    goto :goto_1

    :cond_5
    const v0, 0x7f140662

    goto :goto_1

    :cond_6
    const-string v1, "zh-CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f140660

    goto :goto_1

    :cond_7
    const v0, 0x7f140661

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getDisplayName(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_9
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    move-result-object v0

    return-object v0
.end method

.method private static final updateSupportLangMap$lambda$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$updateSupportLangMap$1$1;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$updateSupportLangMap$1$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getSupportAllLanguageInfo(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;)V

    return-void
.end method


# virtual methods
.method public final getDefaultSupportLangMap()Ljava/util/Map;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ldb/j;

    const-string v1, "de"

    invoke-direct {v0, v1, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ldb/j;

    const-string v2, "hi"

    invoke-direct {v1, v2, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ldb/j;

    const-string v3, "no"

    invoke-direct {v2, v3, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ldb/j;

    const-string v4, "fi"

    invoke-direct {v3, v4, v4}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Ldb/j;

    const-string v5, "bg"

    invoke-direct {v4, v5, v5}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Ldb/j;

    const-string v6, "hr"

    invoke-direct {v5, v6, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Ldb/j;

    const-string v7, "bn"

    invoke-direct {v6, v7, v7}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Ldb/j;

    const-string v8, "fr"

    invoke-direct {v7, v8, v8}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Ldb/j;

    const-string v9, "hu"

    invoke-direct {v8, v9, v9}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Ldb/j;

    const-string v10, "id"

    invoke-direct {v9, v10, v10}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Ldb/j;

    const-string v11, "sr"

    invoke-direct {v10, v11, v11}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Ldb/j;

    const-string v12, "ptbr"

    const-string v13, "pt-BR"

    invoke-direct {v11, v12, v13}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Ldb/j;

    const-string v13, "sv"

    invoke-direct {v12, v13, v13}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Ldb/j;

    const-string v14, "esus"

    const-string v15, "es-US"

    invoke-direct {v13, v14, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    const-string v15, "ko"

    invoke-direct {v14, v15, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Ldb/j;

    move-object/from16 p0, v14

    const-string v14, "mr"

    invoke-direct {v15, v14, v14}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    move-object/from16 v16, v15

    const-string v15, "en"

    invoke-direct {v14, v15, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Ldb/j;

    move-object/from16 v17, v14

    const-string v14, "it"

    invoke-direct {v15, v14, v14}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    move-object/from16 v18, v15

    const-string v15, "ta"

    invoke-direct {v14, v15, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Ldb/j;

    move-object/from16 v19, v14

    const-string v14, "es"

    move-object/from16 v20, v13

    const-string v13, "es-ES"

    invoke-direct {v15, v14, v13}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    const-string v13, "gu"

    invoke-direct {v14, v13, v13}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Ldb/j;

    move-object/from16 v21, v14

    const-string v14, "zh"

    invoke-direct {v13, v14, v14}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    move-object/from16 v22, v13

    const-string v13, "cs"

    invoke-direct {v14, v13, v13}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Ldb/j;

    move-object/from16 v23, v14

    const-string v14, "ar"

    invoke-direct {v13, v14, v14}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    move-object/from16 v24, v13

    const-string v13, "te"

    invoke-direct {v14, v13, v13}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Ldb/j;

    move-object/from16 v25, v14

    const-string v14, "vi"

    move-object/from16 v26, v15

    const-string v15, "vi"

    invoke-direct {v13, v14, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Ldb/j;

    const-string v14, "th"

    move-object/from16 v27, v13

    const-string v13, "th"

    invoke-direct {v15, v14, v13}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    const-string v13, "esmx"

    move-object/from16 v28, v15

    const-string v15, "es-MX"

    invoke-direct {v14, v13, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Ldb/j;

    const-string v13, "ja"

    move-object/from16 v29, v14

    const-string v14, "ja"

    invoke-direct {v15, v13, v14}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    const-string v13, "fa"

    move-object/from16 v30, v15

    const-string v15, "fa"

    invoke-direct {v14, v13, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Ldb/j;

    const-string v13, "pl"

    move-object/from16 v31, v14

    const-string v14, "pl"

    invoke-direct {v15, v13, v14}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    const-string v13, "da"

    move-object/from16 v32, v15

    const-string v15, "da"

    invoke-direct {v14, v13, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Ldb/j;

    const-string v13, "he"

    move-object/from16 v33, v14

    const-string v14, "he"

    invoke-direct {v15, v13, v14}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    const-string v13, "ro"

    move-object/from16 v34, v15

    const-string v15, "ro"

    invoke-direct {v14, v13, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Ldb/j;

    const-string v13, "nl"

    move-object/from16 v35, v14

    const-string v14, "nl"

    invoke-direct {v15, v13, v14}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    const-string v13, "tr"

    move-object/from16 v36, v15

    const-string v15, "tr"

    invoke-direct {v14, v13, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Ldb/j;

    const-string v13, "zhhk"

    move-object/from16 v37, v14

    const-string v14, "zh-HK"

    invoke-direct {v15, v13, v14}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    const-string v13, "zhtw"

    move-object/from16 v38, v15

    const-string v15, "zh-TW"

    invoke-direct {v14, v13, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Ldb/j;

    const-string v13, "frca"

    move-object/from16 v39, v14

    const-string v14, "fr-CA"

    invoke-direct {v15, v13, v14}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Ldb/j;

    const-string v13, "ru"

    move-object/from16 v40, v15

    const-string v15, "ru"

    invoke-direct {v14, v13, v15}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v13, v20

    move-object/from16 v41, v14

    move-object/from16 v20, v21

    move-object/from16 v14, p0

    move-object/from16 v21, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v36

    move-object/from16 v36, v38

    move-object/from16 v38, v40

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v37

    move-object/from16 v37, v39

    move-object/from16 v39, v41

    filled-new-array/range {v0 .. v39}, [Ldb/j;

    move-result-object v0

    invoke-static {v0}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->supportLangMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->requiredCountryLanguages:Ljava/util/List;

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getDisplayNameWithCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getDisplayName(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getLocaleDefaultLanguageCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pt"

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ptbr"

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getLanguage(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final updateSupportLangMap(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, LGa/d;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p1, p0}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LangPackUtils"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
