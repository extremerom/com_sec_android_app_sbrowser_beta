.class public interface abstract Lorg/chromium/ui/base/Clipboard$ImageFileProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/base/Clipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageFileProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/base/Clipboard$ImageFileProvider$ClipboardFileMetadata;
    }
.end annotation


# virtual methods
.method public abstract storeImageAndGenerateUri([BLjava/lang/String;Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Lorg/chromium/base/Callback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract storeLastCopiedImageMetadata(Lorg/chromium/ui/base/Clipboard$ImageFileProvider$ClipboardFileMetadata;)V
.end method
