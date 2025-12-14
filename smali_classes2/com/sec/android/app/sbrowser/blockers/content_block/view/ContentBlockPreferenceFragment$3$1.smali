.class Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$3$1;
.super Lf1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$3;->getItemDelegate()Lf1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$3;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$3$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$3;

    invoke-direct {p0}, Lf1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
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

    move-result-object p1

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/settings/PreferenceBase;

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/PreferenceBase;

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceBase;->onAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    new-instance p1, Lg1/d;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$3$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$3;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$3;->val$openStorePage:Ljava/lang/String;

    invoke-direct {p1, v1, p0}, Lg1/d;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockDownloadPreference;

    if-eqz p1, :cond_1

    new-instance p1, Lg1/d;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$3$1;->this$1:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$3;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$3;->val$openStorePage:Ljava/lang/String;

    invoke-direct {p1, v1, p0}, Lg1/d;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->b(Lg1/d;)V

    :cond_1
    :goto_0
    return-void
.end method
