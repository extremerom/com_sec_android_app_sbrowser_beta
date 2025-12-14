.class public final LQ8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroid/os/ParcelFileDescriptor;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/net/Uri;

.field public final synthetic g:LP8/b;


# direct methods
.method public synthetic constructor <init>(LP8/b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 0

    iput p7, p0, LQ8/c;->a:I

    iput-object p1, p0, LQ8/c;->g:LP8/b;

    iput-object p2, p0, LQ8/c;->b:Ljava/lang/Object;

    iput-object p3, p0, LQ8/c;->c:Landroid/content/Context;

    iput-object p4, p0, LQ8/c;->d:Landroid/os/ParcelFileDescriptor;

    iput-object p5, p0, LQ8/c;->e:Ljava/lang/String;

    iput-object p6, p0, LQ8/c;->f:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, LQ8/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LQ8/c;->b:Ljava/lang/Object;

    check-cast v0, LQ8/b;

    new-instance v1, LX4/i;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, LX4/i;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, LQ8/c;->c:Landroid/content/Context;

    iget-object p0, p0, LQ8/c;->d:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v0, v2, p0, v1}, LQ8/b;->restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;LQ8/a;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LQ8/c;->b:Ljava/lang/Object;

    check-cast v0, LQ8/b;

    new-instance v1, LP7/c;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, LP7/c;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, LQ8/c;->c:Landroid/content/Context;

    iget-object p0, p0, LQ8/c;->d:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v0, v2, p0, v1}, LQ8/b;->backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;LQ8/a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
