.class Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->showInfoBar(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAction : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentBlock.PromotionManager"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->c(Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;Landroid/content/Context;)V

    const-string p1, "DOWNLOAD"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->b(Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;Landroid/content/Context;)V

    const-string p1, "CANCEL"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager$1;->val$context:Landroid/content/Context;

    const-string v1, "0348"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->a(Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;)V

    return-void
.end method
