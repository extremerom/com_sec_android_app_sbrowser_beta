.class Lorg/chromium/ui/accessibility/AccessibilityStateJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/accessibility/AccessibilityState$Natives;


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

.method public static get()Lorg/chromium/ui/accessibility/AccessibilityState$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/ui/accessibility/AccessibilityStateJni;

    invoke-direct {v0}, Lorg/chromium/ui/accessibility/AccessibilityStateJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAnimatorDurationScaleChanged()V
    .locals 0

    invoke-static {}, LJ/N;->Mp$Ilbw7()V

    return-void
.end method

.method public onContrastLevelChanged(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MGjvHm4a(Z)V

    return-void
.end method

.method public onDisplayInversionEnabledChanged(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MtMa5$Hn(Z)V

    return-void
.end method

.method public recordAccessibilityServiceInfoHistograms()V
    .locals 0

    invoke-static {}, LJ/N;->M79vOuoR()V

    return-void
.end method
