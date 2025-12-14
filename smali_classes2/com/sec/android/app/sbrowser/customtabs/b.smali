.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParamsRunnable;
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/b;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/b;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/b;->c:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->a(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method

.method public run(Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/b;->b:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->c(Landroid/net/Uri;Landroid/net/Uri;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/b;->c:Ljava/lang/Object;

    check-cast p0, LH/y;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->g(Lcom/sec/android/app/sbrowser/customtabs/ClientManager;LH/y;Lcom/sec/android/app/sbrowser/customtabs/ClientManager$SessionParams;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
