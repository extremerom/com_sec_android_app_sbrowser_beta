.class Lorg/chromium/ui/widget/AnchoredPopupWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/widget/AnchoredPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/widget/AnchoredPopupWindow;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/widget/AnchoredPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$1;->this$0:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$1;->this$0:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-static {v0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->e(Lorg/chromium/ui/widget/AnchoredPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/widget/AnchoredPopupWindow$1;->this$0:Lorg/chromium/ui/widget/AnchoredPopupWindow;

    invoke-virtual {p0}, Lorg/chromium/ui/widget/AnchoredPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
