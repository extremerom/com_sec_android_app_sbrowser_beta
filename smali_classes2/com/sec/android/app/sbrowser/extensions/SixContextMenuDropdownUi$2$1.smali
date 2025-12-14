.class Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2$1;->this$1:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2$1;->this$1:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->b(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;)Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2$1;->this$1:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->b(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;)Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
