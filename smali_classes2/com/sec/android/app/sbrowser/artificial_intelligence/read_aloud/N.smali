.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/N;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/N;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/N;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/N;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/N;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/N;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;Ljava/util/List;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/N;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/N;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;Ljava/lang/Boolean;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
