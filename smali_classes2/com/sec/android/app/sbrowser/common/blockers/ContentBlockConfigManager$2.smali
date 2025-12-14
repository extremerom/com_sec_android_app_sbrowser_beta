.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$initCallback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$2;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$2;->val$callback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$2;->val$initCallback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$2;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$2;->val$callback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$2;->val$initCallback:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->c(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$UpdateCallback;Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager$InitCallback;)V

    return-void
.end method
