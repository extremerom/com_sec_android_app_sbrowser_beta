.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R*\u0010\u0014\u001a\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u0012j\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Ldb/r;",
        "loadBlockList",
        "(Landroid/content/Context;)V",
        "Ljava/io/ByteArrayOutputStream;",
        "body",
        "initialize",
        "(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)V",
        "",
        "url",
        "",
        "isBlockedSite",
        "(Landroid/content/Context;Ljava/lang/String;)Z",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "antPathPatterns",
        "Ljava/util/ArrayList;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;",
        "antPathMatcher",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;",
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
.field public static final $stable:I

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final antPathMatcher:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static antPathPatterns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->antPathMatcher:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final loadBlockList(Landroid/content/Context;)V
    .locals 3

    const-string p0, "ai_summary_domain_block_list.json"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->isExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->antPathPatterns:Ljava/util/ArrayList;

    if-eqz p0, :cond_4

    invoke-static {p0}, LKc/k;->x(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->antPathPatterns:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    :goto_2
    const-string p1, "ArtificialIntelligenceBlockListUtil"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/ByteArrayOutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ai_summary_domain_block_list.json"

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->loadBlockList(Landroid/content/Context;)V

    return-void
.end method

.method public final isBlockedSite(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->antPathPatterns:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->loadBlockList(Landroid/content/Context;)V

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    new-instance p1, Ljava/net/URI;

    const/16 v0, 0x3f

    invoke-static {p2, v0}, LKc/k;->N(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->antPathPatterns:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-nez v1, :cond_3

    move-object v1, v2

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_0
    sget-object v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->antPathMatcher:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/AntPathMatcher;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_5
    :goto_1
    return p0

    :goto_2
    const-string p2, "ArtificialIntelligenceBlockListUtil"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
