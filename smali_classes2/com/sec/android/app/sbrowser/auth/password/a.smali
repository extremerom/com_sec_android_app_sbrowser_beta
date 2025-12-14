.class public final synthetic Lcom/sec/android/app/sbrowser/auth/password/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/auth/password/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/auth/password/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/password/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->k(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/chip/Chip;

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->f:Ls6/e;

    if-eqz v0, :cond_1

    check-cast v0, LX4/i;

    iget-object v0, v0, LX4/i;->b:Ljava/lang/Object;

    check-cast v0, LT2/c;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p0}, LT2/c;->b(Ls6/f;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, LT2/c;->c:Z

    invoke-virtual {v0, p0, v1}, LT2/c;->l(Ls6/f;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v0}, LT2/c;->i()V

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_2
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->b(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;->c(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->n(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;->m(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->c(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->i(Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->t(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/widget/CompoundButton;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
