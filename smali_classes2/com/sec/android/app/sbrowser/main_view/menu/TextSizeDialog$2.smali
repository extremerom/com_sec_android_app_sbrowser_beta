.class Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->show(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

.field final synthetic val$binding:Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$2;->val$binding:Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$2;->val$binding:Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;

    iget-object p3, p3, Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;->textSize:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {p1, p3, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->updateTextSize(Landroid/widget/TextView;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$2;->val$binding:Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;->seekbarParent:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$2;->val$binding:Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;->textSize:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {p1}, Lt/J0;->getProgress()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->updateTextSize(Landroid/widget/TextView;I)V

    return-void
.end method
