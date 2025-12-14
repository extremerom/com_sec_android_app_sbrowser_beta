.class final Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->cleanUnusedBitmapsFromCache(Ljava/util/List;)V
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
    c = "com.sec.android.app.sbrowser.bitmap_manager.BitmapManager$cleanUnusedBitmapsFromCache$1"
    f = "BitmapManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activeTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Ljava/util/List;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;->$activeTabs:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

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

    new-instance p1, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;->$activeTabs:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;-><init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Ljava/util/List;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;->$activeTabs:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->access$populateExcludedKeys(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->cleanUnusedCacheItems(ILjava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->cleanUnusedCacheItems(ILjava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->cleanUnusedCacheItems(ILjava/util/List;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
