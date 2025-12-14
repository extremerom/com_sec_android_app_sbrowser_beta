.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;
.super Landroidx/lifecycle/s0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 02\u00020\u0001:\u00010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR \u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR#\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u001a\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010\u001dR\u001d\u0010%\u001a\u0008\u0012\u0004\u0012\u00020#0\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010 \u001a\u0004\u0008&\u0010\"R\u001c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u001aR\u0016\u0010(\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010*\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u0010-\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010.\u00a8\u00061"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;",
        "Landroidx/lifecycle/s0;",
        "<init>",
        "()V",
        "",
        "category",
        "",
        "page",
        "Ldb/r;",
        "loadNews",
        "(Ljava/lang/String;I)V",
        "loadNextNewsPage",
        "(Ljava/lang/String;)V",
        "",
        "lastRefreshEventTime",
        "refreshNewsListIfNeeded",
        "(Ljava/lang/String;J)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;",
        "newsFeedRepository$delegate",
        "Ldb/f;",
        "getNewsFeedRepository",
        "()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;",
        "newsFeedRepository",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;",
        "placeHolderList",
        "Ljava/util/List;",
        "Landroidx/lifecycle/X;",
        "_newsItems",
        "Landroidx/lifecycle/X;",
        "Landroidx/lifecycle/S;",
        "newsItems",
        "Landroidx/lifecycle/S;",
        "getNewsItems",
        "()Landroidx/lifecycle/S;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsType;",
        "_newsType",
        "newsType",
        "getNewsType",
        "newsItemList",
        "lastNewsRefreshTime",
        "J",
        "lastNewsPageNumber",
        "I",
        "",
        "isLastPageReached",
        "Z",
        "isLoading",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _newsItems:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _newsType:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isLastPageReached:Z

.field private isLoading:Z

.field private lastNewsPageNumber:I

.field private lastNewsRefreshTime:J

.field private final newsFeedRepository$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private newsItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final newsItems:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final newsType:Landroidx/lifecycle/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final placeHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Landroidx/lifecycle/s0;-><init>()V

    new-instance v0, LB9/b;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, LB9/b;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->newsFeedRepository$delegate:Ldb/f;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v12, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->placeHolderList:Ljava/util/List;

    new-instance v1, Landroidx/lifecycle/X;

    invoke-direct {v1, v0}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->_newsItems:Landroidx/lifecycle/X;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->newsItems:Landroidx/lifecycle/S;

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->_newsType:Landroidx/lifecycle/X;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->newsType:Landroidx/lifecycle/S;

    sget-object v0, Lfb/v;->a:Lfb/v;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->newsItemList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getLastNewsRefreshTime$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->lastNewsRefreshTime:J

    return-wide v0
.end method

.method public static final synthetic access$getNewsFeedRepository(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->getNewsFeedRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNewsItemList$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->newsItemList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$get_newsItems$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)Landroidx/lifecycle/X;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->_newsItems:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public static final synthetic access$get_newsType$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)Landroidx/lifecycle/X;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->_newsType:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public static final synthetic access$isLastPageReached$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->isLastPageReached:Z

    return p0
.end method

.method public static final synthetic access$setLastNewsPageNumber$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->lastNewsPageNumber:I

    return-void
.end method

.method public static final synthetic access$setLastNewsRefreshTime$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->lastNewsRefreshTime:J

    return-void
.end method

.method public static final synthetic access$setLastPageReached$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->isLastPageReached:Z

    return-void
.end method

.method public static final synthetic access$setLoading$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->isLoading:Z

    return-void
.end method

.method public static final synthetic access$setNewsItemList$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->newsItemList:Ljava/util/List;

    return-void
.end method

.method public static synthetic b()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->newsFeedRepository_delegate$lambda$0()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    move-result-object v0

    return-object v0
.end method

.method private final getNewsFeedRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->newsFeedRepository$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    return-object p0
.end method

.method public static synthetic loadNews$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->loadNews(Ljava/lang/String;I)V

    return-void
.end method

.method private static final newsFeedRepository_delegate$lambda$0()Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$Companion;Landroid/content/Context;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getNewsItems()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->newsItems:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final getNewsType()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->newsType:Landroidx/lifecycle/S;

    return-object p0
.end method

.method public final loadNews(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "category"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->_newsItems:Landroidx/lifecycle/X;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->placeHolderList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel$loadNews$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;ILjava/lang/String;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final loadNextNewsPage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "category"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->isLoading:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->isLastPageReached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->lastNewsPageNumber:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->loadNews(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final refreshNewsListIfNeeded(Ljava/lang/String;J)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "category"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->lastNewsRefreshTime:J

    cmp-long p2, v0, p2

    if-gez p2, :cond_0

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;->loadNews$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/NewsItemViewModel;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
