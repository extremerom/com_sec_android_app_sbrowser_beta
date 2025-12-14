.class Lcom/sec/android/app/sbrowser/si_log/SILog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/si_log/SILog;->sendInternal(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$eventId:I

.field final synthetic val$extraParams:Ljava/util/Map;

.field final synthetic val$resultListener:Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;

.field final synthetic val$serviceId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;IILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$2;->val$resultListener:Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;

    iput p2, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$2;->val$serviceId:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$2;->val$eventId:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$2;->val$extraParams:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$2;->val$resultListener:Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;->onFailure()V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$2;->val$serviceId:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$2;->val$eventId:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$2;->val$extraParams:Ljava/util/Map;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->showToastMessage(IILjava/util/Map;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$2;->val$resultListener:Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ResultListener;->onSuccess()V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$2;->val$serviceId:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$2;->val$eventId:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/SILog$2;->val$extraParams:Ljava/util/Map;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->showToastMessage(IILjava/util/Map;)V

    return-void
.end method
