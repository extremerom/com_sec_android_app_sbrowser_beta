.class Lorg/chromium/content/browser/AttributionOsLevelManagerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/AttributionOsLevelManager$Natives;


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

.method public static get()Lorg/chromium/content/browser/AttributionOsLevelManager$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/AttributionOsLevelManagerJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/AttributionOsLevelManagerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onDataDeletionCompleted(JI)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MyRg_lPt(JI)V

    return-void
.end method

.method public onMeasurementStateReturned(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MWM1LN92(I)V

    return-void
.end method

.method public onRegistrationCompleted(JIZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MEghf3b7(JIZ)V

    return-void
.end method
