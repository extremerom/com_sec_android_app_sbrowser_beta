.class Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SafetyNetInitOnFailureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 7
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A failed attempt to connect the client to the service:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "safeBrowsingApi"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->disable()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->e(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->c(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->g(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    new-array v0, p1, [J

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->g(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    iget-object v4, v2, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;->mUri:Ljava/lang/String;

    iget-wide v5, v2, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;->mCallbackId:J

    invoke-static {v3, v5, v6, v4}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->j(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;JLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->g(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method
