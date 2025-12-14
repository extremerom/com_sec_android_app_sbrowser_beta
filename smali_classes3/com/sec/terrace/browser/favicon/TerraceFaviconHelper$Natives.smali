.class public interface abstract Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract destroy(J)V
.end method

.method public abstract getLargestRawFaviconForUrl(JLjava/lang/String;ILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)V
.end method

.method public abstract getLocalFaviconImageForURL(JLjava/lang/String;IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)Z
.end method

.method public abstract init()J
.end method

.method public abstract updateDominantColor(JLjava/lang/String;J)V
.end method
