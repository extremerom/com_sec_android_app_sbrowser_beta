.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->initializeInternal(Landroid/content/Context;Ljava/lang/Integer;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateCompleted(Ljava/lang/Integer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->b(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->b(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Z)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetchConfig update status : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->d(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentBlock.ConfigManager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
