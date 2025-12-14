.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;IIIII)V
    .locals 0

    iput p6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->b:Landroid/view/View;

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->c:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->d:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->e:I

    iput p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->a:I

    packed-switch v1, :pswitch_data_0

    iget v3, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->c:I

    iget v4, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->d:I

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->b:Landroid/view/View;

    iget v5, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->e:I

    iget v6, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->f:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    invoke-static/range {v2 .. v15}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowContentsLayout;->a(Landroid/view/View;IIIILandroid/view/View;IIIIIIII)V

    return-void

    :pswitch_0
    iget v8, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->c:I

    iget v9, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->d:I

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->b:Landroid/view/View;

    iget v10, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->e:I

    iget v11, v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/g;->f:I

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    move/from16 v20, p9

    invoke-static/range {v7 .. v20}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessHeaderViewHolder;->b(Landroid/view/View;IIIILandroid/view/View;IIIIIIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
