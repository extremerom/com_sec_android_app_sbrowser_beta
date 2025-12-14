.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockIntentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getContentBlockPreferenceFragmentIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.extensions.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sbrowser.extensions.show_fragment_type"

    const-string v2, "singleTask"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_0

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static getContentBlockPreferenceFragmentIntentForNotification(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockIntentUtils;->getContentBlockPreferenceFragmentIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x24000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static launchActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static launchExtensionsContentBlocker(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockIntentUtils;->getContentBlockPreferenceFragmentIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockIntentUtils;->launchActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static launchExtensionsContentBlockerFromNotification(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockIntentUtils;->getContentBlockPreferenceFragmentIntentForNotification(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockIntentUtils;->launchActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
