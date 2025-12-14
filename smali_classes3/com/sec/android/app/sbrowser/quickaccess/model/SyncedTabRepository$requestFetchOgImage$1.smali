.class final Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->requestFetchOgImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/n;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "LNc/B;",
        "Ldb/r;",
        "<anonymous>",
        "(LNc/B;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.quickaccess.model.SyncedTabRepository$requestFetchOgImage$1"
    f = "SyncedTabRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $url:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;->$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;->invokeSuspend$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p4, Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->access$getContext$p(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/j;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1$1$1;

    invoke-direct {p3, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1$1$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Ljava/lang/String;)V

    sget-object p0, Ll4/f;->a:LR5/n;

    const/4 p1, 0x0

    invoke-virtual {p2, p3, p1, p2, p0}, Lcom/bumptech/glide/j;->A(Li4/d;Lh4/f;Lh4/a;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lib/c<",
            "*>;)",
            "Lib/c<",
            "Ldb/r;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;->$url:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    invoke-direct {p1, v0, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;-><init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Lib/c;)V

    return-object p1
.end method

.method public final invoke(LNc/B;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNc/B;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;->$url:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/G;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/G;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchOgImage(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
