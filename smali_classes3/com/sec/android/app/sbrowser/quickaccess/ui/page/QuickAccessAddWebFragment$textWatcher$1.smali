.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$textWatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebEditText$TextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->textWatcher()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$textWatcher$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$textWatcher$1",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebEditText$TextListener;",
        "",
        "inputText",
        "Ldb/r;",
        "onTextChanged",
        "(Ljava/lang/String;)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/String;)V
    .locals 5

    const-string v0, "inputText"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->access$getSearchWindowViewModel(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object v0

    invoke-static {p1}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->updateUrlBarText(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->access$getMaxTextLength(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessEnteredInputTextError;->invoke(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->access$getBinding$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;)Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->clearButton:Landroid/widget/ImageButton;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment$textWatcher$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->access$getBinding$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;)Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/QuickAccessAddWebFragmentBinding;->addButton:Lcom/sec/android/app/sbrowser/common/widget/ShapedButton;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p0, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const p1, 0x3ecccccd    # 0.4f

    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_5
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method
