.class public final synthetic Lma/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;I)V
    .locals 0

    iput p2, p0, Lma/a;->a:I

    iput-object p1, p0, Lma/a;->b:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lma/a;->a:I

    iget-object p0, p0, Lma/a;->b:Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->l(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Ljava/util/Map;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->j(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Ljava/util/List;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->n(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;)V

    return-void

    :pswitch_2
    check-cast p1, Landroidx/lifecycle/J;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->m(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Landroidx/lifecycle/J;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
