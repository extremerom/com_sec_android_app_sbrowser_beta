.class Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;->initializeIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;

.field final synthetic val$future:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SamsungPassSdkAdapter"

    const-string v1, "mPass.initialize(): Timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPassSdkAdapter$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
