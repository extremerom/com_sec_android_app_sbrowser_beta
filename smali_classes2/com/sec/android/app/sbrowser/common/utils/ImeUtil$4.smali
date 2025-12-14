.class Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$flags:I

.field final synthetic val$view:Landroid/view/View;


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$4;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$4;->val$view:Landroid/view/View;

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil$4;->val$flags:I

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
