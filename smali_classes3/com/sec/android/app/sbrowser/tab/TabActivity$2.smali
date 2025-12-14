.class Lcom/sec/android/app/sbrowser/tab/TabActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab/TabActivity;->onFirstDrawComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "TabActivity"

    const-string v1, "onFirstDrawComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "The activity is already destroyed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->t(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->p(Lcom/sec/android/app/sbrowser/tab/TabActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "delayNativeInit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->v(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onPostInflation()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->s(Lcom/sec/android/app/sbrowser/tab/TabActivity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->r(Lcom/sec/android/app/sbrowser/tab/TabActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onNativeInitializationSuccess()V

    :cond_2
    :goto_0
    return-void
.end method
