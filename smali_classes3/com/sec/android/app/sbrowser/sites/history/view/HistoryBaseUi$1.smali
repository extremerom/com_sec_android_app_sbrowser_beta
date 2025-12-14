.class Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUiHelper$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->createHistoryBaseUiHelperInstance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addObserver()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public checkBoxAnimation()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$200(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Z)V

    return-void
.end method

.method public finishDeleteMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->onFinishDeleteMode()V

    return-void
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$300(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getHistoryItemsMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->o(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public getIsFirstLongPressIndex()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->q(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)I

    move-result p0

    return p0
.end method

.method public getSelectedItemsCountByCategory()[I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->u(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)[I

    move-result-object p0

    return-object p0
.end method

.method public getSelectedList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getTouchActionDowned()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$500(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z

    move-result p0

    return p0
.end method

.method public isInActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$400(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Z

    move-result p0

    return p0
.end method

.method public menuItemVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setMenuItemVisibility(Z)V

    return-void
.end method

.method public refreshMenus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->H(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)V

    return-void
.end method

.method public removeObserver()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public selectAll()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->isSelectAll()Z

    move-result p0

    return p0
.end method

.method public selectAllCheckBoxAnimation()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->j(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$100(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Landroid/widget/CheckBox;)V

    return-void
.end method

.method public setByPassActionMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->x(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Z)V

    return-void
.end method

.method public startDeleteModeVarsUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$002(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->x(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->w(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;)Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/sites/history/view/VideoHistoryPane;->setEnabled(Z)V

    return-void
.end method

.method public updateCheckByShiftClick(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->J(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;II)V

    return-void
.end method

.method public updateGetTouchActionDowned(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->access$602(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Z)Z

    return-void
.end method

.method public updateGroupCount(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->y(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V

    return-void
.end method

.method public updateHistoryItemNums([I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->z(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;[I)V

    return-void
.end method

.method public updateHistorySelectedItemCount()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->setHistorySelectedItemCount()V

    return-void
.end method

.method public updateIsFirstLongPressIndex(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->A(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V

    return-void
.end method

.method public updateIsLongPressDragging(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->B(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Z)V

    return-void
.end method

.method public updateOptionsMenuSelected(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->C(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;Z)V

    return-void
.end method

.method public updatePrevSelectedIndex()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->D(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;I)V

    return-void
.end method

.method public updateSelectedItemsCountByCategory([I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi$1;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;->E(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryBaseUi;[I)V

    return-void
.end method
