.class Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/m;


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

.field final synthetic val$pref:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$8;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$8;->val$pref:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$8;->val$data:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$8;->val$isToBeUninstalled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$8;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->a(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "SixPreferencesManager"

    const-string p1, "onPreferenceChange - activity is null. Aborting!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$8;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$8;->val$pref:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$8;->val$data:Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$8;->val$isToBeUninstalled:Z

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->f(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Landroidx/preference/Preference;Ljava/lang/Object;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)Z

    move-result p0

    return p0
.end method
