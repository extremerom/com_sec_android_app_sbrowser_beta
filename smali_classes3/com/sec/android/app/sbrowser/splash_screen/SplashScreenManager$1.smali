.class Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->storeSplashScreenIfNeeded(Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager$1;->this$0:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SplashScreenManager"

    const-string v1, "storeBitmapToCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager$1;->this$0:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->a(Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;)Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager$1;->this$0:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

    new-instance v1, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager$1;->this$0:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->b(Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->c(Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager$1;->this$0:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->a(Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;)Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;

    move-result-object v0

    const-string v1, "SplashScreen"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->storeBitmapToCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
