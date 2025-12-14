.class final Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->getThumbnailBitmapFromDiskCache(IZLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
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
    c = "com.sec.android.app.sbrowser.bitmap_manager.BitmapManager$getThumbnailBitmapFromDiskCache$1"
    f = "BitmapManager.kt"
    l = {
        0xf7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $type:I

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;ILjava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;",
            "I",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iput p2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->$type:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6
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

    new-instance p1, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iget v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->$type:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;-><init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;ILjava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iget v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->$type:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->$key:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapFromDiskCache(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v1, LNc/N;->a:LWc/f;

    sget-object v1, LUc/q;->a:LNc/w0;

    new-instance v3, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1$1;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->$key:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, p1, v6}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1$1;-><init>(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;Landroid/graphics/Bitmap;Lib/c;)V

    iput v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;->label:I

    invoke-static {v1, v3, p0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
