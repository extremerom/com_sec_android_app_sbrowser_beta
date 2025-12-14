.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;

.field final synthetic val$count:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;

    iput p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$2;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->e(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p1

    iget p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$2;->val$count:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;)Landroid/widget/Spinner;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_1
    return v0
.end method
