.class public final synthetic Lcom/sec/android/app/sbrowser/context_menu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/context_menu/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 11

    move-object v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/context_menu/a;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/context_menu/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, p2

    move/from16 v7, p6

    if-ne v3, v7, :cond_0

    move v4, p3

    move/from16 v8, p7

    if-ne v4, v8, :cond_0

    move v5, p4

    move/from16 v9, p8

    if-ne v5, v9, :cond_0

    move/from16 v6, p5

    move/from16 v10, p9

    if-eq v6, v10, :cond_1

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    move-object v2, p1

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_0
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/context_menu/a;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;->e(Lcom/sec/android/app/sbrowser/settings/security_panel/PrivacyStatusPreference;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_1
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/context_menu/a;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;->j(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_2
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/context_menu/a;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->a(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_3
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/context_menu/a;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/media/history/MHActivity;

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/media/history/MHActivity;->g(Lcom/sec/android/app/sbrowser/media/history/MHActivity;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_4
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/context_menu/a;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;->a(Lcom/sec/android/app/sbrowser/media/assistant/view/MAButtonView;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_5
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/context_menu/a;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;->c(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuDropdownUi;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
