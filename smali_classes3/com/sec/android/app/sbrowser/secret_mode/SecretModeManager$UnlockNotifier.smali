.class Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$UnlockNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnlockNotifier"
.end annotation


# instance fields
.field private mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$UnlockNotifier;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$UnlockNotifier;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$UnlockNotifier;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$UnlockNotifier;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->i(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;)V

    return-void
.end method
