.class public final synthetic Lcom/sec/android/app/sbrowser/toolbar/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;ZI)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/toolbar/n;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/n;->c:Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/toolbar/n;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 13

    move-object v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/toolbar/n;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/n;->c:Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/toolbar/n;->b:Z

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v2 .. v12}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->e(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;ZLandroid/view/View;IIIIIIII)V

    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/n;->c:Lcom/sec/android/app/sbrowser/common/model/main/MoreMenuEventListener;

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;

    iget-boolean v3, v0, Lcom/sec/android/app/sbrowser/toolbar/n;->b:Z

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v2 .. v12}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;->f(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactHandler;ZLandroid/view/View;IIIIIIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
