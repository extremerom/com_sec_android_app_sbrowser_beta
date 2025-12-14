.class public final synthetic Lcom/sec/android/app/sbrowser/settings/password/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/password/g;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/g;->b:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/password/g;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/g;->b:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->l(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->m(Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;Landroid/widget/CompoundButton;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
