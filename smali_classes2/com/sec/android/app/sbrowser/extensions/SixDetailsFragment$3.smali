.class Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateGoAddonSettings(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$3;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "create_new_tab"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.browser.application_id"

    const-string v3, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ext_id"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->k(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ext_name"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->m(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "601"

    const-string v2, "6119"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateGoAddonSettings - exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SixDetailsFragment"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return p1
.end method
