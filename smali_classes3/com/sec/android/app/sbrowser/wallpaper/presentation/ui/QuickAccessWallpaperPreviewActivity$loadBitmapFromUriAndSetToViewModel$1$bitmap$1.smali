.class final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "LNc/B;",
        "Landroid/graphics/Bitmap;",
        "<anonymous>",
        "(LNc/B;)Landroid/graphics/Bitmap;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.wallpaper.presentation.ui.QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1"
    f = "QuickAccessWallpaperPreviewActivity.kt"
    l = {
        0x180
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $uri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Landroid/net/Uri;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;",
            "Landroid/net/Uri;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->$uri:Landroid/net/Uri;

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

    new-instance p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->$uri:Landroid/net/Uri;

    invoke-direct {p1, v0, p0, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Landroid/net/Uri;Lib/c;)V

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
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->$uri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_2

    :try_start_2
    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v1, v2}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_5
    invoke-static {v1, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_0
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v7, v1, p1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;

    invoke-static {p1}, LAd/a;->d(Landroid/content/Context;)I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;

    invoke-static {v1}, LAd/a;->c(Landroid/content/Context;)I

    move-result v1

    mul-int v8, p1, v1

    sget-object p1, LNc/N;->c:LWc/e;

    new-instance v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->$uri:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Landroid/net/Uri;IILib/c;)V

    iput v3, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->label:I

    invoke-static {p1, v1, p0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v2, p1

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-object v2
.end method
