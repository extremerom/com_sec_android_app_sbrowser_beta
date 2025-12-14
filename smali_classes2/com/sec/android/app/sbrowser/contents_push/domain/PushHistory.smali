.class public Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory$State;
    }
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mReceivedDate:Ljava/lang/String;

.field private final mState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mReceivedDate:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mState:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mId:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mReceivedDate:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mReceivedDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mState:I

    iget p1, p1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mState:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getReceivedDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mReceivedDate:Ljava/lang/String;

    return-object p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mState:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mReceivedDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushHistory;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
