.class public Lorg/chromium/components/find_in_page/FindInPageBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mNativeFindInPageBridge:J


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/components/find_in_page/FindInPageBridgeJni;->get()Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;->init(Lorg/chromium/components/find_in_page/FindInPageBridge;Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/components/find_in_page/FindInPageBridge;->mNativeFindInPageBridge:J

    return-void
.end method


# virtual methods
.method public activateFindInPageResultForAccessibility()V
    .locals 3

    invoke-static {}, Lorg/chromium/components/find_in_page/FindInPageBridgeJni;->get()Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/find_in_page/FindInPageBridge;->mNativeFindInPageBridge:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;->activateFindInPageResultForAccessibility(JLorg/chromium/components/find_in_page/FindInPageBridge;)V

    return-void
.end method

.method public activateNearestFindResult(FF)V
    .locals 6

    invoke-static {}, Lorg/chromium/components/find_in_page/FindInPageBridgeJni;->get()Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/find_in_page/FindInPageBridge;->mNativeFindInPageBridge:J

    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;->activateNearestFindResult(JLorg/chromium/components/find_in_page/FindInPageBridge;FF)V

    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lorg/chromium/components/find_in_page/FindInPageBridgeJni;->get()Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/find_in_page/FindInPageBridge;->mNativeFindInPageBridge:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;->destroy(JLorg/chromium/components/find_in_page/FindInPageBridge;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/components/find_in_page/FindInPageBridge;->mNativeFindInPageBridge:J

    return-void
.end method

.method public requestFindMatchRects(I)V
    .locals 3

    invoke-static {}, Lorg/chromium/components/find_in_page/FindInPageBridgeJni;->get()Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/find_in_page/FindInPageBridge;->mNativeFindInPageBridge:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;->requestFindMatchRects(JLorg/chromium/components/find_in_page/FindInPageBridge;I)V

    return-void
.end method

.method public startFinding(Ljava/lang/String;ZZ)V
    .locals 7

    invoke-static {}, Lorg/chromium/components/find_in_page/FindInPageBridgeJni;->get()Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/find_in_page/FindInPageBridge;->mNativeFindInPageBridge:J

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v0 .. v6}, Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;->startFinding(JLorg/chromium/components/find_in_page/FindInPageBridge;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public stopFinding(Z)V
    .locals 3

    invoke-static {}, Lorg/chromium/components/find_in_page/FindInPageBridgeJni;->get()Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/components/find_in_page/FindInPageBridge;->mNativeFindInPageBridge:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;->stopFinding(JLorg/chromium/components/find_in_page/FindInPageBridge;Z)V

    return-void
.end method
