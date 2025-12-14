.class public interface abstract Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback$Companion;,
        Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001:\u0001\rJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;",
        "",
        "Ldb/r;",
        "onInitialized",
        "()V",
        "",
        "tabId",
        "onBitmapReceived",
        "(I)V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "onThumbnailCreated",
        "(ILandroid/graphics/Bitmap;)V",
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


# virtual methods
.method public abstract onBitmapReceived(I)V
.end method

.method public abstract onInitialized()V
.end method

.method public abstract onThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
