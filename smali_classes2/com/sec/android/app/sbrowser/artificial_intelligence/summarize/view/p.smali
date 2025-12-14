.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/p;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/p;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 14

    move-object v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/p;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/p;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v2 .. v11}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->l(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_0
    iget-object v3, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/p;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v3 .. v12}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_1
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/p;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;

    move-object v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-static/range {v4 .. v13}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SplitViewManager;Landroid/view/View;IIIIIIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
