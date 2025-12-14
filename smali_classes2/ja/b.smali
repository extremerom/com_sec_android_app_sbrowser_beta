.class public final synthetic Lja/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface$OnClickListener;ZI)V
    .locals 0

    iput p3, p0, Lja/b;->a:I

    iput-object p1, p0, Lja/b;->b:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean p2, p0, Lja/b;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lja/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lja/b;->b:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean p0, p0, Lja/b;->c:Z

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->b(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lja/b;->b:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean p0, p0, Lja/b;->c:Z

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->a(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lja/b;->b:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean p0, p0, Lja/b;->c:Z

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->e(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lja/b;->b:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean p0, p0, Lja/b;->c:Z

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->f(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lja/b;->b:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean p0, p0, Lja/b;->c:Z

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->d(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lja/b;->b:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean p0, p0, Lja/b;->c:Z

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabUtil;->c(Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
