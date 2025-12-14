.class public Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bitmap_manager/cache/ICache;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0008\u0005*\u0001\u0019\u0008\u0017\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0013\u0010\u0008J\u0019\u0010\u0015\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/cache/ICache;",
        "",
        "cacheSize",
        "<init>",
        "(I)V",
        "Ldb/r;",
        "clean",
        "()V",
        "",
        "key",
        "Landroid/graphics/Bitmap;",
        "get",
        "(Ljava/lang/String;)Landroid/graphics/Bitmap;",
        "bitmap",
        "put",
        "(Ljava/lang/String;Landroid/graphics/Bitmap;)V",
        "remove",
        "(Ljava/lang/String;)V",
        "trim",
        "item",
        "onRemoveItem",
        "(Landroid/graphics/Bitmap;)V",
        "size",
        "()I",
        "com/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1",
        "lruCache",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;",
        "Companion",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private lruCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->Companion:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->$stable:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;-><init>(ILcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->lruCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->lruCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->lruCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public onRemoveItem(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->lruCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->lruCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final size()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->lruCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;

    invoke-virtual {p0}, Landroid/util/LruCache;->size()I

    move-result p0

    return p0
.end method

.method public final trim()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->lruCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    const-string v1, "trim maxSize sent = 1 occupied size = "

    const-string v2, "MemoryCache"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->lruCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache;->lruCache:Lcom/sec/android/app/sbrowser/bitmap_manager/cache/MemoryCache$lruCache$1;

    invoke-virtual {p0}, Landroid/util/LruCache;->size()I

    move-result p0

    const-string v0, "trim cache size remaining  = "

    invoke-static {p0, v0, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
