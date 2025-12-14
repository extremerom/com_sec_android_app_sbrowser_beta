.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;JI)V
    .locals 0

    iput p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;->b:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;->d:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;->b:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->g(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V

    return-void

    :pswitch_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;->d:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;->b:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/q;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->a(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
