.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$Companion;,
        Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0002\u0013\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bJ\u0014\u0010\r\u001a\u00060\u000eR\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0002J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;",
        "",
        "<init>",
        "()V",
        "percentEncoder",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/PercentEncoder;",
        "urlSplitter",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter;",
        "ipUtils",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;",
        "canonicalize",
        "",
        "url",
        "normalize",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;",
        "convertSlashHexSymbols",
        "str",
        "percentUnescape",
        "input",
        "Companion",
        "NormalizedUrl",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HEX_SYMBOL_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_SCHEME_PATTERN:Ljava/util/regex/Pattern;

.field private static final PERCENT_SYMBOL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final ipUtils:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final percentEncoder:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/PercentEncoder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final urlSplitter:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$Companion;

    const-string v0, "^https?://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->HTTP_SCHEME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "%[0-9a-f]{2}"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->PERCENT_SYMBOL_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\\\x([0-9a-f]+)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->HEX_SYMBOL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/PercentEncoder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/PercentEncoder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->percentEncoder:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/PercentEncoder;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->urlSplitter:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->ipUtils:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;

    return-void
.end method

.method private final convertSlashHexSymbols(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->HEX_SYMBOL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final normalize(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Ltb/k;->h(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->HTTP_SCHEME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "http://"

    invoke-static {v0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    sget-object v0, Lcom/google/common/base/e;->c:Lcom/google/common/base/e;

    invoke-virtual {v0, p1}, Lcom/google/common/base/C;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getHost(...)"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p1, v0, v1}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_7
    const-string v0, "[\t\r\n]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "input"

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "replaceAll(...)"

    invoke-static {p1, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    const/16 v5, 0x23

    invoke-static {p1, v5, v2, v2, v4}, LKc/k;->u(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v2, "substring(...)"

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->percentUnescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->urlSplitter:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter;->split(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter$UrlParts;

    move-result-object v2

    if-eqz v2, :cond_c

    new-instance v4, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;

    invoke-direct {v4, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter$UrlParts;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;->setMHost(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter$UrlParts;->getPort()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter$UrlParts;->getPort()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "replaceFirst(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;->setMUrl(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v4, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;->setMUrl(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter$UrlParts;->getPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    const-string p0, "/"

    invoke-virtual {v4, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;->setMPath(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter$UrlParts;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;->setMUrl(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/UrlSplitter$UrlParts;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;->setMPath(Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-object v4

    :cond_c
    new-instance p0, Ljava/net/MalformedURLException;

    const-string v0, "Can not divide URL into host, path, and query parts: "

    invoke-static {v0, p1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final percentUnescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :goto_0
    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->PERCENT_SYMBOL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->percentEncoder:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/PercentEncoder;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/PercentEncoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "$"

    invoke-static {v0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\\"

    if-nez v2, :cond_0

    invoke-static {v0, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v3, v0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v1, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    return-object p1
.end method


# virtual methods
.method public final canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->normalize(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;->getMHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^\\.+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "compile(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "input"

    invoke-static {v0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "replaceFirst(...)"

    invoke-static {v0, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "\\.+$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-static {v5, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "\\.{2,}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "replaceAll(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "getDefault(...)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "toLowerCase(...)"

    invoke-static {v0, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->ipUtils:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->ipUtils:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->isDecimalIpAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->ipUtils:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->toInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;->getMPath()Ljava/lang/String;

    move-result-object v4

    const-string v6, "/\\./"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-static {v6, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "/\\w+/\\.\\./?"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-static {v6, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "/{2,}"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-static {v6, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;->getMUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;->getMHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization$NormalizedUrl;->getMPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string v1, "toCharArray(...)"

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-char v3, p1, v2

    const/16 v4, 0x20

    if-le v3, v4, :cond_2

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_2

    const/16 v4, 0x23

    if-eq v3, v4, :cond_2

    const/16 v4, 0x25

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->percentEncoder:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/PercentEncoder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/PercentEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toUpperCase(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/Canonicalization;->convertSlashHexSymbols(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
