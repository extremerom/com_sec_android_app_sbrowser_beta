.class Lorg/chromium/components/embedder_support/delegate/ColorPickerViewBinder$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/embedder_support/delegate/ColorPickerViewBinder;->bindAdapter(Lorg/chromium/ui/modelutil/PropertyModel;Landroid/view/View;Lorg/chromium/ui/modelutil/PropertyKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$model:Lorg/chromium/ui/modelutil/PropertyModel;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/modelutil/PropertyModel;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerViewBinder$1;->val$model:Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Lorg/chromium/components/embedder_support/delegate/ColorPickerViewBinder$1;->val$model:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object p1, Lorg/chromium/components/embedder_support/delegate/ColorPickerSuggestionProperties;->INDEX:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I

    move-result p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, p1, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method
