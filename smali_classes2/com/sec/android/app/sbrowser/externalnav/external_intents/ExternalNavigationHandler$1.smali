.class Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->requestFilePermissions(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

.field final synthetic val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$1;->this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$1;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 0

    array-length p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p2, p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$1;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$1;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$1;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$1;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->forNavigate(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/base/TerraceRequiredCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$1;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$1;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->forNoAction()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/base/TerraceRequiredCallback;->onResult(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
