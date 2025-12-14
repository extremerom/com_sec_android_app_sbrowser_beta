.class final Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;
.super Lkb/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->getNewsItems(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.quickaccess.model.news_feed.NewsFeedRepository"
    f = "NewsFeedRepository.kt"
    l = {
        0x63
    }
    m = "getNewsItems"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;->label:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository$getNewsItems$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedRepository;->getNewsItems(Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
