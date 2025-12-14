.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->c:Ljava/lang/String;

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->d:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->b:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->d:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->b:J

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;JLjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->d:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->e:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;->b:J

    invoke-static {v3, v4, v1, v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->b(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
