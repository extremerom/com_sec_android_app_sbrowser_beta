.class Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriFailureListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LookupUriFailureListener"
.end annotation


# instance fields
.field private final mCallbackId:J

.field private final mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriFailureListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriFailureListener;->mCallbackId:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriFailureListener;->mUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 13
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lb5/h;

    const/4 v1, -0x1

    const-string v2, "safeBrowsingApi"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    check-cast p1, Lb5/h;

    iget-object p1, p1, Lb5/h;->a:Lcom/google/android/gms/common/api/Status;

    iget p1, p1, Lcom/google/android/gms/common/api/Status;->b:I

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    move v1, v3

    move v3, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const-string v0, "Unknown status code: "

    invoke-static {p1, v0, v2}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    move v10, v1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unknown error: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    const-string p1, "onFailure"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriFailureListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->b(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriFailureListener;->mUri:Ljava/lang/String;

    iget-wide v8, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriFailureListener;->mCallbackId:J

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-string v11, ""

    invoke-static/range {v4 .. v12}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->m(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;Ljava/lang/String;ZJILjava/lang/String;I)V

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriFailureListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->reconnect()V

    :cond_3
    return-void
.end method
