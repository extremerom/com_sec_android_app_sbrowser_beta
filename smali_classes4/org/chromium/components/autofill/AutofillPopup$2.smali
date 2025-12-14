.class Lorg/chromium/components/autofill/AutofillPopup$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/autofill/AutofillPopup;->filterAndShow([Lorg/chromium/components/autofill/AutofillSuggestion;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/autofill/AutofillPopup;


# direct methods
.method public constructor <init>(Lorg/chromium/components/autofill/AutofillPopup;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillPopup$2;->this$0:Lorg/chromium/components/autofill/AutofillPopup;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillPopup$2;->this$0:Lorg/chromium/components/autofill/AutofillPopup;

    invoke-virtual {v0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillPopup$2;->this$0:Lorg/chromium/components/autofill/AutofillPopup;

    invoke-static {v1}, Lorg/chromium/components/autofill/AutofillPopup;->b(Lorg/chromium/components/autofill/AutofillPopup;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillPopup$2;->this$0:Lorg/chromium/components/autofill/AutofillPopup;

    invoke-virtual {v0}, Lorg/chromium/ui/DropdownPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/components/autofill/AutofillPopup$2;->this$0:Lorg/chromium/components/autofill/AutofillPopup;

    invoke-static {v1}, Lorg/chromium/components/autofill/AutofillPopup;->b(Lorg/chromium/components/autofill/AutofillPopup;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
