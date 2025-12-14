.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$4;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->getMoreMenuListView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroidx/appcompat/widget/SeslCheckedTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finalIsChecked:Z

.field final synthetic val$textView:Landroidx/appcompat/widget/SeslCheckedTextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;ZLandroid/content/Context;Landroidx/appcompat/widget/SeslCheckedTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$4;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$4;->val$finalIsChecked:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$4;->val$textView:Landroidx/appcompat/widget/SeslCheckedTextView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$4;->val$finalIsChecked:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$4;->val$context:Landroid/content/Context;

    const v1, 0x7f14067e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton$4;->val$textView:Landroidx/appcompat/widget/SeslCheckedTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
