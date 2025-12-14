.class final Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->storeNewWallpaperImage(Landroid/graphics/Bitmap;)V
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
    c = "com.sec.android.app.sbrowser.wallpaper.data.QuickAccessWallpaperRepository$storeNewWallpaperImage$1"
    f = "QuickAccessWallpaperRepository.kt"
    l = {
        0x92
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

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

    new-instance p1, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;->$bitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    invoke-direct {p1, v0, p0, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;->label:I

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

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;->$bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->access$getContext$p(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Landroid/content/Context;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;

    sget-object v5, Lcom/sec/android/app/sbrowser/common/utils/ImageFileUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/utils/ImageFileUtil;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->access$getContext$p(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Landroid/content/Context;

    move-result-object v6

    sget-object v1, Lcom/sec/android/app/sbrowser/wallpaper/utils/WallpaperUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/wallpaper/utils/WallpaperUtils;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;->access$getContext$p(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/wallpaper/utils/WallpaperUtils;->getFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "qa_images"

    const-string v10, "jpg"

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/common/utils/ImageFileUtil;->storeImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v1

    sget-object v3, LNc/N;->a:LWc/f;

    sget-object v3, LUc/q;->a:LNc/w0;

    new-instance v4, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v1, v5}, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1$1$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository;ZLib/c;)V

    iput v2, p0, Lcom/sec/android/app/sbrowser/wallpaper/data/QuickAccessWallpaperRepository$storeNewWallpaperImage$1;->label:I

    invoke-static {v3, v4, p0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
