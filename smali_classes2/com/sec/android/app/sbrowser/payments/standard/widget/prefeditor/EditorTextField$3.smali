.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;Landroid/widget/TextView$OnEditorActionListener;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;Landroid/text/InputFilter;Landroid/text/TextWatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

.field final synthetic val$fieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$3;->val$fieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$3;->val$fieldModel:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;->setValue(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->i(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->j()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->j()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorObserverForTest;->onEditorTextUpdate()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->b(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->updateDoneButtonStatus()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->c(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$3;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->isValid()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->updateDisplayedError(Z)V

    :cond_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
