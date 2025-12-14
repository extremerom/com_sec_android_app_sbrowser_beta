.class Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar$Listener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTabsScreenId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;->getTabsScreenId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onSearchBackButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;->onCloseMultiTabClicked()V

    return-void
.end method

.method public onTextChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;->activateSearchFilter()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$3;->this$0:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl;)Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabToolbarControl$Delegate;->showNoResultsViewIfNeeded()V

    return-void
.end method
