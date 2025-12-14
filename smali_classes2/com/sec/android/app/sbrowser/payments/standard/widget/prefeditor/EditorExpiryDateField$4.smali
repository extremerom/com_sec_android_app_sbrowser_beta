.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->c(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->c(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->n(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->c(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;->d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorExpiryDateField;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setWidth(I)V

    return-void
.end method
