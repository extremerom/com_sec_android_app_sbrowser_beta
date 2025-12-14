.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic g:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;I)V
    .locals 0

    iput p7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->d:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->g:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->a:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v8, p1

    check-cast v8, Ljava/lang/Boolean;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;

    iget-boolean v4, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->d:Z

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->g:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->n(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    move-object/from16 v15, p1

    check-cast v15, Ljava/lang/Boolean;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;

    iget-boolean v11, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->d:Z

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;->g:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-static/range {v9 .. v15}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/Boolean;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
