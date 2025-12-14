.class public interface abstract Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtensionsClipboardCallback"
.end annotation


# virtual methods
.method public abstract hideClipboard(Lcom/sec/terrace/Terrace;)V
.end method

.method public abstract registerClipboardPasteListener(Lcom/sec/terrace/Terrace;)V
.end method

.method public abstract showClipboard(Lcom/sec/terrace/Terrace;)V
.end method

.method public abstract unregisterClipboardPasteListener(Lcom/sec/terrace/Terrace;)V
.end method
