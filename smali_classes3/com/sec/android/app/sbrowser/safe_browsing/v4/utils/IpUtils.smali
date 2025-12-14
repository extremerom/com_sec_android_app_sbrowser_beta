.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;",
        "",
        "<init>",
        "()V",
        "isIpAddress",
        "",
        "ip",
        "",
        "isDecimalIpAddress",
        "isBinaryIpAddress",
        "isOctalEncodedIpAddress",
        "isHexEncodedIpAddress",
        "isNumericIpAddress",
        "toInetAddress",
        "Ljava/net/InetAddress;",
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
.field private static final BIN_PATTERN:Ljava/util/regex/Pattern;

.field public static final Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DECIMAL_PATTERN:Ljava/util/regex/Pattern;

.field private static final HEX_PATTERN:Ljava/util/regex/Pattern;

.field private static final OCTAL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils$Companion;

    const-string v0, "(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->DECIMAL_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[01]{32}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->BIN_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "([0-7]{1,4})\\.([0-7]{1,4})\\.([0-7]{1,4})\\.([0-7]{1,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->OCTAL_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "0x([0-9a-f]{1,2})\\.0x([0-9a-f]{1,2})\\.0x([0-9a-f]{1,2})\\.0x([0-9a-f]{1,2})"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->HEX_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isBinaryIpAddress(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->BIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private final isHexEncodedIpAddress(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->HEX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private final isNumericIpAddress(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isOctalEncodedIpAddress(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->OCTAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final isDecimalIpAddress(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "ip"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->DECIMAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public final isIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ip"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->isDecimalIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->isBinaryIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->isOctalEncodedIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->isHexEncodedIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->isNumericIpAddress(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final toInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/16 v4, 0x10

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "ip"

    invoke-static {p1, v7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->isDecimalIpAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p1}, Lcom/google/common/net/a;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v7, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->BIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result p0

    sget-object p1, Lcom/google/common/net/a;->a:Lcom/google/common/base/h;

    shr-int/lit8 p1, p0, 0x18

    int-to-byte p1, p1

    shr-int/lit8 v4, p0, 0x10

    int-to-byte v4, v4

    shr-int/lit8 v3, p0, 0x8

    int-to-byte v3, v3

    int-to-byte p0, p0

    new-array v2, v2, [B

    aput-byte p1, v2, v1

    aput-byte v4, v2, v6

    aput-byte v3, v2, v5

    aput-byte p0, v2, v0

    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p0, Ljava/net/Inet4Address;

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    sget-object v7, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->OCTAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const-string v9, "."

    const/4 v10, 0x5

    const-string v11, ""

    if-eqz v8, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move p1, v6

    :goto_0
    if-ge p1, v10, :cond_2

    invoke-virtual {v7, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v3}, LG5/W3;->a(I)V

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr p1, v6

    move-object v11, v9

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/a;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v7, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->HEX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    move p1, v6

    :goto_1
    if-ge p1, v10, :cond_4

    invoke-virtual {v7, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v4}, LG5/W3;->a(I)V

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr p1, v6

    move-object v11, v9

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/net/a;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/IpUtils;->isNumericIpAddress(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result p0

    sget-object p1, Lcom/google/common/net/a;->a:Lcom/google/common/base/h;

    shr-int/lit8 p1, p0, 0x18

    int-to-byte p1, p1

    shr-int/lit8 v4, p0, 0x10

    int-to-byte v4, v4

    shr-int/lit8 v3, p0, 0x8

    int-to-byte v3, v3

    int-to-byte p0, p0

    new-array v2, v2, [B

    aput-byte p1, v2, v1

    aput-byte v4, v2, v6

    aput-byte v3, v2, v5

    aput-byte p0, v2, v0

    :try_start_1
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    check-cast p0, Ljava/net/Inet4Address;

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_6
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method
