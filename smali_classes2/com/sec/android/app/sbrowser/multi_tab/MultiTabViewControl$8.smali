.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->initExtendedAppBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$8;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroupPathHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$8;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;->getGroupPathHeight()I

    move-result p0

    return p0
.end method

.method public getTabMainView()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$8;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mTabMainView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    return-object p0
.end method

.method public isAdded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$8;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    return p0
.end method

.method public isHideStatusBarEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$8;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->mMultiTabViewDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewDelegate;->isHideStatusBarEnabled()Z

    move-result p0

    return p0
.end method

.method public isOnAnimation()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$8;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isMultiTabAnimating()Z

    move-result p0

    return p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl$8;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewControl;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method
