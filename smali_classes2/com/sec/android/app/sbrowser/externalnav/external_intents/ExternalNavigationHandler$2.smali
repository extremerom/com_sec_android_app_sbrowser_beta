.class Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->showExternalAppIncognitoWarning(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)Lm/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

.field final synthetic val$warningDialog:Lm/l;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Lm/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$2;->this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$2;->val$warningDialog:Lm/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$2;->val$warningDialog:Lm/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
