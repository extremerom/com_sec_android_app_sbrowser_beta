.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;
.implements Lcom/sec/terrace/TerraceJavaScriptCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# direct methods
.method public synthetic constructor <init>(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;->b:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleJavaScriptResult(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;->b:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudScript;->b(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudScript;->a(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->e(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void

    :pswitch_3
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->c(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void

    :pswitch_4
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->a(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;->b:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->p(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Z)V

    return-void
.end method
