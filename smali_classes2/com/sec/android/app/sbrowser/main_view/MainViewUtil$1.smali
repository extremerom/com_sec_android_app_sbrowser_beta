.class Lcom/sec/android/app/sbrowser/main_view/MainViewUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->setImmersiveMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

.field final synthetic val$isImmersiveModeEnabled:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil$1;->val$isImmersiveModeEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v1, v0, 0x200

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION = "

    const-string v3, "si__MainViewUtil"

    invoke-static {v1, v3, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;)Landroid/app/Activity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil$1;->val$isImmersiveModeEnabled:Z

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setImmersiveMode(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil$1;->val$isImmersiveModeEnabled:Z

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setFullscreenImmersiveMode(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil$1;->val$isImmersiveModeEnabled:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;->c(Lcom/sec/android/app/sbrowser/main_view/MainViewUtil;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f140a85

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    :cond_1
    return-void
.end method
