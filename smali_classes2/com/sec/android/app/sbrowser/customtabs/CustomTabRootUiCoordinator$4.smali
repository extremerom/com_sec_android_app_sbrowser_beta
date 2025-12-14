.class Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->createHideToolbarDelegate()Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/CustomTabHideToolbarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveTab()Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->n(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    return-object p0
.end method

.method public getTopControlsOffsetYPix()F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->m(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)F

    move-result p0

    return p0
.end method

.method public isBitmapToolbarHidden()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->k(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->m(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)F

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->k(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isFindOnPageRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->isFindOnPageRunning()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHideToolbarDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->p(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->shouldEnableUrlBarHiding()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->o(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNoUiMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->q(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Z

    move-result p0

    return p0
.end method

.method public shouldBottomBarShow()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->isNoUiMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->j(Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->isFindOnPageRunning()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public shouldTopBarShow()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator$4;->isNoUiMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
