.class public interface abstract Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract didAttemptToUpgradeToHTTPS(JLcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;Lorg/chromium/content_public/browser/WebContents;)Z
.end method

.method public abstract getRedirectChainList(JLcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;Lorg/chromium/content_public/browser/WebContents;Z)[Ljava/lang/String;
.end method

.method public abstract getSkippableEntryList(JLcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;Lorg/chromium/content_public/browser/WebContents;)[Ljava/lang/String;
.end method

.method public abstract init(Lcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;)J
.end method

.method public abstract requestLayoutObjectCount(JLcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;Lorg/chromium/content_public/browser/WebContents;)Z
.end method

.method public abstract setFeatureConfigs(JLcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;Ljava/lang/String;)V
.end method

.method public abstract setSmartProtectAllowList(JLcom/sec/terrace/browser/smart_protect/TerraceSmartProtectManager;Ljava/lang/String;ZLjava/lang/String;)V
.end method
