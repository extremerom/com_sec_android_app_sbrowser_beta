.class public final Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001J3\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "com/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1",
        "Landroid/util/LruCache;",
        "",
        "Landroid/graphics/Bitmap;",
        "",
        "evicted",
        "key",
        "oldValue",
        "newValue",
        "Ldb/r;",
        "entryRemoved",
        "(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;


# direct methods
.method public constructor <init>(ILcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;->entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    const-string p1, "key"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;->this$0:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->onRemoveItem(Landroid/graphics/Bitmap;)V

    return-void
.end method
