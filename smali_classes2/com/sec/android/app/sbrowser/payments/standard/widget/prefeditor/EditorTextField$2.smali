.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->g(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->c(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->isValid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->updateDisplayedError(Z)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->c(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$2;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->a(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->updateDoneButtonStatus()V

    :cond_2
    return-void
.end method
