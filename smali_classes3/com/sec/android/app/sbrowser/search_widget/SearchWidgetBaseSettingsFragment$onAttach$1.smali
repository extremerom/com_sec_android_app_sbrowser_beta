.class public final Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$onAttach$1;
.super Landroidx/activity/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->onAttach(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$onAttach$1",
        "Landroidx/activity/u;",
        "Ldb/r;",
        "handleOnBackPressed",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$onAttach$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$onAttach$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->checkSettingChanged()Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment$onAttach$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;->access$showSaveChangeDialog(Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetBaseSettingsFragment;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
