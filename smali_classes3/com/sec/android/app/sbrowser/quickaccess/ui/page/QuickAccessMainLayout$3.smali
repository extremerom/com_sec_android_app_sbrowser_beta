.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->createQuickAccessChildViewDelegate()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomBarHeight()F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->T(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->bottomBarHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getCheckableBottomBarHeight()F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->T(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->U(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->checkableBottomBarHeight(Z)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getCheckableTopBarHeight()F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->T(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->checkableTopBarHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getLastTranslatedToolbarY()F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->W(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getVisibleToolBarHeight()F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->T(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->visibleToolBarHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isEditMode()Z

    move-result p0

    return p0
.end method

.method public onHoverScrollUpStopped()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->isHeaderCompletelyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$3;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->translationMainToolbarY(IZ)V

    :cond_0
    return-void
.end method
