.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/c;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/TargetLanguageSpinnerController;Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->h(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
