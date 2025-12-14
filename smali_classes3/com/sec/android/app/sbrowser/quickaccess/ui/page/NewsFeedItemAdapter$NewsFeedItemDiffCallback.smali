.class final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$NewsFeedItemDiffCallback;
.super Landroidx/recyclerview/widget/A;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewsFeedItemDiffCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/A;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\n\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$NewsFeedItemDiffCallback;",
        "Landroidx/recyclerview/widget/A;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;",
        "<init>",
        "()V",
        "oldItem",
        "newItem",
        "",
        "areItemsTheSame",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)Z",
        "areContentsTheSame",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)Z
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->isPlaceHolder()Z

    move-result p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->isPlaceHolder()Z

    move-result v0

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getSource()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getSourceImageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getSourceImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getArticleUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getArticleUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getImageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getUpdatedTime()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getUpdatedTime()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;

    check-cast p2, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$NewsFeedItemDiffCallback;->areContentsTheSame(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)Z
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getArticleUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getArticleUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;

    check-cast p2, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$NewsFeedItemDiffCallback;->areItemsTheSame(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)Z

    move-result p0

    return p0
.end method
