.class Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateUninstallBtnIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$5;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$5;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const-string v0, "SixDetailsFragment"

    if-nez p1, :cond_0

    const-string p0, "updateUninstallBtnIfNeeded - No activity. Aborting"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$5;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->k(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->uninstallCrx(Ljava/lang/String;)Z

    const-string p1, "updateUninstallBtnIfNeeded - uninstall called. closing self"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$5;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/f0;->S()V

    const/4 p0, 0x1

    return p0
.end method
