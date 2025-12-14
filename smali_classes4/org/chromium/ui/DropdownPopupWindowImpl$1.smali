.class Lorg/chromium/ui/DropdownPopupWindowImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindowImpl$1;->this$0:Lorg/chromium/ui/DropdownPopupWindowImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lorg/chromium/ui/DropdownPopupWindowImpl$1;->this$0:Lorg/chromium/ui/DropdownPopupWindowImpl;

    invoke-static {p2}, Lorg/chromium/ui/DropdownPopupWindowImpl;->a(Lorg/chromium/ui/DropdownPopupWindowImpl;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/DropdownPopupWindowImpl$1;->this$0:Lorg/chromium/ui/DropdownPopupWindowImpl;

    invoke-virtual {p0}, Lorg/chromium/ui/DropdownPopupWindowImpl;->show()V

    :cond_0
    return-void
.end method
