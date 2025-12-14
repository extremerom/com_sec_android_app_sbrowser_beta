.class public final Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$initializeMemoryCache$1;
.super Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->initializeMemoryCache(I)Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/sec/android/app/sbrowser/bitmap_manager/BitmapCache$initializeMemoryCache$1",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;",
        "Landroid/graphics/Bitmap;",
        "item",
        "Ldb/r;",
        "onRemoveItem",
        "(Landroid/graphics/Bitmap;)V",
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
.method public constructor <init>(ILcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$initializeMemoryCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onRemoveItem(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->onRemoveItem(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache$initializeMemoryCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;->access$getBitmapPool$p(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCache;)Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->returnBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
