.class Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/secret_mode/SecretModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$2;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSecretMode(I)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result p0

    return p0
.end method

.method public requestResetSecretMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$2;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->resetSecretMode()V

    return-void
.end method
