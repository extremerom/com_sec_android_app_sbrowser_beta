.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;->b:Ljava/lang/Object;

    check-cast p0, Lw6/q;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lw6/q;->I:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lw6/q;->c:Landroid/os/Handler;

    iget-object p0, p0, Lw6/q;->j0:LH6/p;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/ui/listmenu/ListMenuHost;

    invoke-static {p0}, Lorg/chromium/ui/listmenu/ListMenuHost;->a(Lorg/chromium/ui/listmenu/ListMenuHost;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->b(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/reader/feature/option/widget/ReaderOptionPopupView$Listener;->onPopupHide()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->d(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->e(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
