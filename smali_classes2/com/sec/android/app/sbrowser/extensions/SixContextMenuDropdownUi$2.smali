.class Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->createPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-string p1, "SixContextMenuDropdownUi"

    const-string v0, "onDrag - ACTION_DRAG_STARTED"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return p2
.end method
