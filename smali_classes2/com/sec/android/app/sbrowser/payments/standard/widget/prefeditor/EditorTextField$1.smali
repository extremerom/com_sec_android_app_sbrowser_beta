.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->e(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->e(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Landroid/widget/AutoCompleteTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->e(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Landroid/widget/AutoCompleteTextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField$1;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;->e(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorTextField;)Landroid/widget/AutoCompleteTextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sget-object p5, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method
