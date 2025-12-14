.class Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->onItemClick(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;

.field final synthetic val$menuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;Landroid/view/MenuItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$4;->val$menuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->b(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;)Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->a(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;)Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$4;->val$menuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method
