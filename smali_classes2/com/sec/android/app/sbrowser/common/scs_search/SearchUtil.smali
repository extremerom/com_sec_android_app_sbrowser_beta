.class public Lcom/sec/android/app/sbrowser/common/scs_search/SearchUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sIsKorean:Z

.field private static sPattern:Ljava/util/regex/Pattern;

.field private static sPreviousSearchedString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/common/scs_search/SearchUtil;->sIsKorean:Z

    return-void
.end method

.method public static getQueryForKorean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-boolean v0, Lcom/sec/android/app/sbrowser/common/scs_search/SearchUtil;->sIsKorean:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/scs_search/SearchUtil;->sPreviousSearchedString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/scs_search/SearchUtil;->sPreviousSearchedString:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?i)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "\\E\\s?\\Q"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/scs_search/SearchUtil;->sPattern:Ljava/util/regex/Pattern;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/scs_search/SearchUtil;->sPattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method
