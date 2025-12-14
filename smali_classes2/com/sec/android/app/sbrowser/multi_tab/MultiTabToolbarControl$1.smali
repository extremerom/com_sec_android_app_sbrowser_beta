.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackBtnClicked()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;->isGroupListShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;->onCloseGroupList()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;->onCloseMultiTabClicked()V

    :goto_0
    return-void
.end method

.method public onMultiTabMoreMenuClicked(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;->showMoreMenu()V

    return-void
.end method

.method public onSearchBtnClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$1;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;->onSearchBtnClicked()V

    return-void
.end method
