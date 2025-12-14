.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/S;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/S;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSiteItem;

    move-result-object p0

    return-object p0
.end method
