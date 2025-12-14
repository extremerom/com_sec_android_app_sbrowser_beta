.class public final synthetic Lcom/sec/android/app/sbrowser/settings/H;
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

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/H;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/H;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 11

    move-object v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/settings/H;->a:I

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/settings/H;->b:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;->e(Lcom/sec/android/app/sbrowser/settings/WebDarkModeBrightnessThumbnail;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_0
    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->l(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
