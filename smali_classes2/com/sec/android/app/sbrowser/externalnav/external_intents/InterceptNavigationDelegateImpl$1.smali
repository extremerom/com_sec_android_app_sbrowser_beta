.class Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->clobberMainFrame(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

.field final synthetic val$loadUrlParams:Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl$1;->this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl$1;->val$loadUrlParams:Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl$1;->this$0:Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;->f(Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateImpl$1;->val$loadUrlParams:Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/InterceptNavigationDelegateClient;->loadUrlIfPossible(Lcom/sec/android/app/sbrowser/tab/LoadUrlParams;)V

    return-void
.end method
