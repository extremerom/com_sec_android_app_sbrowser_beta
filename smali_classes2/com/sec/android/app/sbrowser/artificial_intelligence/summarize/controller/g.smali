.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/g;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/g;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/g;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/g;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->k(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
