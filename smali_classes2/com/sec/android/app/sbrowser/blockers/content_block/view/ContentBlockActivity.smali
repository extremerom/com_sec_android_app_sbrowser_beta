.class public Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity;
.super Lm/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm/n;-><init>()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity;->launchExtensionsActivity()V

    return-void
.end method

.method private launchExtensionsActivity()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isContentBlockMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ContentBlock.Activity"

    const-string v1, "Extensions/ContentBlock not supported."

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.extensions.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sbrowser.extensions.show_fragment_type"

    const-string v2, "singleTask"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sbrowser.content_block.launched_from_third_party"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/16 v3, 0x21

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setPopOverOptions(Landroid/app/Activity;[IZ)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/J;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity;->launchExtensionsActivity()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity$1;-><init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/sec/terrace/TerraceHelper;->initializeAsync(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V

    :goto_0
    return-void
.end method
