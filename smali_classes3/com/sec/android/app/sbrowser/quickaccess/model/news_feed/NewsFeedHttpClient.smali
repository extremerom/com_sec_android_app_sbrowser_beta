.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\'\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedHttpClient;",
        "",
        "<init>",
        "()V",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;",
        "profile",
        "",
        "name",
        "value",
        "Lhd/C;",
        "createHeaderInterceptor",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;Ljava/lang/String;Ljava/lang/String;)Lhd/C;",
        "Lvd/c;",
        "createNetworkInterceptor",
        "()Lvd/c;",
        "Lhd/I;",
        "createHttpClient",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;)Lhd/I;",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedHttpClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedHttpClient;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedHttpClient;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedHttpClient;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedHttpClient;->createNetworkInterceptor$lambda$1(Ljava/lang/String;)V

    return-void
.end method

.method private final createHeaderInterceptor(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;Ljava/lang/String;Ljava/lang/String;)Lhd/C;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedHttpClient$createHeaderInterceptor$$inlined$invoke$1;

    invoke-direct {p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedHttpClient$createHeaderInterceptor$$inlined$invoke$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;)V

    return-object p0
.end method

.method private final createNetworkInterceptor()Lvd/c;
    .locals 3

    sget-object p0, Lvd/a;->BASIC:Lvd/a;

    new-instance v0, Lvd/c;

    new-instance v1, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    invoke-direct {v0, v1}, Lvd/c;-><init>(Lvd/b;)V

    invoke-virtual {v0, p0}, Lvd/c;->c(Lvd/a;)V

    const-string p0, "x-api-key"

    invoke-virtual {v0, p0}, Lvd/c;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final createNetworkInterceptor$lambda$1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "log"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "NewsFeedHttpClient"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final createHttpClient(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;)Lhd/I;
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "profile"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lhd/H;

    invoke-direct {v0}, Lhd/H;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedHttpClient;->createHeaderInterceptor(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;Ljava/lang/String;Ljava/lang/String;)Lhd/C;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhd/H;->a(Lhd/C;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedHttpClient;->createNetworkInterceptor()Lvd/c;

    move-result-object p0

    const-string p1, "interceptor"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, Lhd/H;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2, p0}, Lhd/H;->b(JLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v3, 0x1e

    invoke-virtual {v0, v3, v4, p0}, Lhd/H;->c(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v1, v2, p0}, Lhd/H;->d(JLjava/util/concurrent/TimeUnit;)V

    new-instance p0, Lhd/I;

    invoke-direct {p0, v0}, Lhd/I;-><init>(Lhd/H;)V

    return-object p0
.end method
