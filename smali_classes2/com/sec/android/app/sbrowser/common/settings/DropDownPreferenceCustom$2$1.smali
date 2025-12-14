.class Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2;

.field final synthetic val$isChecked:Z

.field final synthetic val$textView:Landroidx/appcompat/widget/SeslCheckedTextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2;ZLandroidx/appcompat/widget/SeslCheckedTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2$1;->this$1:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2$1;->val$isChecked:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2$1;->val$textView:Landroidx/appcompat/widget/SeslCheckedTextView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2$1;->val$isChecked:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2$1;->this$1:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f14067e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom$2$1;->val$textView:Landroidx/appcompat/widget/SeslCheckedTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
