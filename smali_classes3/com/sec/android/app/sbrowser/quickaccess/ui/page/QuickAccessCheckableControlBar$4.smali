.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->initTopBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->toggle()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;->f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessCheckableControlBar;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method
