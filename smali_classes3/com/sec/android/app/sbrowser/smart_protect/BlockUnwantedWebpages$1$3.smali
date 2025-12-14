.class Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1$3;->this$1:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBlockUnwantedWebpagesEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBlockUnwantedWebpages(Z)V

    :cond_0
    return-void
.end method
