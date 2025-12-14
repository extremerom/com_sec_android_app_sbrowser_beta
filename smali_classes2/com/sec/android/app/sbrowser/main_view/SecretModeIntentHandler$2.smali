.class Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->checkAuthenticationRequired(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$2;->val$callback:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 2

    const-string v0, "secret mode is authenticated success:"

    const-string v1, "SecretModeIntentHandler"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->g(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$2;->val$callback:Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;->onResult(Z)V

    :cond_0
    return-void
.end method
