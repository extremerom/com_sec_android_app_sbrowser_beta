.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/main_view/s;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/s;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/s;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/s;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/s;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/s;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/s;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/s;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Ljava/lang/String;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/s;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/s;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->l(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Ljava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
