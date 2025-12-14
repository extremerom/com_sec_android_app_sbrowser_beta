.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 -2\u00020\u0001:\u0001-B%\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001d\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J \u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\n2\u0006\u0010\u0013\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u000b8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u000b8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001fR\u0017\u0010\"\u001a\u00020!8\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\u0014\u0010\'\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u001d\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0)8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+\u00a8\u0006."
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;",
        "newsFeedClient",
        "LNc/x;",
        "ioDispatcher",
        "<init>",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;LNc/x;)V",
        "",
        "",
        "result",
        "Ldb/r;",
        "updateTabCategoryPreferenceData",
        "(Ljava/util/List;)V",
        "LNc/j0;",
        "fetchNewsCategories",
        "()LNc/j0;",
        "category",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;",
        "getNewsItems",
        "(Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;",
        "LNc/B;",
        "backgroundScope",
        "LNc/B;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isFetchCategoriesInProgress",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "tabCategoryKeyBase",
        "Ljava/lang/String;",
        "tabCategoryOrderKey",
        "Landroid/content/SharedPreferences;",
        "pref",
        "Landroid/content/SharedPreferences;",
        "getPref",
        "()Landroid/content/SharedPreferences;",
        "Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;",
        "_newsFeedCategories",
        "Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;",
        "Landroidx/lifecycle/S;",
        "getNewsFeedCategories",
        "()Landroidx/lifecycle/S;",
        "newsFeedCategories",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _newsFeedCategories:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backgroundScope:LNc/B;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isFetchCategoriesInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final newsFeedClient:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pref:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tabCategoryKeyBase:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tabCategoryOrderKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->$stable:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;LNc/x;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->newsFeedClient:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;

    invoke-static {p3}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->backgroundScope:LNc/B;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->isFetchCategoriesInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p2, "category_"

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->tabCategoryKeyBase:Ljava/lang/String;

    const-string v0, "order"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->tabCategoryOrderKey:Ljava/lang/String;

    const-string v1, "newsfeed_tab_category_preference"

    invoke-virtual {p1, v1, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p3, "getSharedPreferences(...)"

    invoke-static {p1, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->pref:Landroid/content/SharedPreferences;

    new-instance p3, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;

    invoke-direct {p3, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->_newsFeedCategories:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;LNc/x;ILtb/f;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;

    const/4 p5, 0x1

    const/4 v0, 0x0

    invoke-direct {p2, v0, p5, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedApiService;ILtb/f;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    sget-object p3, LNc/N;->c:LWc/e;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;LNc/x;)V

    return-void
.end method

.method public static final synthetic access$getNewsFeedClient$p(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->newsFeedClient:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;

    return-object p0
.end method

.method public static final synthetic access$isFetchCategoriesInProgress$p(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->isFetchCategoriesInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$updateTabCategoryPreferenceData(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->updateTabCategoryPreferenceData(Ljava/util/List;)V

    return-void
.end method

.method public static final getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    move-result-object v0

    return-object v0
.end method

.method private final updateTabCategoryPreferenceData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "NewsFeedRepository"

    const-string v1, "updateTabCategoryPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v3, ","

    invoke-static {v1, v3, v2}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "order"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->tabCategoryKeyBase:Ljava/lang/String;

    invoke-static {v2, v3}, LKc/k;->D(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->tabCategoryKeyBase:Ljava/lang/String;

    invoke-static {v2, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final fetchNewsCategories()LNc/j0;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->backgroundScope:LNc/B;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$fetchNewsCategories$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$fetchNewsCategories$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p0

    return-object p0
.end method

.method public final getNewsFeedCategories()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->_newsFeedCategories:Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;

    return-object p0
.end method

.method public final getNewsItems(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p2, Ldb/m;

    iget-object p0, p2, Ldb/m;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->newsFeedClient:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;

    iput v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedClient;->fetchNewsItems-gIAlu-s(Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    instance-of p1, p0, Ldb/l;

    if-nez p1, :cond_5

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItemDto;->toNewsFeedItem()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p1

    :cond_5
    invoke-static {p0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "fetchNewsCategories response failed: "

    const-string p2, "NewsFeedRepository"

    invoke-static {p1, p0, p2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method
