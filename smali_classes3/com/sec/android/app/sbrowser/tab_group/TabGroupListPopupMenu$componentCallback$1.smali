.class public final Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu$componentCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab_group/TabGroupListListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu$componentCallback$1",
        "Landroid/content/ComponentCallbacks;",
        "Landroid/content/res/Configuration;",
        "configuration",
        "Ldb/r;",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "onLowMemory",
        "()V",
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


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu$componentCallback$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu$componentCallback$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;->dismiss()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu$componentCallback$1;->this$0:Lcom/sec/android/app/sbrowser/tab_group/TabGroupListPopupMenu;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
