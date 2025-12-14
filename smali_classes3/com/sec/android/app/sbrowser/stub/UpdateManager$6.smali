.class Lcom/sec/android/app/sbrowser/stub/UpdateManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/stub/UpdateManager;->handleRecommendUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$6;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p2, "201"

    const-string v0, "2094"

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$6;->val$activity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->callAppStore(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setLastCheckTime()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->setUpdatePopupShowedCountWithIncreasing()V

    return-void
.end method
