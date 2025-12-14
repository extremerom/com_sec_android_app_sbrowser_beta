.class public interface abstract Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/ExtensionViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtensionClient"
.end annotation


# virtual methods
.method public abstract closePopup()V
.end method

.method public abstract getClientType()Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionViewType;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onCloseTerrace(Lcom/sec/terrace/Terrace;)V
.end method

.method public abstract onCreateTerraceForNewContents(Lcom/sec/terrace/Terrace;)V
.end method

.method public abstract onHideTerrace(Lcom/sec/terrace/Terrace;)V
.end method

.method public abstract onInitializeTerrace(Lcom/sec/terrace/Terrace;)Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onSetContentViewBackgroundColor(I)V
.end method

.method public abstract onShowTerrace(Lcom/sec/terrace/Terrace;)V
.end method

.method public abstract setOverlayVideoMode(Z)V
.end method
