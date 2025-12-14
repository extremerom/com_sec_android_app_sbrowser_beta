.class public final synthetic LH9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, LH9/e;->a:I

    iput-object p1, p0, LH9/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LH9/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LH9/e;->b:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->a(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LH9/e;->b:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->b(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$WordInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, LH9/e;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, LH9/e;->b:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/parser/adapter/UriBarcodeAdapterFactory;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, LH9/e;->b:Ljava/lang/String;

    check-cast p1, LS2/a;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->e(Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/String;

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LKc/k;->x(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object p0, p0, LH9/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_5
    iget-object p0, p0, LH9/e;->b:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;->H(Ljava/lang/String;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object p0, p0, LH9/e;->b:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/imagetranslator/VexFwkImageTranslator;->j(Ljava/lang/String;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
