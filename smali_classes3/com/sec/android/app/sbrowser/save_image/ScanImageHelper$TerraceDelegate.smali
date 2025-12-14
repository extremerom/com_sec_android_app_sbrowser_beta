.class public interface abstract Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper$TerraceDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/save_image/ScanImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TerraceDelegate"
.end annotation


# virtual methods
.method public abstract evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V
.end method

.method public abstract getActiveTerrace()Lcom/sec/terrace/Terrace;
.end method

.method public abstract getBitmapFromCache(Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
.end method

.method public abstract getOriginalUrl()Ljava/lang/String;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isJavascriptEnabled()Z
.end method

.method public abstract requestDocumentDump()V
.end method
