.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/main_view/r;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/r;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/r;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/r;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/r;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/r;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->g(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/r;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/r;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->k(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/r;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/r;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/r;->b:Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/r;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewArtificialIntelligence;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
