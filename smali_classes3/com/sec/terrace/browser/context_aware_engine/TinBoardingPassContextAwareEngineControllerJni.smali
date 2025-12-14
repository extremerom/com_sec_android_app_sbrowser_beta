.class public Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineControllerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineControllerJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineControllerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MlAoqSRD(J)V

    return-void
.end method

.method public init(Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;Lorg/chromium/content_public/browser/WebContents;)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MAc4NQ9C(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public runBoardingPassPageDetection(JLcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MKK_3xgZ(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
