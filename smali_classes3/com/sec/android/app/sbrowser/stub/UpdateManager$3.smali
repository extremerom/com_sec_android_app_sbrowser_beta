.class Lcom/sec/android/app/sbrowser/stub/UpdateManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/stub/UpdateManager;->isForceUpdateVersionsAvailable()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

.field final synthetic val$forceUpdate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$3;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$3;->val$forceUpdate:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$3;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$3;->val$forceUpdate:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->e(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Ljava/lang/String;)V

    return-void
.end method
