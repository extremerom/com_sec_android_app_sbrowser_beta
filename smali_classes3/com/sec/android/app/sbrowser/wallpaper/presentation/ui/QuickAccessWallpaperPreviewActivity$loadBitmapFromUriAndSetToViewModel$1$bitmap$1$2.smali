.class final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "LNc/B;",
        "Landroid/graphics/Bitmap;",
        "kotlin.jvm.PlatformType",
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
    c = "com.sec.android.app.sbrowser.wallpaper.presentation.ui.QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2"
    f = "QuickAccessWallpaperPreviewActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $imageResolution:I

.field final synthetic $screenResolution:I

.field final synthetic $uri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Landroid/net/Uri;IILib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;",
            "Landroid/net/Uri;",
            "II",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->$imageResolution:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->$screenResolution:I

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

    new-instance p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->$uri:Landroid/net/Uri;

    iget v3, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->$imageResolution:I

    iget v4, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->$screenResolution:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;Landroid/net/Uri;IILib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/j;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->$uri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->C(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p1

    const-string v0, "load(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->$imageResolution:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->$screenResolution:I

    mul-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_0

    sget-object v0, LZ3/n;->b:LZ3/n;

    new-instance v1, LZ3/v;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lh4/a;->l(LZ3/n;LZ3/e;Z)Lh4/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;

    invoke-static {v0}, LAd/a;->d(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity$loadBitmapFromUriAndSetToViewModel$1$bitmap$1$2;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/QuickAccessWallpaperPreviewActivity;

    invoke-static {p0}, LAd/a;->c(Landroid/content/Context;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-virtual {p1, v0, p0}, Lh4/a;->g(II)Lh4/a;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/bumptech/glide/j;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lh4/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ll4/f;->b:LR5/n;

    invoke-virtual {p1, p0, p0, p1, v0}, Lcom/bumptech/glide/j;->A(Li4/d;Lh4/f;Lh4/a;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0}, Lh4/f;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
