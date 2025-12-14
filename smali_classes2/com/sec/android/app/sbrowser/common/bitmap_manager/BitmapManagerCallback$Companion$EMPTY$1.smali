.class public final Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback$Companion$EMPTY$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback$Companion$EMPTY$1",
        "Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;",
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
.method public onBitmapReceived(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback$DefaultImpls;->onBitmapReceived(Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;I)V

    return-void
.end method

.method public onInitialized()V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback$DefaultImpls;->onInitialized(Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;)V

    return-void
.end method

.method public onThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback$DefaultImpls;->onThumbnailCreated(Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;ILandroid/graphics/Bitmap;)V

    return-void
.end method
