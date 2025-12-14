.class Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->updateDoneButtonStatus()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->n(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->d(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->h(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog$4;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;->h(Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialog;)Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorDialogToolbar;->setEnableSaveMenuItemThenUpdate(Z)V

    :cond_0
    return-void
.end method
