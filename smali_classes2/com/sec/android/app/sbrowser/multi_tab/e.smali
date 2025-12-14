.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/e;
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

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/e;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/e;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->g(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;Landroid/widget/CompoundButton;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
