.class Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SafetyNetInitOnSuccessListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LR5/e;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 5

    const-string p1, "safeBrowsingApi"

    const-string v0, "SafetyNetInitOnSuccessListener"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->h(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->i(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->e(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->c(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->g(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    iget-wide v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;->mCallbackId:J

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;->mUri:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;->mThreatsOfInterest:[I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->startUriLookup(JLjava/lang/String;[I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->g(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method
