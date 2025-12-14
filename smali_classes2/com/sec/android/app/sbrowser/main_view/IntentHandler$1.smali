.class Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->openDownloadFile(Landroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;->lambda$onResult$0(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onResult$0(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->m(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 4

    const-string v0, "Incognito mode is authenticated success: "

    const-string v1, "si__IntentHandler"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/IntentHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/IntentHandler;->l(Lcom/sec/android/app/sbrowser/main_view/IntentHandler;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;->val$intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/IntentHandler$1;->val$url:Ljava/lang/String;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/n;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForTabRestore(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
