.class interface abstract Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract cancelAllBitmapRequests(J)V
.end method

.method public abstract cancelBitmapRequest(JI)Z
.end method

.method public abstract destroy(J)V
.end method

.method public abstract initialize(Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;JJLjava/lang/String;Ljava/lang/String;ZLorg/chromium/base/Callback;Z)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;Z)J"
        }
    .end annotation
.end method

.method public abstract onClick(JLorg/chromium/base/UnguessableToken;II)Ljava/lang/String;
.end method

.method public abstract requestBitmap(JLorg/chromium/base/UnguessableToken;Lorg/chromium/base/Callback;Ljava/lang/Runnable;FIIII)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/chromium/base/UnguessableToken;",
            "Lorg/chromium/base/Callback<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/Runnable;",
            "FIIII)I"
        }
    .end annotation
.end method
