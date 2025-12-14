.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->initContentBlockerLists(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$1;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isNeedToUpdateDefaultList(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockResourceManager;->updateDefaultList(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
