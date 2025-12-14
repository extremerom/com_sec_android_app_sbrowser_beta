.class Lcom/sec/android/app/sbrowser/settings/SettingsActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity$1;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity$1;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->shouldFragmentFinish(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity$1;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
