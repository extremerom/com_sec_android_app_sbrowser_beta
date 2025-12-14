.class public Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$Natives;,
        Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$AttesterBridge;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sBridge:Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$AttesterBridge;

.field private static sPrivacyPassHelperPtr:J


# direct methods
.method private static cancelRequest()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager;->sPrivacyPassHelperPtr:J

    return-void
.end method

.method public static onTokenRequestFail()V
    .locals 4

    sget-wide v0, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager;->sPrivacyPassHelperPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManagerJni;->get()Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$Natives;

    move-result-object v0

    sget-wide v1, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager;->sPrivacyPassHelperPtr:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$Natives;->onTokenRequestFail(J)V

    :cond_0
    return-void
.end method

.method public static onTokenRequestSuccess(Ljava/lang/String;)V
    .locals 4

    sget-wide v0, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager;->sPrivacyPassHelperPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManagerJni;->get()Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$Natives;

    move-result-object v0

    sget-wide v1, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager;->sPrivacyPassHelperPtr:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$Natives;->onTokenRequestSuccess(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setBridge(Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$AttesterBridge;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager;->sBridge:Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$AttesterBridge;

    return-void
.end method

.method private static tryRequestToken(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager;->sBridge:Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$AttesterBridge;

    if-eqz v0, :cond_0

    sput-wide p0, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager;->sPrivacyPassHelperPtr:J

    invoke-interface {v0, p2, p3}, Lcom/sec/terrace/browser/privacy_pass/TerracePrivacyPassAttesterManager$AttesterBridge;->tryRequest(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
