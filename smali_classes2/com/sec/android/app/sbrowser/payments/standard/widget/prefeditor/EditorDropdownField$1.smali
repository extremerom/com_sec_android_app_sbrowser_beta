.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field final synthetic val$changedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$1;->val$changedCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->c(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;)I

    move-result p1

    if-eq p1, p3, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->b(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;->b(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->getDropdownKeyValues()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/autofill/TerraceAutofillProfileBridge$DropdownKeyValue;->getKey()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDropdownField$1;->val$changedCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setDropdownKey(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
