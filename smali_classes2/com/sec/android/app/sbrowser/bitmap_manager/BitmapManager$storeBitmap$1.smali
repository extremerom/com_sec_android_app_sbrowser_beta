.class final Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->storeBitmap(ILandroid/graphics/Bitmap;)V
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
    c = "com.sec.android.app.sbrowser.bitmap_manager.BitmapManager$storeBitmap$1"
    f = "BitmapManager.kt"
    l = {
        0xa6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $tabId:I

.field final synthetic $thumbnailBitmap:Landroid/graphics/Bitmap;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;ILib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "I",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$thumbnailBitmap:Landroid/graphics/Bitmap;

    iput p5, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$tabId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7
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

    new-instance p1, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$key:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$thumbnailBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$tabId:I

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;-><init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;ILib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->access$getUtil$p(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;)Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v1, v3}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->addBitmapToDiskCache(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->access$getUtil$p(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;)Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$thumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$thumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1, v3}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->addBitmapToDiskCache(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$thumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v1, v3}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->saveBitmapToFile(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->access$getUtil$p(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;)Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$thumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;->createLiteThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->access$getUtil$p(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;)Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$key:Ljava/lang/String;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->addBitmapToMemCache(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$key:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->addBitmapToDiskCache(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$key:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->saveBitmapToFile(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_3
    sget-object p1, LNc/N;->a:LWc/f;

    sget-object p1, LUc/q;->a:LNc/w0;

    new-instance v1, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1$1;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;

    iget v4, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->$tabId:I

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1$1;-><init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;ILib/c;)V

    iput v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;->label:I

    invoke-static {p1, v1, p0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
