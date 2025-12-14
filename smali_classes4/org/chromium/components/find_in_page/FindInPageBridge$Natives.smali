.class public interface abstract Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/find_in_page/FindInPageBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract activateFindInPageResultForAccessibility(JLorg/chromium/components/find_in_page/FindInPageBridge;)V
.end method

.method public abstract activateNearestFindResult(JLorg/chromium/components/find_in_page/FindInPageBridge;FF)V
.end method

.method public abstract destroy(JLorg/chromium/components/find_in_page/FindInPageBridge;)V
.end method

.method public abstract init(Lorg/chromium/components/find_in_page/FindInPageBridge;Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method public abstract requestFindMatchRects(JLorg/chromium/components/find_in_page/FindInPageBridge;I)V
.end method

.method public abstract startFinding(JLorg/chromium/components/find_in_page/FindInPageBridge;Ljava/lang/String;ZZ)V
.end method

.method public abstract stopFinding(JLorg/chromium/components/find_in_page/FindInPageBridge;Z)V
.end method
