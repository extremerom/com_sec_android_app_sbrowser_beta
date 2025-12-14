.class public final synthetic Lcom/sec/android/app/sbrowser/common/sync/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sync/ISyncSettingUIManager$InitCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Ljava/util/ArrayList;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/sync/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sync/a;->b:Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/sync/a;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/sync/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/a;->b:Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/a;->c:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->g(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Ljava/util/ArrayList;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sync/a;->b:Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sync/a;->c:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;->h(Lcom/sec/android/app/sbrowser/common/sync/RPCSettingUIManagerV2;Ljava/util/ArrayList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
