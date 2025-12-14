.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/payments/standard/ui/PaymentRequestUI$PaymentRequestObserverForTest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return v1

    :cond_0
    const/4 p0, 0x5

    if-eq p2, p0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p2, 0x42

    if-ne p0, p2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
