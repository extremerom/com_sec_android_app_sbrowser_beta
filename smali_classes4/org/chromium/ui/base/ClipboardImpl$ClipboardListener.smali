.class public interface abstract Lorg/chromium/ui/base/ClipboardImpl$ClipboardListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/base/ClipboardImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClipboardListener"
.end annotation


# virtual methods
.method public abstract canPaste()Z
.end method

.method public abstract copyToSecClipboard(Landroid/content/ClipData;)Z
.end method

.method public abstract getPrimaryClipHtml()Ljava/lang/String;
.end method

.method public abstract getPrimaryClipText()Ljava/lang/String;
.end method
