.class public final Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010#\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J7\u0010\r\u001a\u0004\u0018\u00010\u00082\u0012\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ1\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\'\u0010\u001e\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010 R \u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006$"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;",
        "",
        "",
        "maxItems",
        "<init>",
        "(I)V",
        "",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/graphics/Bitmap;",
        "iterator",
        "item",
        "",
        "canReuse",
        "obtainBitmapFromReusableSet",
        "(Ljava/util/Iterator;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;",
        "bitmap",
        "width",
        "height",
        "Landroid/graphics/Bitmap$Config;",
        "config",
        "(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Z",
        "Ldb/r;",
        "returnBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "size",
        "()I",
        "isEmpty",
        "()Z",
        "clear",
        "()V",
        "borrowBitmap",
        "(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;",
        "I",
        "",
        "mItems",
        "Ljava/util/Set;",
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
.field private final mItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxItems:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->maxItems:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->mItems:Ljava/util/Set;

    return-void
.end method

.method private final canReuse(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-ne p0, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-ne p0, p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-ne p0, p4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final obtainBitmapFromReusableSet(Ljava/util/Iterator;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;",
            "Landroid/graphics/Bitmap;",
            "Z)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    return-object p2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->size()I

    move-result p2

    iget p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->maxItems:I

    if-le p2, p0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized borrowBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3
    .param p3    # Landroid/graphics/Bitmap$Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "config"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->mItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->canReuse(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->obtainBitmapFromReusableSet(Ljava/util/Iterator;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->mItems:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->mItems:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final returnBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->maxItems:I

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->mItems:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/ReusableBitmapSet;->mItems:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method
