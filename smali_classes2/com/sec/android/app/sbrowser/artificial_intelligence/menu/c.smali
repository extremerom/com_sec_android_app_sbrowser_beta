.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/c;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 13

    move-object v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/c;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/c;->c:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/c;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v2 .. v12}, Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/BluetoothScanningPermissionDialog;Landroid/widget/LinearLayout;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/c;->b:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/c;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v2 .. v12}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopup;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;Landroid/view/View;IIIIIIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
