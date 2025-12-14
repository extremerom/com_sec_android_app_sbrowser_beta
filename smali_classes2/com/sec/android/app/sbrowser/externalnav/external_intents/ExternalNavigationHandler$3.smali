.class Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceWindowAndroid$IntentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->startActivityWithChooser(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Context;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

.field final synthetic val$browserFallbackUrl:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$intentDataUrl:Ljava/lang/String;

.field final synthetic val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$intentDataUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$browserFallbackUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntentCompleted(ILandroid/content/Intent;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p1

    if-nez p2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->forNoAction()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/base/TerraceRequiredCallback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->isOnNavigation()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->setShouldNotOverrideUrlLoadingOnCurrentRedirectChain()V

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$intentDataUrl:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$intentDataUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->forNavigate(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/base/TerraceRequiredCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$browserFallbackUrl:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$browserFallbackUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->forNavigate(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/base/TerraceRequiredCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->forNoAction()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/base/TerraceRequiredCallback;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$intent:Landroid/content/Intent;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->q(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->startActivity(Landroid/content/Intent;ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)V

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;->val$params:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    invoke-static {p2, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->forExternalIntentLaunched(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/base/TerraceRequiredCallback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
