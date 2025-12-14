.class Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom$1$1;
.super Lf1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom$1;->getItemDelegate()Lf1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom$1;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom$1$1;->this$1:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom$1;

    invoke-direct {p0}, Lf1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lf1/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceBase;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceBase;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceBase;->onAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method
