.class Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->createSixSuggestedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

.field final synthetic val$extId:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$6;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$6;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$6;->val$extId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$6;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->a(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "SixPreferencesManager"

    const-string p1, "onClick - activity is null. Aborting!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$6;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->a(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isRunningSecretMode(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$6;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->b(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$6;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;->openGalaxyStore(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$6;->val$extId:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendTapSuggestedListEventLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
