.class Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1;->this$0:Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->b()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1$1;-><init>(Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
