.class Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->startTabAnimation(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator$AnimationType;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

.field final synthetic val$tabAnimator:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$4;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$4;->val$tabAnimator:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$4;->val$tabAnimator:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->removeAnimationLayout()V

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    return-void
.end method

.method public onLoadFailed(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ILjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$4;->val$tabAnimator:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->removeAnimationLayout()V

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    return-void
.end method

.method public onLoadStarted(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$4;->val$tabAnimator:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->removeAnimationLayout()V

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    return-void
.end method
