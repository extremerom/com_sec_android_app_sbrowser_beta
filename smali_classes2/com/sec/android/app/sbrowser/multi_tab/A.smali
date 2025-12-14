.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/A;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/A;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->i(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabViewBase;->i(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
