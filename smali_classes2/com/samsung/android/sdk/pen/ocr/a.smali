.class public final synthetic Lcom/samsung/android/sdk/pen/ocr/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/ocr/a;->a:I

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/ocr/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/ocr/a;->a:I

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lg8/a;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/selectionui/util/DrawUtil;->a(Lg8/a;Ljava/lang/Object;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lorg/chromium/base/supplier/ObservableSupplierImpl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lorg/chromium/components/search_engines/SearchEngineChoiceService;->a(Lorg/chromium/base/supplier/ObservableSupplierImpl;Ljava/lang/Boolean;)Lorg/chromium/base/supplier/ObservableSupplier;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lg8/a;

    invoke-static {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/multi/MultiObjectViewManager;->b(Lg8/a;Ljava/lang/Object;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/a;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao$DefaultImpls;->c(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/a;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, LC9/b;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao$DefaultImpls;->b(LC9/b;Ljava/lang/Object;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;->d(Lcom/sec/android/app/sbrowser/backup/InstantBackupRestoreService;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory;

    check-cast p1, Landroid/os/IBinder;

    invoke-interface {p0, p1}, Lcom/samsung/android/sdk/scs/ai/gateway/AiServiceExecutorFactory$ServiceStubFactory;->createStub(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IInterface;

    return-object p0

    :pswitch_6
    check-cast p0, Landroid/graphics/Point;

    check-cast p1, Landroid/graphics/Point;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->a(Landroid/graphics/Point;Landroid/graphics/Point;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    nop

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
