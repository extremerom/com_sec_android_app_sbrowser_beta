.class Lorg/chromium/ui/DropdownPopupWindowImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/DropdownPopupWindowImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/chromium/ui/widget/RectProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/DropdownPopupWindowImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/DropdownPopupWindowImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl$2;->this$0:Lorg/chromium/ui/DropdownPopupWindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl$2;->this$0:Lorg/chromium/ui/DropdownPopupWindowImpl;

    invoke-static {v0}, Lorg/chromium/ui/DropdownPopupWindowImpl;->b(Lorg/chromium/ui/DropdownPopupWindowImpl;)Lorg/chromium/ui/widget/AnchoredPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->dismiss()V

    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl$2;->this$0:Lorg/chromium/ui/DropdownPopupWindowImpl;

    invoke-static {v0}, Lorg/chromium/ui/DropdownPopupWindowImpl;->a(Lorg/chromium/ui/DropdownPopupWindowImpl;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl$2;->this$0:Lorg/chromium/ui/DropdownPopupWindowImpl;

    invoke-static {v1}, Lorg/chromium/ui/DropdownPopupWindowImpl;->c(Lorg/chromium/ui/DropdownPopupWindowImpl;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl$2;->this$0:Lorg/chromium/ui/DropdownPopupWindowImpl;

    invoke-static {p0}, Lorg/chromium/ui/DropdownPopupWindowImpl;->a(Lorg/chromium/ui/DropdownPopupWindowImpl;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
