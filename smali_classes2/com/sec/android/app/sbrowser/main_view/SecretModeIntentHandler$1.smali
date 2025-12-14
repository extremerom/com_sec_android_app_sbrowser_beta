.class Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->openDownloadFile(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 2

    const-string v0, "Incognito mode is authenticated success: "

    const-string v1, "SecretModeIntentHandler"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$1;->val$intent:Landroid/content/Intent;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->openDownloadFile(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
