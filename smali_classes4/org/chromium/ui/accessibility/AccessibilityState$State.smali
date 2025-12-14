.class public Lorg/chromium/ui/accessibility/AccessibilityState$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/accessibility/AccessibilityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public final isAccessibilityToolPresent:Z

.field public final isAnyAccessibilityServiceEnabled:Z

.field public final isOnlyPasswordManagersEnabled:Z

.field public final isPerformGesturesEnabled:Z

.field public final isScreenReaderEnabled:Z

.field public final isSpokenFeedbackServicePresent:Z

.field public final isTextShowPasswordEnabled:Z

.field public final isTouchExplorationEnabled:Z


# direct methods
.method public constructor <init>(ZZZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isScreenReaderEnabled:Z

    iput-boolean p2, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isTouchExplorationEnabled:Z

    iput-boolean p3, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isPerformGesturesEnabled:Z

    iput-boolean p4, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isAnyAccessibilityServiceEnabled:Z

    iput-boolean p5, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isAccessibilityToolPresent:Z

    iput-boolean p6, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isSpokenFeedbackServicePresent:Z

    iput-boolean p7, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isTextShowPasswordEnabled:Z

    iput-boolean p8, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isOnlyPasswordManagersEnabled:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State{isScreenReaderEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isScreenReaderEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTouchExplorationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isTouchExplorationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPerformGesturesEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isPerformGesturesEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAnyAccessibilityServiceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isAnyAccessibilityServiceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAccessibilityToolPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isAccessibilityToolPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSpokenFeedbackServicePresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isSpokenFeedbackServicePresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTextShowPasswordEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isTextShowPasswordEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOnlyPasswordManagersEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/chromium/ui/accessibility/AccessibilityState$State;->isOnlyPasswordManagersEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
