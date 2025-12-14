.class public final Lg1/a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

.field public final c:I


# direct methods
.method public constructor <init>(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;II)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p2, p0, Lg1/a;->a:I

    iput-object p1, p0, Lg1/a;->b:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    iput p3, p0, Lg1/a;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    iget v1, p0, Lg1/a;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lg1/a;->b:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    iget-object v0, v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget p0, p0, Lg1/a;->c:I

    invoke-virtual {v0, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    return-void
.end method
