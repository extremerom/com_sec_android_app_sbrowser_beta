.class Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog$CloseAllDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->askExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

.field final synthetic val$pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$2;->val$pref:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateAssistantMenuIfNecessary()V

    return-void
.end method

.method public onPositiveButtonClicked(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->loggingForAskExit(ZZ)V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$2;->val$pref:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "close_all_dialog_dont_show_again"

    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setCloseAllTabs(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->doFinish(Z)V

    return-void
.end method
