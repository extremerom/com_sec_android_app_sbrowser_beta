.class Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriSuccessListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LookupUriSuccessListener"
.end annotation


# instance fields
.field private final mCallbackId:J

.field private mThreatDetected:Z

.field private final mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriSuccessListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriSuccessListener;->mCallbackId:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriSuccessListener;->mUri:Ljava/lang/String;

    return-void
.end method

.method private constructJsonMetadata(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LN5/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"threat_type\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN5/a;

    iget v2, v2, LN5/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "{\"matches\":["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "]}"

    invoke-static {p0, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onSuccess(LN5/c;)V
    .locals 12

    invoke-virtual {p1}, LN5/c;->S0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriSuccessListener;->mThreatDetected:Z

    const-string p1, "{}"

    move-object v10, p1

    :goto_0
    move v11, v2

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriSuccessListener;->mThreatDetected:Z

    invoke-virtual {p1}, LN5/c;->S0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriSuccessListener;->constructJsonMetadata(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LN5/c;->S0()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN5/a;

    iget v2, p1, LN5/a;->a:I

    move-object v10, v0

    goto :goto_0

    :goto_1
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriSuccessListener;->mThreatDetected:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getDetectedCount()I

    move-result p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v0

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateDetectedCount(I)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriSuccessListener;->this$0:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->b(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriSuccessListener;->mUri:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriSuccessListener;->mThreatDetected:Z

    iget-wide v7, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriSuccessListener;->mCallbackId:J

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->m(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;Ljava/lang/String;ZJILjava/lang/String;I)V

    return-void
.end method
