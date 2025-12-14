.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0007\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0013\u0010\u000bJ\u0017\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0015\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;",
        "",
        "<init>",
        "()V",
        "",
        "data",
        "",
        "decodeBase64",
        "(Ljava/lang/String;)[B",
        "expression",
        "computeFullHash",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "rawHashes",
        "",
        "prefixSize",
        "",
        "getPrefixHashes",
        "(Ljava/lang/String;I)Ljava/util/List;",
        "base64RawHash",
        "getEncodeHexByBase64String",
        "hexPrefixHash",
        "getEncodeBase64ByHexString",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final decodeBase64(Ljava/lang/String;)[B
    .locals 2

    new-instance p0, Lzd/a;

    invoke-direct {p0}, Lzd/a;-><init>()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lzd/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    array-length v1, p1

    invoke-virtual {p0, p1, v1, v0}, Lzd/a;->c([BILzd/b;)V

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lzd/a;->c([BILzd/b;)V

    iget p0, v0, Lzd/b;->c:I

    new-array p1, p0, [B

    invoke-static {p1, p0, v0}, Lzd/c;->b([BILzd/b;)V

    :cond_2
    :goto_1
    const-string p0, "decode(...)"

    invoke-static {p1, p0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final computeFullHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :goto_0
    const-string p1, "SHA-256"

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lzd/d;->b([B)[C

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getEncodeBase64ByHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lzd/d;->a:[C

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lzd/d;->a([C)[B

    move-result-object p0

    invoke-static {p0}, Lzd/a;->e([B)Ljava/lang/String;

    move-result-object p0

    const-string p1, "encodeBase64String(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getEncodeHexByBase64String(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lzd/a;

    invoke-direct {p0}, Lzd/a;-><init>()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lzd/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    array-length v1, p1

    invoke-virtual {p0, p1, v1, v0}, Lzd/a;->c([BILzd/b;)V

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lzd/a;->c([BILzd/b;)V

    iget p0, v0, Lzd/b;->c:I

    new-array p1, p0, [B

    invoke-static {p1, p0, v0}, Lzd/c;->b([BILzd/b;)V

    :cond_2
    :goto_1
    invoke-static {p1}, Lzd/d;->b([B)[C

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public final getPrefixHashes(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/HashingUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, v0, p2

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lzd/d;->b([B)[C

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_0
    return-object p1
.end method
