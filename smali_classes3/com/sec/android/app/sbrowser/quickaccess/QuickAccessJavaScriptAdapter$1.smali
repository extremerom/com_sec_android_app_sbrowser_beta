.class Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/dialog/RenameDialogFragment$RenameFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->onShowRenameDialogReceived(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

.field final synthetic val$item:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$1;->val$item:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenameFinished(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->m(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showShortcutSavedToast(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;->n(Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/QuickAccessJavaScriptAdapter$1;->val$item:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/ContentsFeedViewModel;->renameQuickAccessItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/String;)V

    return-void
.end method
