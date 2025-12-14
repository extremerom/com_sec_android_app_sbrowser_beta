.class public final synthetic Lcom/sec/android/app/sbrowser/auth/password/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/auth/password/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/password/b;->b:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/auth/password/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/password/b;->b:Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->A(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->s(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->v(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V

    return-void

    :pswitch_2
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->p(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V

    return-void

    :pswitch_3
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->q(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V

    return-void

    :pswitch_4
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->w(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V

    return-void

    :pswitch_5
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->u(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V

    return-void

    :pswitch_6
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;->x(Lcom/sec/android/app/sbrowser/auth/password/PasswordAuthFragment;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
