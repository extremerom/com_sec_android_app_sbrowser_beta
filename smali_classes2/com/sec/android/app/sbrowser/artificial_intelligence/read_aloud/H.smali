.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;
.implements Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardState$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->e(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;->b:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;->b(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManager;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResponse(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;->b:Z

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateManager;ZLcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PrivacyBoardStateResponse;)V

    return-void
.end method

.method public onResult(Ljava/util/List;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/H;->b:Z

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;->Q(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;ZLjava/util/List;Z)V

    return-void
.end method
