.class Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLogInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$feature:Ljava/lang/String;

.field final synthetic val$isStatusLog:Z

.field final synthetic val$value:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;->val$appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;->val$feature:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;->val$extra:Ljava/lang/String;

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;->val$value:J

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;->val$isStatusLog:Z

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;->val$appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;->val$feature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;->val$extra:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "extra"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;->val$extra:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;->val$value:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;->val$isStatusLog:Z

    if-eqz v2, :cond_3

    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    goto :goto_0

    :cond_3
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.providers.context"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/logging/AppLogging$2;->val$context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
