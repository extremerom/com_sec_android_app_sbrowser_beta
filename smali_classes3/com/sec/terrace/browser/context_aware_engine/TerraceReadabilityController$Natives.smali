.class public interface abstract Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract destroy(J)V
.end method

.method public abstract extractArticle(JLjava/lang/String;Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityExtractionCallback;)V
.end method

.method public abstract init(Lcom/sec/terrace/browser/context_aware_engine/TerraceReadabilityController;Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method public abstract runReadabilityDetection(J)V
.end method
