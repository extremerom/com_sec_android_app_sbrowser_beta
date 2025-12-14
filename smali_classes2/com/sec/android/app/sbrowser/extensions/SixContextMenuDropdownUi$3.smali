.class Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->b(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;)Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;->b(Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownUi;)Lcom/sec/android/app/sbrowser/extensions/SixContextMenuDropdownPopupWindow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method
