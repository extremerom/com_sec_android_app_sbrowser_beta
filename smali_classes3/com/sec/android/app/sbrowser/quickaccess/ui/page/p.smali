.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/p;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/p;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/p;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/p;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/p;->d:Ljava/lang/Object;

    check-cast v0, Ltb/w;

    check-cast p1, Ldb/r;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/p;->b:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/p;->c:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;

    invoke-static {v1, p0, v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->e(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;Ltb/w;Ldb/r;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/p;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/p;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->w(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedItemListAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/AddWebSubtitleAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
