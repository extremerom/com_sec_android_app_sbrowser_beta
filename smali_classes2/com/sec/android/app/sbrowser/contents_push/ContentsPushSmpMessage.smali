.class public Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContentLink:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mImageLink:Ljava/lang/String;

.field private final mNotiType:Ljava/lang/String;

.field private final mPublisher:Ljava/lang/String;

.field private final mSubType:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mTopic:Ljava/lang/String;

.field private final mTopicId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mTopic:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mTopicId:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mContentLink:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mImageLink:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mPublisher:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mSubType:Ljava/lang/String;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mNotiType:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/util/Map;)Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;"
        }
    .end annotation

    new-instance v10, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;

    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v0, "topic"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "topicId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "title"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "link"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "image"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v0, "publisher"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "subtype"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const-string v0, "notiType"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Ljava/lang/String;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method


# virtual methods
.method public getContentLink()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mContentLink:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getImageLink()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mImageLink:Ljava/lang/String;

    return-object p0
.end method

.method public getNotiType()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mNotiType:Ljava/lang/String;

    return-object p0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mPublisher:Ljava/lang/String;

    return-object p0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mSubType:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mTopic:Ljava/lang/String;

    return-object p0
.end method

.method public getTopicId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;->mTopicId:Ljava/lang/String;

    return-object p0
.end method
