.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "getInstance",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;",
        "context",
        "Landroid/content/Context;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;->getInstance$lambda$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getInstance$default(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    move-result-object p0

    return-object p0
.end method

.method private static final getInstance$lambda$0(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;
    .locals 7

    new-instance v6, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "getApplicationContext(...)"

    invoke-static {v1, p0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;LNc/x;ILtb/f;)V

    return-object v6
.end method


# virtual methods
.method public final getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    move-result-object p0

    return-object p0
.end method

.method public final getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/common/account/b;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/account/b;-><init>(Landroid/content/Context;I)V

    const-class p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getOrCreate(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    return-object p0
.end method
