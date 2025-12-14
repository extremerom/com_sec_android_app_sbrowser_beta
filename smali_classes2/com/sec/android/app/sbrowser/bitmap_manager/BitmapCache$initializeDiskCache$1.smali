.class public final Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$initializeDiskCache$1;
.super Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->initializeDiskCache(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/sec/android/app/sbrowser/bitmap_manager/BitmapCache$initializeDiskCache$1",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;",
        "createBitmap",
        "Landroid/graphics/Bitmap;",
        "width",
        "",
        "height",
        "config",
        "Landroid/graphics/Bitmap$Config;",
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


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;)V
    .locals 0

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$initializeDiskCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "config"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$initializeDiskCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->access$getBitmapPool$p(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;)Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->borrowBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "BitmapCache"

    if-eqz v0, :cond_0

    const-string p0, "[DiskCache] Reusing Bitmap"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v0, "[DiskCache] Creating Bitmap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/DiskCache;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
