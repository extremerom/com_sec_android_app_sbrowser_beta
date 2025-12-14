.class Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->createSixSwitchPreference(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

.field final synthetic val$data:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

.field final synthetic val$isToBeUninstalled:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$7;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$7;->val$data:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$7;->val$isToBeUninstalled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$7;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->a(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "SixPreferencesManager"

    const-string p1, "onPreferenceClick - activity is null. Aborting!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$7;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$7;->val$data:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$7;->val$isToBeUninstalled:Z

    invoke-virtual {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->runPreferenceClick(Landroidx/preference/Preference;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)Z

    move-result p0

    return p0
.end method
