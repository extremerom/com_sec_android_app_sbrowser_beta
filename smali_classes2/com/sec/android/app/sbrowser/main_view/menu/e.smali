.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/menu/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/e;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/e;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/e;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/e;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->e(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/e;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/e;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->n(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/e;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/e;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->d(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/e;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/e;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->h(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
