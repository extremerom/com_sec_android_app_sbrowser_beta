.class Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;->setSuggestionsAdapter(Lorg/chromium/ui/modelutil/ModelListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;

.field final synthetic val$adapter:Lorg/chromium/ui/modelutil/ModelListAdapter;


# direct methods
.method public constructor <init>(Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;Lorg/chromium/ui/modelutil/ModelListAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView$1;->this$0:Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;

    iput-object p2, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView$1;->val$adapter:Lorg/chromium/ui/modelutil/ModelListAdapter;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView$1;->val$adapter:Lorg/chromium/ui/modelutil/ModelListAdapter;

    invoke-virtual {p1}, Lorg/chromium/ui/modelutil/ModelListAdapter;->getCount()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView$1;->this$0:Lorg/chromium/components/embedder_support/delegate/ColorPickerDialogView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lorg/chromium/components/embedder_support/delegate/R$string;->color_picker_button_suggestions:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const-class p0, Landroid/widget/ListView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method
