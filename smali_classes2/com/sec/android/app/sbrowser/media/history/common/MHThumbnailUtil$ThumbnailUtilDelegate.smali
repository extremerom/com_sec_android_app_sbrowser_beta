.class public interface abstract Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThumbnailUtilDelegate"
.end annotation


# virtual methods
.method public abstract getCookies()Ljava/lang/String;
.end method

.method public abstract getDuration()I
.end method

.method public abstract getPageUrl()Ljava/lang/String;
.end method

.method public abstract getVideoUrl()Ljava/lang/String;
.end method

.method public abstract onThumbnailUpdated(Landroid/graphics/Bitmap;)V
.end method
