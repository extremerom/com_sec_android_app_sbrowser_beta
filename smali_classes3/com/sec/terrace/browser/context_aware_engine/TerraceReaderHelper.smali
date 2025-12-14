.class public Lcom/sec/terrace/browser/context_aware_engine/TerraceReaderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/context_aware_engine/TerraceReaderHelper$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static loadReadabilityDetectionOverrideList(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReaderHelperJni;->get()Lcom/sec/terrace/browser/context_aware_engine/TerraceReaderHelper$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/context_aware_engine/TerraceReaderHelper$Natives;->loadReadabilityDetectionOverrideList(Ljava/lang/String;)V

    return-void
.end method
