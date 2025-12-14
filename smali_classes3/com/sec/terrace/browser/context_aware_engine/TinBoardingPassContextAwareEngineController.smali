.class public Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassContextAwareEngineController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mNativeTinBoardingPassContextAwareEngineController:J

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassContextAwareEngineObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;->mObservers:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineControllerJni;->get()Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController$Natives;->init(Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;->mNativeTinBoardingPassContextAwareEngineController:J

    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassContextAwareEngineObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;->mNativeTinBoardingPassContextAwareEngineController:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineControllerJni;->get()Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;->mNativeTinBoardingPassContextAwareEngineController:J

    invoke-interface {v0, v4, v5}, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController$Natives;->destroy(J)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;->mNativeTinBoardingPassContextAwareEngineController:J

    iget-object p0, p0, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getObserversForTesting()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassContextAwareEngineObserver;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;->mObservers:Ljava/util/List;

    return-object p0
.end method

.method public onBoardingPassDetectionResult([Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassContextAwareEngineObserver;

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassContextAwareEngineObserver;->onBoardingPassDetectionResult([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public runBoardingPassPageDetection(Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassPageDetectionParams;)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineControllerJni;->get()Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;->mNativeTinBoardingPassContextAwareEngineController:J

    invoke-virtual {p1}, Lcom/sec/terrace/browser/barcode_detect/TerraceBoardingPassPageDetectionParams;->getBoardingPassPageDetectionParams()Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController$Natives;->runBoardingPassPageDetection(JLcom/sec/terrace/browser/context_aware_engine/TinBoardingPassContextAwareEngineController;Ljava/nio/ByteBuffer;)V

    return-void
.end method
