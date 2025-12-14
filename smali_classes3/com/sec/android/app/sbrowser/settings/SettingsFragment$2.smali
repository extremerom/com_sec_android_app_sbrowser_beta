.class Lcom/sec/android/app/sbrowser/settings/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->initCloudRPCSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->I()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment$2;->this$0:Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->H(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/fragment/app/J;)V

    return-void
.end method
