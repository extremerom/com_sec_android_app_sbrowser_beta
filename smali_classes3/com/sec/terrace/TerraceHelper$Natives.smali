.class public interface abstract Lcom/sec/terrace/TerraceHelper$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/TerraceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract createFrozenTerrace(JLcom/sec/terrace/TerraceHelper;ZLorg/chromium/content_public/browser/WebContents;Z)Ljava/lang/Object;
.end method

.method public abstract createTerrace(JLcom/sec/terrace/TerraceHelper;ZJZ)Ljava/lang/Object;
.end method

.method public abstract getUserAgent(JLcom/sec/terrace/TerraceHelper;)Ljava/lang/String;
.end method

.method public abstract init(Ljava/lang/Object;)J
.end method

.method public abstract onAppEnterBackground(JLcom/sec/terrace/TerraceHelper;)V
.end method

.method public abstract setDexMode(I)V
.end method

.method public abstract setGmsCoreLocationProvider(JLcom/sec/terrace/TerraceHelper;)V
.end method

.method public abstract setVisionTextSupport(JLcom/sec/terrace/TerraceHelper;Z)V
.end method
