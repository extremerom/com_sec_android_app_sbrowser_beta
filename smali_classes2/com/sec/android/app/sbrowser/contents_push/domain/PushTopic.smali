.class public Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;",
        ">;"
    }
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mIndex:I

.field private final mIsRecommend:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->mId:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->mIndex:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->mName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->mIsRecommend:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;)I
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->compareTo(Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->mId:Ljava/lang/String;

    check-cast p1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->mId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->mIndex:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->mId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isRecommend()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;->mIsRecommend:Z

    return p0
.end method
