.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->e:Ljava/lang/Object;

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->c:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->b:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->a:I

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, LS2/a;

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->b:J

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->d:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->e:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDao_Impl;->m(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Lcom/samsung/android/sdk/scs/base/tasks/Task;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->d:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->e:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->c:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;->b:J

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLcom/samsung/android/sdk/scs/base/tasks/Task;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
