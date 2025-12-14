.class public Lorg/chromium/components/find_in_page/FindInPageBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/components/find_in_page/FindInPageBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/find_in_page/FindInPageBridgeJni;

    invoke-direct {v0}, Lorg/chromium/components/find_in_page/FindInPageBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public activateFindInPageResultForAccessibility(JLorg/chromium/components/find_in_page/FindInPageBridge;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MNC06_Rq(JLjava/lang/Object;)V

    return-void
.end method

.method public activateNearestFindResult(JLorg/chromium/components/find_in_page/FindInPageBridge;FF)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MqpwqIAC(JLjava/lang/Object;FF)V

    return-void
.end method

.method public destroy(JLorg/chromium/components/find_in_page/FindInPageBridge;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MlPioXlo(JLjava/lang/Object;)V

    return-void
.end method

.method public init(Lorg/chromium/components/find_in_page/FindInPageBridge;Lorg/chromium/content_public/browser/WebContents;)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MW6nK$q1(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public requestFindMatchRects(JLorg/chromium/components/find_in_page/FindInPageBridge;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M4m8QCn$(JLjava/lang/Object;I)V

    return-void
.end method

.method public startFinding(JLorg/chromium/components/find_in_page/FindInPageBridge;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MiKuFRTN(JLjava/lang/Object;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public stopFinding(JLorg/chromium/components/find_in_page/FindInPageBridge;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MWOuMqhA(JLjava/lang/Object;Z)V

    return-void
.end method
