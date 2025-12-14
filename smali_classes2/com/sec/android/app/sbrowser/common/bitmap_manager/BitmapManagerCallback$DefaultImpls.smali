.class public final Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onBitmapReceived(Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;I)V
    .locals 0
    .param p0    # Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onInitialized(Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;)V
    .locals 0
    .param p0    # Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onThumbnailCreated(Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p0    # Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
