.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;->renameItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

.field final synthetic val$item:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$3;->val$item:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenameFinished(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$3;->val$item:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->renameQuickAccessItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessIconRecyclerAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void
.end method
