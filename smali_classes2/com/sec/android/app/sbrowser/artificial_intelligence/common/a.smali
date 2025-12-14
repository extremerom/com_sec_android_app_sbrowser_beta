.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/common/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceJavaScriptCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/a;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleJavaScriptResult(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/a;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->e(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
