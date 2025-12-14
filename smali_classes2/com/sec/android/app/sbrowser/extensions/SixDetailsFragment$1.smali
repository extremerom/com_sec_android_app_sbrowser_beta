.class Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->updateBlockedLayoutIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

.field final synthetic val$isDevExt:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$1;->val$isDevExt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->j(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isFromWebStore()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->k(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->uninstallCrx(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/f0;->S()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->n(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->q(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$1;->val$isDevExt:Z

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->k(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ext_id"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->m(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ext_name"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->l(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ext_blocked_action"

    goto :goto_0

    :cond_1
    const-string p0, "ext_unsupported_action"

    :goto_0
    const-string v0, "ext_uninstall"

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "601"

    const-string v0, "6152"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method
