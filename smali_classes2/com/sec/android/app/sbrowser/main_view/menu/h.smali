.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/menu/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/h;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/h;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/h;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/h;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->s(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->r(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
