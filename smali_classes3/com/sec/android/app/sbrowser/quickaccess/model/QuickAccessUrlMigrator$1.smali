.class Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlFetcher$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;->migrate(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;

.field final synthetic val$listener:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$1;->val$listener:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QuickAccessUrlMigrator"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;->b(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$1;->val$listener:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;->onAborted()V

    :cond_0
    return-void
.end method

.method public onFetched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;->b(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "QuickAccessUrlMigrator"

    if-eqz v0, :cond_1

    const-string p2, "Skipped to update : "

    invoke-static {p2, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$1;->val$listener:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;->onAborted()V

    :cond_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessQueryParameterUtils;->getRefererUrlWithOnlyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onFetched: "

    const-string v2, " "

    const-string v3, "\n"

    invoke-static {v0, p1, v2, p2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, p3, v1}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$1;->val$listener:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;->onUrlUpdated(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "Failed to update : "

    invoke-static {p3, p1, v2}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$1;->val$listener:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;->onAborted()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNeedRetry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNeedRetry: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickAccessUrlMigrator"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$1;->val$listener:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;->onAborted()V

    :cond_0
    return-void
.end method
