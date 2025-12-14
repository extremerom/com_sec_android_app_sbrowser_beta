.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;
.implements Lcom/sec/terrace/base/TerraceCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0

    iput p6, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->d:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->f:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->f:Ljava/io/Serializable;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->d:Z

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 13

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->e:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/content/Intent;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->f:Ljava/io/Serializable;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->c:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->a(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/Boolean;)V

    return-void

    :pswitch_0
    move-object v12, p1

    check-cast v12, Ljava/lang/Boolean;

    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->d:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->e:Ljava/lang/Object;

    move-object v10, p1

    check-cast v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->b:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->c:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->f:Ljava/io/Serializable;

    move-object v11, p0

    check-cast v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static/range {v7 .. v12}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->c(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Boolean;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->f:Ljava/io/Serializable;

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v6, p1

    check-cast v6, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->e:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->b:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->c:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->d(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
