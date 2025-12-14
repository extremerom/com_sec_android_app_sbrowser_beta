.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mArticleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceLanguage:Ljava/lang/String;

.field private final mTabId:I

.field private mTargetLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->mArticleList:Ljava/util/List;

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->mTabId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;
    .locals 7

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;

    iget v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->mTabId:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->mArticleList:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->mSourceLanguage:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->mTargetLanguage:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;-><init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v6
.end method

.method public setArticleList(Ljava/util/List;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudArticleListItem;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->mArticleList:Ljava/util/List;

    return-object p0
.end method

.method public setLanguages(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->mSourceLanguage:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->mTargetLanguage:Ljava/lang/String;

    return-object p0
.end method
