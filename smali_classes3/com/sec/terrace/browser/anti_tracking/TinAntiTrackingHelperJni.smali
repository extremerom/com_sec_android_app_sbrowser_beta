.class Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelperJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;


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

.method public static get()Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelper$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelperJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/anti_tracking/TinAntiTrackingHelperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public enableServerBasedListUsage(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MzHwlDYT(Z)V

    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 0

    invoke-static {}, LJ/N;->MmuWbKiL()V

    return-void
.end method

.method public setAntiTrackingDebugSettingsFlag(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->Mz31$TEu(Z)V

    return-void
.end method

.method public setAutomaticStorageAccessStateValue(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MMwc3p4S(I)V

    return-void
.end method
