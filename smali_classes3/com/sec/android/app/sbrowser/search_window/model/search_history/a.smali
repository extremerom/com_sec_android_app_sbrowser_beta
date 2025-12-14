.class public final synthetic Lcom/sec/android/app/sbrowser/search_window/model/search_history/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/a;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/a;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->d(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/a;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->g(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$LineInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LS2/a;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/a;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->b(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
